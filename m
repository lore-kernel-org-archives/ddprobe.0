Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB5FEDF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720423583; cv=none; b=uYX8DOgqf9iiYyrMUUCmV42wMe4cRSvMtGAzte6t23mZPZwRzzovojxV4oo4OngNgtdKjhUxDsW8CoL1WtGQnV+OT60iADMTZLFS7aRT+CqtfSbR5FnMF7aynaM9lsAIsGhm+GlxuUJDVUlU4dxDbsNa8m4QqFR/Y/EP39Stm4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720423583; c=relaxed/simple;
	bh=1AaTYmZ2I49eu9/mRtNRszZREa7nNjmdwPiEpM0crfA=;
	h=To:Subject:From:Message-Id:Date; b=LsAgkU5sPIJ/0gOMeMLEXMRXkjQWEoFJmzwdJjdjWc9SW8Vt2qFjwq0jVL23ZqZCsVGAt5skzDmM8/SFziyh6laWX7inPLedvrqaX18ivTH8Aw1WlUDJD+SeWPcQzYWdDV00GWMqAbBjo1y+6rpPLKsxClFMwEp3zWG74WeYW6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isqAaktY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isqAaktY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0662C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720423582;
	bh=1AaTYmZ2I49eu9/mRtNRszZREa7nNjmdwPiEpM0crfA=;
	h=To:Subject:From:Date:From;
	b=isqAaktYZUNAs+jYg2dwNCtmPIoNTlNAKuYNlBC/2Scl/mUf3KOaWfUd8kQpZsazg
	 r4CBDey8Azt+CmgifBg9MeYPWPjbShmiPSM4lHNTHQ7X7n+KovmWiNFETjvKdqUjNE
	 e3zO3ZeJfqNTb/fFcIOXjZUBAOPA8DxFwe9fKK7CUKgkw5LtD6O3+Ro4J9pvGdPmSn
	 jDt5F/LzmG+Zv/hufZ4qiO0SI8ai5Lx3BU6po5I3/crzK8+nC2sqso4h6etlX9ePxG
	 x4TaI3rhhgJt4azbhrftM1gvXA6xrUzFy5hglrzu/E7cKH4C417OH2fGSX4nuw4gtd
	 3tK4QgJTD/u5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAD6C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042358277.3143.5056855864598759699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7e94cf22d282e3e53d368ffd01062f6f7dc456b1a1485e57b38befc273afab
Date: Mon, 08 Jul 2024 07:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720423582
