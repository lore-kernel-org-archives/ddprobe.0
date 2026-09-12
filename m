Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366232F28FC
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789226434; cv=none; b=YBsjnYaAkmxyaknyGDgAoBgSm/huvpxg4p+BqxP/TR9RI73/BLsm1HLa11+qm3YLDn7YGG+z2lKi6KxewEBjmM9UJ+AuJj0pCjdDFxUiSYyK88UEunX+2TL4stfRvqmpP7+rsr30J4WRBU5dlM9osPD2g8Vxb31r+ukQ1KRcWDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789226434; c=relaxed/simple;
	bh=vir0qEI3UJ1Ivxcexpw0krpwzJQN0bIA85b059WSIYE=;
	h=To:Subject:From:Message-Id:Date; b=VNy3IERY0/RgFowiqaEWnwwfjnmMfWsBxF1Vold8NLa0FlkRt58Aj9JAw74iCg8hCKKxRKA5n50ibztgQIfNGVrmQQYa8zzwyBtIFLJ0nhpA8z0TC8bFPMFnSXfPja4jO+0Bv3YbhVv81i1T84U6pFhfPpo2maT/x3Vynle2SgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGFiv7XI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGFiv7XI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB67BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789226433;
	bh=vir0qEI3UJ1Ivxcexpw0krpwzJQN0bIA85b059WSIYE=;
	h=To:Subject:From:Date:From;
	b=CGFiv7XIaRKbZU4czJWgjC2JfMw5S/7ZrJ3A6vI5PVIOgqJsp9FVowTWAikdcJLn+
	 +NfwtGeYopZ8SFNMl6cGqIELpdbQwkOwdqpIHNAF3cD9EWF53rxSIV9ahUquVBhwvB
	 uWXlfPBfqL0QZcrK32W4K28lA/NXFiAiKHKro6ov2Fl6w4fEA6M0Gy59QGNHXPnAo3
	 C2RPfdMKIoKF4niE3S1WcUKAKrcFVDVuVIDtueshci8gT435rV0BWvnJGEzE2cw2My
	 xMZCCeThPiTV/o/eq93mggo/4XFCk3S1yAPXXK/7LBnSc/lMVF/QoySaUniLqdBkY0
	 UwRoVCh3NE6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9812C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922643368.25038.13958160502301310165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d0d807ef4a8816500e17e95e1b0cb2b9f689922056c57ca6d2b054cd15b896
Date: Sat, 12 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789226433
