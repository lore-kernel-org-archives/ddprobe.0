Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC853EBF37
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770014034; cv=none; b=mWseMhy4REci1C3WmZ4AxER7wAJqvwGpsPS9zZwGSC1suq9mYgliV+5/Tg+hmAyQI2AbDRZl8lj50j2wtLMYhPG63WLgblE4KMWU6zUK6fh3EDvluHBxIsydYrcB2DIzAq82oIXwH3TdeMGLvVu1rmXXGbWKNuuD9icyP/I3DzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770014034; c=relaxed/simple;
	bh=aFzjqmTeeQATW2sHPm45wfxnglcUABFDknE+EP//cF8=;
	h=To:Subject:From:Message-Id:Date; b=Nhz3p1L292HU8HguvC5MBdXF39dDLMXPIE7EJen6Tgowh4FSVnx7vlG0cD8ZMkN0KFSLBn0OTG+SANZt5MJkVMdwXx1AU3ZLBrSjZjlhBeEAeZPRk7GmdeaUAi9Vb7xxQYB/WSyrTL2hjMZEXeYxlj/5dCySUfP9zJqLKwhQAYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AplUlmlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AplUlmlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB967C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770014033;
	bh=aFzjqmTeeQATW2sHPm45wfxnglcUABFDknE+EP//cF8=;
	h=To:Subject:From:Date:From;
	b=AplUlmlgLKHMPj+p9IJM6k0X/EsMxO4ca9XhIFk2ro9KqqXpuJTv9YAknrxTbZ8ZH
	 qXSfusCBsUwfyU4Si66f7SUAzElAsL2R1fhBI1FSiDgRT4YtReMPuG5yQCffE2+Y3U
	 aGHaKjVvTRvwH6QEAns53Rv7lvXMuOrbd20xNUZpusj4MwYnw/i2Fn2PCTbOIjmiHD
	 1ITiEYAKyXQwqqawTRQEGWxVVlf2y5QDQrukvfDeti/Rwr0H9is9EmuJ+ZS5boY7l5
	 d0UxTACv78XG2PCNtfcJguDotdtkWG28ucCAflXZriOUNi8Q9oW650pxAOjZxPGZAS
	 TmTmHd9FOR7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9709AD172CC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001403360.18775.5766557442159428482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c350a72b4586261b1760a5a76b87005c704c2517b333568e8595a8eea822b5
Date: Mon, 02 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770014033
