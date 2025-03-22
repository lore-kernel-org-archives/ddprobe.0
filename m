Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4130944C7C
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742611194; cv=none; b=toSmxpdLPnGDAzDOS05AFHmU+XAxAwjX/QUVlrG/rDsRtiC0djNAR2Z377xbk8NeH6BulKseuX2Y/QIn58aH4sUoeX/KvWRmozg13AftCXv9C3k2VYMFw7gfyGVy4teDNQJSu7eZp9NuhXJuG19PxiTgOky4h+pmEYSV3mXZMI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742611194; c=relaxed/simple;
	bh=lV3hNkDUe9/HzNynucCtDABeeF+IqXQ5JmVejmMFWoE=;
	h=To:Subject:From:Message-Id:Date; b=J2+fMPY+1Kd/BaBzMzbgbAw3Ea5phG/RyYK+edYJtIDlX10pctrHAI5ud3AFnCWmC/rc2WG30JTpnn/HCWML2TOrZrgRRmQzeEkT7CExOAvuzRSDGA3Wzy0vcYFm1Twy+53UqVSi1soBtQ6A8/yw7fV+fcw2jXKVN1/YgkB/Bw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AM4+b4vB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM4+b4vB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB58FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742611193;
	bh=lV3hNkDUe9/HzNynucCtDABeeF+IqXQ5JmVejmMFWoE=;
	h=To:Subject:From:Date:From;
	b=AM4+b4vBDozLE5rHi0L1R6urvFWoSXltnIuPdTOToOlKlVZPfsBcgaHok+ay3Vo9+
	 cTnQvx+S7kjpJr20UeQwYVtFP6nhU14tCcSWgc7gOAto2HGoANod0OfsyZ1Nn5sg+2
	 DO/RRNRx3xO3TMiPB34BQZtikXRC5BGSemgHZG8bAiQ4Yvmhy2QWp00ioffKV+l90I
	 zncfccmJlUZ+t5h3Zsppjr4/689fg6zieNKMzdMzFLqPcg3Vdq43SSqKta5jTCeAYI
	 044WDAfVCbLGMJYYXFQqIZwSd3RoFAipR1aXt3y+KK7Hqi1M/owz0zJKDl99XIDFm7
	 gOVpr15+4yT4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6ECC36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261119368.25539.7159164828078087235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6c4248a864e2a783fc0f92efb4954efbe480240d426558471865de913606c8
Date: Sat, 22 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742611193
