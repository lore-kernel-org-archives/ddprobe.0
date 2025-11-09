Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB852EC553
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762692594; cv=none; b=CSGRb5atEZGTA6xBRXq941Dd9IKr4MaMWiCrb+SeMzK35q5nHsybyrIY0ox18puNKS3ttBX6xT+N/pPOYbZYVNJiRRnB4QQNYN+H4i3fJxJEyKLwNyfBeZVhvSkxwpVzyreUwp2bCGbruruzqia7tyqFFN4Xs+cVvgnF+R5H9oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762692594; c=relaxed/simple;
	bh=gNG5DGLhEezFzIso39qx9n0cPHahOVOlhm4JoplXJg4=;
	h=To:Subject:From:Message-Id:Date; b=asHxvyqSClLiGcVkpcKMe0dElxJvBIEVrxpyPP9hd9O4Wp1CVEUnqEv1pdaHXbtvkwSyc9A/dvBb842i4R+ROMZMmvO/SCvQAoapaLh+Pr2rKmZXUEE7c0CTNW/Dfg93zMZefoB5FUMhDkygQaUM9ibG1E8OOiTwW+lxlbQhJjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyBfHbpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyBfHbpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99664C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762692593;
	bh=gNG5DGLhEezFzIso39qx9n0cPHahOVOlhm4JoplXJg4=;
	h=To:Subject:From:Date:From;
	b=KyBfHbpaYC3OALx9jbDPX3CKlmj5ld7lEg/tuvcyeKJRF7yD1bINh9f3iH7QfavYF
	 MuCWi08U76aaCQLIYbden3Hq18hw9aXDen8clvUVHeqqGd04tnO+PPD6t/aRSKg4NM
	 bEiYm7prOkOippx6XLJf6nGczupCAMuahKy8MRPH2l5A57620xVb0oOdn8d6Nn1swI
	 JiWAuijmH9UXGKOUP2HbHtNoSqX/dwn9UE4gNEIBoVTTOZYRFJ9Fau3YxGiD73pMbF
	 uUdqI9kONq8qwsPBJnEPs9Lw3MrM13yenD2PLUaDbNWAiamkYN3aJvxqnTcOiufOlt
	 nAzX4F6WT7F2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF27CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269259357.32635.18158276386936181034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d9cbbc881238b13a82a0dfcc4ce967ad5b9eb560baa34c67948d1845b9f9ae
Date: Sun, 09 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762692593
