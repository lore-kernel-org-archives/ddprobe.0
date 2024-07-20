Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D318F72
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721448353; cv=none; b=fQ2wvvYuos/iSYH+vw5ou1fQp5Xj6hxK+mrUPpAf10gABub5qvnxgAqXrRW8LqdIhKpm/tXYgpomzxAPiqK/LiYVdxQLutRvOWw1SF+Xl6b+ivQfy8pYGd8IdOfBtqrxNiaa/kO2mD0I6RA5rAkHFGAahH22+7goaGNNukkwhD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721448353; c=relaxed/simple;
	bh=32mOLpBb1CtVlnjZ+v60qtMmT0lJUTnfTxYPht9ADPo=;
	h=To:Subject:From:Message-Id:Date; b=eDE0dwJG9l80u9YoG3mnpLrUrow+afzcTxoTuUfnVmfWra1ulE2KeWd2nfIK1Wzc/QJp60WW1tz18H5UBakQKmMOsFw6x5gNkIIIMKX9UH3oPcYMIOAhLeIcsLpKXB3fb5BvcjyPEKvSlt8JL9FK1JH0zgLcK+X2HpAgU4VeRcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOW9z422; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOW9z422"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A856FC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721448353;
	bh=32mOLpBb1CtVlnjZ+v60qtMmT0lJUTnfTxYPht9ADPo=;
	h=To:Subject:From:Date:From;
	b=kOW9z422rRoGHMZ5QMx8r23TJHjXH2LnRJemNHYRpaoa8Gicsl8sFAjP9mr03tYQC
	 hHnuRUATf35fFqRZvAVk61w3eKUzQL4NTTH4+2AnUTv36lC7uOFYy3Fqdx8sD1addz
	 Poc3uAKtmlmIEb65tsXsQ76jW4qwODV3NGoEy9pfhaBfPsalSH3ckuoyy9HZli2/q1
	 OngAFfsW6TUgIrVSydn0+OHRRcm/LSGcQupEjA8F604V+UiIJslZrUKbdRUpzd4o9M
	 en5E+nxeBwwp10eoURC6WRWHVqr90IPV+XUXAHEG0HBYklNaK/arcU58zmyeB1NMb+
	 inQRHrBwsNC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E64C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172144835359.29747.11384984165436613073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c5011291f9ba1658442d8a04c098cc74814a17de5cf0c279a25e3a6c5023d6
Date: Sat, 20 Jul 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721448353
