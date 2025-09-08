Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF3830ACE4
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757351994; cv=none; b=jZFB2VSwf9rsa/iUHJV6xFVdAfKW1kdOifzVkZFypLczM5pGAf1dRcaBWZXc4pNsuQnSv/ZmWxF5X/fOSz/Y+/dsBh1S6Q87NHp1l8e90hnO/OzORGyVIBcrxDlA1vQn62j/5J0Sou7BP02VJOo8xW9YoUbU6anaiDnP8tg4mHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757351994; c=relaxed/simple;
	bh=TIB8s0evag2gfMbaXfsWN8X61X6eJkx4RrpMqlRzMP8=;
	h=To:Subject:From:Message-Id:Date; b=GwrW06GxiBaH7Ihjxzkkq8c9iXh3OaenJEVt1RFsVPkDoukmYICkSH8ACJEt6eGircR59zF/wzPCvLa7dmkwZNTSw4PFTlDtvPHAXjcyPszTt3YQRIw1vj807EdCwma9gqZMoqfJGFWhKz0AcqyfJomz3RRbYqsu0DkumG7f7Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tICVCp9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tICVCp9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB571C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757351993;
	bh=TIB8s0evag2gfMbaXfsWN8X61X6eJkx4RrpMqlRzMP8=;
	h=To:Subject:From:Date:From;
	b=tICVCp9V+WyUqxFTF2SrGuUHjgBemLjbEl5fIVHpR9EEEMLtLTA+8mXqq5JiAIvKk
	 iZAncR6BF1JLmDUhClvb8AwSbDtt0AGBy49GWJAwzVFPl7u+fcqZ4yecWQhoxrQoT3
	 MYIOHpnkDjIPxOF+xO/Fj87q2Ig4RciwsCsQLWvoRpdRV1tTqmklZjvC7vQKtgyE1S
	 cDhXNqWGvv2TyxxYq1QwM6RLwGLOKihXdUrAMBZin6Z7D7QaoaY5VmV+waFYB5cE9i
	 ICKHDN98/V5hBcnMqCR9XD/b3WG2ckkCnaJTTlb7p9Q6VSyA0e8EsOYMH22Do2YJjY
	 xjOMSnUxq5bbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953BDCAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735199359.31063.12062736963816749914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619adbf59aa9320f44bf2596dff1d1250560d953d3e934e1615bb1273dd910b5
Date: Mon, 08 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757351993
