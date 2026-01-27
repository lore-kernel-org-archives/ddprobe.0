Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C493EBF05
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769497434; cv=none; b=l8nRd6twyl9fKlFOhjC7kXLMoajfVNiVNbwpe1GdA0yIlS61WZ4pEvFxPXh82JCUNT0DYHPy6Q6edy7fkhai0R7joPCpvAgNcwZmrfD72b8mgLSNCNUlwJAnARGv4XbNAfd2r+nB/ZhaWsRS+0IsMGgh82OHa+PDFFmKHPj4vr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769497434; c=relaxed/simple;
	bh=BJBO8ZUq4442mpbZRaQkw1YGnGQ6axhZzrjLHIUorL4=;
	h=To:Subject:From:Message-Id:Date; b=AsQzkTEAtjES7KoYxrKbRDpShq01r8imjP/5J8SBqwFbPMMtT8myoGSasHnCaCOf2K0sp2mdv1pIB6Xe6sRIGG69pxbiyup6iM75vto4N+t0hFbmO3DtKwoX6np+dZh1FXYJE1ZbvEdM4fn1UZWU5Gbba07XcTumq+0YsaTeYO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRAPlwk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRAPlwk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4142C19425
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769497433;
	bh=BJBO8ZUq4442mpbZRaQkw1YGnGQ6axhZzrjLHIUorL4=;
	h=To:Subject:From:Date:From;
	b=sRAPlwk+sw/fyr5VeaZwjeuYc6Du7tipNb8JtxuyRticiqCBQlx42AcjD2pygsPvG
	 VGMjnUxzTDNjjmKJXiWG/JtQ456HwO/h31oeclkFbrTJBmuzr5neobPBLf60JdCkNL
	 FaPRXvBGYlKfK55jy+2+b9VRP8v3mDyuAnKHEhIytn2BuGlk2A8yILf+e38eIPSUQP
	 CwzmFDKsy3KlJ+C5obgRywwxo0pjXci8x/v0WZdVYeuPMKEZgn7UWdeswYnJNy7x5z
	 DXv8Jpwkrse7H54iJQWY71mkBt40R6JebQaVImtz7jSUj18HRNcbNc3Swi8vW/Oh4Y
	 Vc8gaG/ks0mRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D88D25953
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949743358.7899.661313153020774487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5ae0e5e0b1ac36b0bf4b6e47a14fa5ad78dfe70f23767c9053922c80a0b997
Date: Tue, 27 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769497433
