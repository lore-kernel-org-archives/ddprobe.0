Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA39314A64
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770116634; cv=none; b=dCHxc4fA2RPliM/E7egIE9JwkuY26WopfPJ7DlrIQvENfEklEGJTppAboNdQ4cSBxCf+j86WvWHBcJ+dldLiI0kAPqbeir14sME7Pfi5ds0lWyD1cUrpOKoZJbZ3dC2VXbKMEuRMPQvOiTQZZo2+9StSqqoPMcuxnhtb7qc/ya8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770116634; c=relaxed/simple;
	bh=SKkNnRBxXVbEG77fix1U0xkvUGFAX+/38jiP+lnykxk=;
	h=To:Subject:From:Message-Id:Date; b=hF1ONsqHDSTSF11/VZ8NVc9qCR7dutat+xX2GPce5bN0rRnQKZDwjzkfA5Xp+inK+QkFawrCec0Lk6GWCCDjxLxDMUKQkKvkoqiogP8FdPmt7stHb44GK0b0R7Af4bEZGGP2PxiLQnFEK+3y0Y8/TzY99JpoVLqGxqp0bJtnVl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNzPL1dG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNzPL1dG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB07BC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770116633;
	bh=SKkNnRBxXVbEG77fix1U0xkvUGFAX+/38jiP+lnykxk=;
	h=To:Subject:From:Date:From;
	b=UNzPL1dGSCohKG5QzYdqhEwSCiu+hL9t06UrFsdlV/6nfMlmi8wsm8JJY72YgPY0G
	 /m+T59Xhmb0fx+6LOFgEjgtYW/vhgEt0cJ4KRDeGjA497up4ebcDVMEsd+Su/37NCJ
	 uZR51hX6h92g+AM8oqrCE+eerKH7s6ncVlWG/FElHtkEAgsMzBPyiPEejXQviEyoEM
	 0eErsSplKRr8QmwoOPs8AUiWIfIBfJuamzITDAmMArNSyrI2SJAajM88lKYP54AdCp
	 zDzvkB6N6Mcprk6RoQeoBshICbJgtDNxv9FDseplkxPTuCtH//rn4/upL1loKHlz8F
	 cIJ0cKgcmZVKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4209E6E803
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011663362.27464.8047563258907415945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7eb1a95400b7ae4770f54827a7fcea054c48138fec3cf5963baceeba8fb3675
Date: Tue, 03 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770116633
