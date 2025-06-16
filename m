Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC8D2E11CB
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750034394; cv=none; b=BMm4dYFp2xmtmKiSOTP/Z9xO2KN1vJAXoLidG5rf7uy3+KHucpNL8nPVucfHMztPfwTYUZWO05YItc+ez0Jkv0OabPpL88IiXviOC1niMVZY3Xsx5PrpBcJgv4cUsSW9YvrHxjhrJmrlEwTS/j+bGZSyw2NJNf3CwV4siailZd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750034394; c=relaxed/simple;
	bh=DiIGG8Vxk2ZO/ItF1CQgw6b5loAJk9dbPnDCiCo5r2Q=;
	h=To:Subject:From:Message-Id:Date; b=bZ9UwXWemtoUWX+jZ6mPyydH3VAe/K+7hxgTWYo20oX/BnFkvOB3wuxProJG7hvC4H2BebDGOJrYe7aDzen8awEiEN59l08ihiAGbqs2EJiglVGuzO66VRSZIU5Dq5Y+pFX+oWAeVc8bLRbqpdXy220Dwr0cexDO6YB/yLOhUOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mm+78o2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mm+78o2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFE8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750034393;
	bh=DiIGG8Vxk2ZO/ItF1CQgw6b5loAJk9dbPnDCiCo5r2Q=;
	h=To:Subject:From:Date:From;
	b=mm+78o2+ZRiEbU1aobhM2ljfBDTv8ARAAK6qIxLHkpvwLqOYtRu0OLnylX5QnO2am
	 iRBeWjaH+S8USAGTm4/pdFExFhU/qFBw4qiUZhuRBoGQlZItB5jUT7iaXD07kRcVFl
	 nzs2OPcannLV7wQgNMYQYueo2/WRVmdRj9zkcqT5nQaGUR90cv8ZAbJBy5csrWP7Gn
	 W0IFZQD7S4dWr5CbWwBJKiDMikiNTL/mfST5BizOXtY3XcQOx6Mc0U8mvUKftZ7aM3
	 lMwwmTqBvW5BLgmKrmsYozIGZuNmyDfQXn69nL3NSSd9b5VdAxIoM1ZLTsjak6hSrB
	 EWFAFEjZ2EvHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EC6C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003439361.1968.14175554024217804819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2428c3eedd1a0e9c42179fdb08422dbf0cc1e6918f8aecf78e4855753efcb3
Date: Mon, 16 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750034393
