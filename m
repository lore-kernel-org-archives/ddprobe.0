Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C34130AC8
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728157554; cv=none; b=WV2t4GPUWdPvmXcKEbvlGjYAX888MsYvFA3+3JQutF1OWOwOwwDxM0V2izlPFhckMe4wKvnDMwq0WPGG4Ii65rcPB+GZncsVIqxZte4UzVmB5ALoKbF7LAt28SqvuPkOhvZHa0LQl3lzQYpJ5W486Sc4DHJrrbm1FOUZGd/y5n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728157554; c=relaxed/simple;
	bh=iL7s2BA8pQyEzDnQIvHvMfpBq3tk/FKyd9EKGMEBnNA=;
	h=To:Subject:From:Message-Id:Date; b=QYXWv+1Y8NsWtP4UqOe6O2ezM3eydns6xt79CriiaNCedpfN79JwzIi9f7XCBze9V5yK2KNE8ApLyLKaB8QSs+ga9tv/nF9IT4NOTD48yyrxmDYdXFEBWzCwcI/hMbc15f8sEcZ1fyKu7LABWCvbBhm0eCoRRVQ+eAp7eUg2UwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxWGAmgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxWGAmgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC763C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728157553;
	bh=iL7s2BA8pQyEzDnQIvHvMfpBq3tk/FKyd9EKGMEBnNA=;
	h=To:Subject:From:Date:From;
	b=fxWGAmgjS2H9IHSc1rbh5hk3KwsbmkByjoJBdcH+CmHC15I9eVYa33fBRibRqIJkh
	 QcausKujaEciZYWnpx+5S7S22tSFrrj1vNoXcY/Eu7m105o+5lkU9GRoDDhjNXDuoQ
	 k1NA0VufddM3r920Ptrs1e2Uys2Fry+jaWrTkoj5CHNe/8onCygRCMpj8culAvTK3q
	 9I7hCx9NPqRVeOfU+68DpwviLgJp715izddzw7W4rpnW/Nhc8oLK9a/GBtn59zppfo
	 VtDTSoSr2j+SdUzK4kdSjQWQZ8Ge5D9kzWB2qqFX5uQwEtxeoN2d2o4AhCyJkzjGgi
	 qDN1RO3OEks3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E6FCFB42C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815755358.32434.16419747587210871025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c135dc2850209b64ff1073f52ceadcc7fb41cdb9b599a232a5e947a7bd27c15
Date: Sat, 05 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728157553
