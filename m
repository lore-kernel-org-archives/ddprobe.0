Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C68257824
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785681034; cv=none; b=TEonjD71olEfwVoGRUzuMAF95iu24xz2USEVOkFermf9ih2hFViETt9Lq5hMOT3F8aJPBowz0hOSnp1CGk7LKPeP1g/qIFqv5Ix/xBQ1dSUfvzNcR54FEPs+8LKTE/k7zgkIeIIkIkx5CmQhTufz+foGJQsPZA3Fpo+LiuUiKjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785681034; c=relaxed/simple;
	bh=o3dMJUY4JYNL4iMIwtBdohxVrZDMfSymRk2BHwb1E74=;
	h=To:Subject:From:Message-Id:Date; b=npzZG1do+jRJHjyS0HAMIJwkKYggKvgIRaruijnP6LEhbJIRzTOUlaXDzaqkmzaRcmP6LbK5EdkAhosYeMC52YATvE8f7CKfzE2+d04FyCvY+mckIyqnM/UIu/3VpgwgIQPaAEWHfdjBcFlHRZ5ZyHcTS2zQlieDlccR+FOhDsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ll72sM0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ll72sM0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22CDC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785681033;
	bh=o3dMJUY4JYNL4iMIwtBdohxVrZDMfSymRk2BHwb1E74=;
	h=To:Subject:From:Date:From;
	b=ll72sM0eSQzZJdkDtnvG8QMGyB19/PJ0ti9moLKMa0I7BWR50UZmLM36Fqd1b4fQN
	 0Ouz2nkja5YnX5BOJSq87nhR6EFakz0gLnBLJBrIo3OtJtFStNHvfKj1OgoOZmBCl2
	 eHD75Nmvywpm6j/+LNPFf0D3Nj2PpcJrXUcxKmLWNObf9J8Pb2QDpcxljE+U4VtrtF
	 2KwPYF2T5l/tQBw/QDvLeaDgj7R93itpEkQaE4subUHJp8Y9866I9s4ZAFLOSYhGUZ
	 kJeMnOnrKWyxOaxpkAvvDB2zXhgl10YaVk6Blon2PFXFk6UxE04VjYa/nNWHbZ+vtn
	 Ae1sknmLpr4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1BEC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568103368.23010.9513475377189820721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a686f8bcccb445941dbe71890a74e3038b4cc28b8eb63824b6f1cf068ed2a35
Date: Sun, 02 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785681033
