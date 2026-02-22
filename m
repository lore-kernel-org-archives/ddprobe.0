Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E388DF6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771730694; cv=none; b=NgE31Dyza7OJJ7MjhbxpvLhQcqj9UHcn6zvETxMJmS80MxBBREQ1Tr5Mgkv6GaJmvaz7bjTuBpOZfqpJe2gG8QGe1FiTEX0o/IF+aGNjsA+24sU8iJZ4qaujSKWjuAzrpQIUGC91TN71Ns5YusqxBYjJCOyz6lVbxx52eWFryjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771730694; c=relaxed/simple;
	bh=rpdypULIzoQ3WpIbk3MrnAgIF/q+BxSGi036f6EwQrM=;
	h=To:Subject:From:Message-Id:Date; b=TxOA7C8jJh0yxHmrX54LYtaLsuz+9Vw8j3OkeC7+y1ZQILiuyEQ0+GmTnHMXilEfi5qTGpxqms+xt0WVFbrsGT/u8eBLEotsoaA/u10aHEeUy+8OyZhTEPbivg2FudFQgYrRabTb8hgDtwa1AWpNOonMC1uYeIERt5pyXYzQDYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7qjPoNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7qjPoNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FE3C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771730693;
	bh=rpdypULIzoQ3WpIbk3MrnAgIF/q+BxSGi036f6EwQrM=;
	h=To:Subject:From:Date:From;
	b=M7qjPoNAS6uCaUioFNKwCyBOcim7t5QRx60zr18lwgco45p+ophRcYlN9LqvtQ3DJ
	 gCqASt9XharTTFxirBNRB4P+Fd4IzyRl8ff00BT4SxKyzXbJBSCQ9KHcPKnYWNqA5J
	 ofsi2hpW9pcEKpbiQ6fqOQ+xHGEdYPUHwIUq4igoXnm68EuBnpE7COz5m6NJemK5My
	 F4UM/wdPwHm6iCqTKqKKXKs+KY/f1+lZxebOY+MVG0MrDq1vEs3LiUAC1gEop7hFzt
	 c0NEVEdHFAtEDzfmrwh2G5fiZ3VeQlrQCUYv935buKUggDmXytnzI21ZbKcjXtMaJR
	 WTYcZY2VTtzjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C61C61DFF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173069358.15802.17935420361426282880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62d4afd1ab35bf59ee0347b3e672b8b1fffc1c38e46af458e2cf335705d93f7
Date: Sun, 22 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771730693
