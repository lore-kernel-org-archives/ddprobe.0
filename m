Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554C03A7F61
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780033954; cv=none; b=sw7sZ1sTm7P7Sl6aK6038pgzBGlvG6wCwGDZP8wC/Wm274taWTG9PKylBM54rLRpALtdgjRVMUq2iH3KJ9OuCANXM9yJ6G+Z2HazHMPofYZ8ueZPBiMLhonIJoudZZe9AytZS0PlPIrC/sqz1xBajzJW2HgHHmRrHfCUlMrtDQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780033954; c=relaxed/simple;
	bh=2exAtht/5ezPl2kbk5PGgz2FOipy9AjNHcnvix7aVWc=;
	h=To:Subject:From:Message-Id:Date; b=ix5oaDzHyIRMah0PviKTX6lFEpzIGaiBxQ9QI/rvLz/QX63lUjCA84n2zeWUMhUItcaGkvWm95Bd32o10FfoHy6yQj99/55rRbJxUJp4RX6e5eCQclCH8Q1ZTllL7vrkZJmkfmRt/hJ8Ax/qj+Y9zdN17n1wZOuvo8cXXM+uHuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL1h5PMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL1h5PMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28CEC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780033953;
	bh=2exAtht/5ezPl2kbk5PGgz2FOipy9AjNHcnvix7aVWc=;
	h=To:Subject:From:Date:From;
	b=XL1h5PMM+n5MOe4HjV8P+H2d/pE80roY1YQch8xSRPnfJ/YcIKiZ+Zfv//RSFsWws
	 yFA9R1BpLMaG/OIAt12f2TqnI4ovg821VPgNoUUB2j9YXMrim5fSNUnmDWShS4KHlD
	 SPJCcS3m2QhcCapcKFqd1XQAjTmYq3ZgLVFoC3kw276jSUeXNPdvWGPlPc229Hn3tq
	 g596ConuhfebwpqXXOVBv7J61WkdCO5qAwl/VmL5ZZo0WoeCauEuBzBIy690JKsdLi
	 TjrhksUVYA0MvZcEH64L1glwrDRRVccpB0vCie51URbYuxODMbstgYUjV+x5aIFCtM
	 E5cUmz/DaUIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB673CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003395368.31926.5495639580815907654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9d1c0c6d11c8fab46c5a6a83b30e6120638751de72beec64163d37528e8ab9
Date: Fri, 29 May 2026 05:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780033953
