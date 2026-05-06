Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AB817A309
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778110054; cv=none; b=fkSGFe/8+LFq66LT5bPsttD96VcMQOKQ5GdtCkpN2h4ulEi9HT88RCL/1YOG44x8o5LuqkPPDaJ7cu4gE4mnQvln0i5ufJX3o++PVL+HGRgsRarxvOYTTJwgdCFUf1zhaIuMrILBjyXOtxfMxI9lgHTl+xi5GO9iMCX2BbmE/1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778110054; c=relaxed/simple;
	bh=8MTf5AD7txPU84m0lhHEDPCPg+JFuiKgTjkObQC9GC4=;
	h=To:Subject:From:Message-Id:Date; b=Q+UYz09hjuKkGVo70hDaMRp7eZuRQBkot9p+nYUqWP1a4lX97TK/6RsxCEy1WU7IOyBIFbR+YMknd5IWdw0RH0z4MPzoPvoIk1ZpMsYJWOO4dTawZjbPrEQViugI4lXWTuHsuq3wXtLcE7tHHWDu+vL4DF4vhN1CIxNbEYtAmS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaOrIegm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaOrIegm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF91C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778110053;
	bh=8MTf5AD7txPU84m0lhHEDPCPg+JFuiKgTjkObQC9GC4=;
	h=To:Subject:From:Date:From;
	b=iaOrIegmD9prCVSO7ZwIsY3F99imdmbO+Z9MbhMIpD1UwUnZDgsRjoJWWZch7GIMa
	 6IxmleWUxPM2YGGaoiRRjUM5WNj+BrSZepEwtxKFZvq+K+lTeicz5TIJ4qcOHssUcN
	 2P7hE3K8Mjb5EaPGLfkj6w2G11y64PAAseShnm+EJXMN2CqWJRYj1mv6TTeHfXdRES
	 nhSsfgOJ+dkiN58BgYGM/+bwY5cRATJzYbmJbE5gU6dxOZAbwBnaSioWaD6aS34HbU
	 hh2JOXYyNDnNON6SPWDx2/YWjKqS20M0Ebn2T53DF9dYUL2FdiFasZGueO9tcPDRp7
	 Il87eS9h5YueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE55CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811005369.26978.9874130176294519515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edf7d4e65452efb29a523d8be0ade9328c34675ab7ec8bbe419e6f0e5674a3e
Date: Wed, 06 May 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778110053
