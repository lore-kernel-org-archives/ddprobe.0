Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293841DED77
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733403955; cv=none; b=lcwu4+4+szCZ9zmi3qYa8irgeNk5KNgfpGc5T2yHoNE67iZl6UUwWX80Bg6vYU2rVDIz4aAzZmcHq3/PFb1jnkQtdGosYMJTnchoFziKUbcGyme132ZxGE9lseKgYn0GLCpdsXZ4rSgwdNHGEZF65O5HP7ECrkKLDKfJYpvqO7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733403955; c=relaxed/simple;
	bh=MovQVyX32Mq5rN35wRVn8DcndHANDdGVC1embBIJWsM=;
	h=To:Subject:From:Message-Id:Date; b=KmlBLjpcZ99+vD9soav8Hvh27Ha2jFSppD7IveVv41kHS+MsELvuFNQHOx7pEDR2yoeNV9drqOtPFfDdA8nslwEKryH4DXS0HABgWjJlOoL4KwYk0UDF8f2jQrIRxvpjogYkbidvO8Aw4US4hesheAGVt8mZM9R0hHs7kxQqyiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIZyN4Fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIZyN4Fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB92C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733403953;
	bh=MovQVyX32Mq5rN35wRVn8DcndHANDdGVC1embBIJWsM=;
	h=To:Subject:From:Date:From;
	b=qIZyN4Fq/3BPnCRs9O2QBqm2+kyTOs0LSfGevLuwEzk8LuD2hodRh05aC2H/QCTlP
	 ZBg93Q0INrcY5Uk1e53bNsVnbEeFmYl73q02tg/vOQQ0Pu2bRZdxmo+YOkmhLepSM8
	 53citD76mYw5pzyT/GruoFt43B+nVHgmUEimIpPAKkpns4Z1TryEfYFsEhpCAaA9N7
	 tEeZDQvC23SNs14/pveIY3sZE+3pMPSuSW6ReTLgnXs9ToKn+ZAom8UjoDRjWOXDKb
	 zV07HvfkFjp0Of9ApAom5yX2MdfysyostsDJcu132Sggs2u7HNSfix/tTeWP5MrZSF
	 uaBLubOn7CfMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6BE7716D
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173340395359.15239.16165933309115959449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab818c06dff2694fc194f7efca61c37abc81e3d149ce207dd555f26084a38140
Date: Thu, 05 Dec 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733403953
