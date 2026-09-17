Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CBE47ACD2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789639834; cv=none; b=TkOi693HTKxiBCiX7zauJa5wHrGK5mhU27tpj24VMLDRgzYvAe71ONLVAouF0KKG5H2cSrhyUtF/EG8KAYp/dU1tOHLfV+2XadKdayTXB2cuVpgdthIstTGstPJw/tNUjvFPW/PPeOSYMhG213bq6tMu65Fsq2wflo+0DTXqcT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789639834; c=relaxed/simple;
	bh=Id2r8wecHUs9vHd2y/RMFt8o0IPV6hAXgpYcxNfdJG8=;
	h=To:Subject:From:Message-Id:Date; b=XTX1AGAP44LKHN2zVjkuFX1MHMAQ3pwaeO2aQkooGtzA2/C5GtYy+riM/rtQ+rIi/Wa1bUKvI5STi9ozk+JUpkc3La2FbN9YLtePzS1uVWMp2poA5ruJ1hP8cKgMpFrPHWRfDKiIkYwU/U+Bu4mbM5jjq9JViM2tX78VgeI5oJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pf+IpXE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pf+IpXE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4F4C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789639833;
	bh=Id2r8wecHUs9vHd2y/RMFt8o0IPV6hAXgpYcxNfdJG8=;
	h=To:Subject:From:Date:From;
	b=pf+IpXE4BrfiiHwSP2QIJm7oF1FdtpPgz99gOWgDlap1FqVdfr7NQhbO5Ku54h4ra
	 IcJj/68pQ+mwSJYBevDtG3ERh6zudQcRZ5zAPdqTxMltBldQakTURRsNYvg0mKnAy6
	 QDUYtwl3sjHxkOAzsB4Mhf33V2QdGVzUECyZTbf/dLQF9UV075cx18ds+Jc97qkrKC
	 79FE2CCRFjCHqZSOT2NFSQVOrYMXQ9HEAwIpO1DxyvrIGaIXUA0o4dm1ehr9jsV3qi
	 OD0rUk3PlPgicnAEMbAwH+gR0scLbX+c5VTjoduS/bOWfbimQM9gaJ3dR8TwKM2p9p
	 7fvDZYnQOPD2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DCEC88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963983374.19140.15033440405839832175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d85880a9a8084bc136e7a501912aca5276304deed79124142ec3a92015fbf5
Date: Thu, 17 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789639833
