Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3180A40F73F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791391234; cv=none; b=IL712oXJH7FxKkSeLjMQMLrWKBBM8xxihy+IqtvSyGcqZ0+bz37qDByDzZUvDoyU+Zg+E1D0HbTtB/nz1q9L5Ti2k8YBl50Tjz/AWlDynXkhUUV6FqhUdsb/ud4cR7DkVjNBC4EZKTloo4mdZFYUMyvlJHrEIukkOfV4hLdLwN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791391234; c=relaxed/simple;
	bh=wS/p8sBxhN7otXLu7UaMUmd6nB/0RRLybwJZZp3oebM=;
	h=To:Subject:From:Message-Id:Date; b=JKgTVSMzbI3uBadFe41jueIoF/4Uo2lejaTOcL2Ti5skBoeIqZPVMfjk1aVTXpzxMG8abxE/0x3X0whC97qvDxTG2Vsb/UDYaDHXWK/l8XXKIsCXdNv0bcwldVhXqa0efLzE13p2DRgm/99IN2w8e/NI2XnGLfOY/9IA10ZYYog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3vr7wGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3vr7wGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D136AC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791391233;
	bh=wS/p8sBxhN7otXLu7UaMUmd6nB/0RRLybwJZZp3oebM=;
	h=To:Subject:From:Date:From;
	b=g3vr7wGeO8LCQ8eP7wInH3qGPiTcX5hheok9+CbkYGV2jewwXznb/hKqfoMQF3uSU
	 MEbln8GipWxHn43/2YBvDw6hNzmm4vxRLBknEqrsWSAMTX4SFlb0aOWbcwldSEYBPw
	 QiY+Lx6SNexDaD4LaZsojoaeDPUV5O6KRLptLqyiO9cfypcQgJhz9h9c8qCv38uTqB
	 /Zb+rwvk/GegOcWAfA58amypVIXGAlXeWaqxNPXqkwNBAVdKtctXcx8qVIxURO4TLU
	 R5Jd59SH9549cHJbcWqax7m+/V5gmSVg8IyasrCImh4UPd6lk5H3rd5AdY4iJ1G9UN
	 mHwXiai2uKhDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0EBCA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139123369.27077.4508361903513864921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7911544a079ed334d1ead2a2318c6fad109e2cab70b419b7b964832d22369bcf
Date: Wed, 07 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791391233
