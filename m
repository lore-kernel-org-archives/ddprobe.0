Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCCE200C9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705440497; cv=none; b=easzZcJgOp2UT8JGYsPR69AIWdMh4ZSr/N7tvu6FLfRqZ6cDdhng9oHRxtMW8FF7sYsDmuz26ntleEA+3KDsXGUIsGvT1eN7fT/LMnmBHk3gjwEpZZHp5BI1RdIvtKZ8OCM8uPYJoVtp4+xF4cVUpz6OOer8s16+enOf0cLqayU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705440497; c=relaxed/simple;
	bh=VwY+NusPQdw7MJq38G6PXufLqCTyuPMJJoiRDi9JMlk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=SQjhS4RWz5Jxi0T7+BfW5RbGaMtQ5QZ9lXHQWxj+KFehbB5GAPCaaKI8ywkhoULtEcvSDNiO6NK2nd4u4KDAE4WofGk8vlY6BWM9SL6HvaLnWwoWhFowNeQ9rfcUa6UDnaUL+wROCTa2EjjOeOxYyHVN7xnlnBDgBAdKP9ODd2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNURwm+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNURwm+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA54C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705440496;
	bh=VwY+NusPQdw7MJq38G6PXufLqCTyuPMJJoiRDi9JMlk=;
	h=To:Subject:From:Date:From;
	b=lNURwm+YZE+Et+CyFSpjSS13UhDpjjaFXFu7swrXft2nKwAAVkBNGCX/Zb6I7EZRN
	 yG0/WClk56H5GdM0AHqpETIp3nLc3Tcig+OEEEWDAvPdY5ufM9ZlKPBc1XSvO5lyxO
	 OZnibEgXfiAq2RzbQvDhrA4+K+ZX/dqxqNDTZ1n3wS+oUI1luXL8iW5NxCGOiwcmvF
	 2tsj41kxl6Y2/K3GX8ofMrbl2n1A7cWxtxBRpas4MuYlPbSWLsyJb3S4ECPoELIeh6
	 QxMF3VtkV1ZLZSLwc3GQCOePMGTEW5gw5sbxfIvS3rMarnqiOTDkBARpXdAFNk9FWI
	 SATB3rXhBcKKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7BDC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544049638.8231.11841698355120063204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94159880625f55892f05c154c2b203548e48068c5435fc6eaf0e5a7a86347cfd
Date: Tue, 16 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705440496
