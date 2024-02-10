Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA485B1EB
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707584897; cv=none; b=bgbvyGbMmgHhlOKayO68ELTugIFSvuYMEqi3QMlGUz4/8E4pgLaWu9ABd9WRbtQ9fO7+gOztIZXRCmnFjAifhDaRqnVdaZrgVwLY7/f6oqhgv9JYug9cPXzVUwM+2bDQq3jFe/ahbBddZrF/0ICPnFt2hIXAArTFwxW6UeGztts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707584897; c=relaxed/simple;
	bh=1LmgDD6ocYLPIcnvUUu1hOHeqjdDQyXIWzuQ5/GEWu4=;
	h=To:Subject:From:Message-Id:Date; b=aIIgRai6EGQxNJzv3Es2q17ud6HAske8KJrneJzzQEbl8yq1V4V31ctLAlgI3/odAbTopGNnYTaTbmD+Yqe1ZblVPhsAzukZNQ4bcBlzQv3Tijxqf9bmH/GSCaJeG9uy6qz3ZfiSZ7g3apvLHLeuaKE2ethlta9uKO/2o+HPdG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5a7E4DA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5a7E4DA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F269C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707584896;
	bh=1LmgDD6ocYLPIcnvUUu1hOHeqjdDQyXIWzuQ5/GEWu4=;
	h=To:Subject:From:Date:From;
	b=d5a7E4DAdZK5dwy2xFQp9mx/zTzvSUXDR63eM/kLejg2kpG1QfxUdkd4jZn71Czo0
	 9cCSzBPWAMZvaD8mm130HQN2DXm4DMmBstBPhHATyx4hqWSw88QawKzqh1KyP32RkR
	 Hmep1emJYKbL1euf4RCECpmT+YEoyRdu8wlUBGIcHQicrE6LIoUVgtIGu7BIoF1yz/
	 3y0xZoNuxEPmIN1GV+JpEYVDOVVSnbPJDsYBGeJhGnZO2+Qm4LQt51+hRVLSMp8fNE
	 ULWJIVrD9KzERHB+6NwpeRSpCN+D3493mcGuZycag+OJbJ3pzXuN17jTyrz4aoyteW
	 0xahRf0bCYS5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65CE4C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170758489638.6013.14786287174344547800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107e75e32f3af53742a5cef2d95af716d7f4fc57627fe09850d349f59f3eba1f
Date: Sat, 10 Feb 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707584896
