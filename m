Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275621D5CD7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749310794; cv=none; b=HQ0xCQuRPPrCa7l8ZFKWZ5W90gF3bquPfCRkyIzj8J2JJYn4eWZwfn2lmaiD6zRD7Y8S65cDSL6CMiTPUBQ+7bi2zYVjyxS3Csex0lxEbhjyAkb4nG0i6sGfxQBsnv7Ws+fPfOyRLx4W7Bok14OWBe3dDS8+9Mc3w0E2G4CgIok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749310794; c=relaxed/simple;
	bh=anxjW0D07EFBpM5TI26hksbm5evkq0K21NOdANaOah0=;
	h=To:Subject:From:Message-Id:Date; b=VM2xM8mi/Y1ptegE/mnozmCWKUN0bFgwYSFO4M2VJYd7yiy8+8V6y5cvFdfOJ+ez4wtaDrim+NXHXUNXFkktFulOqmMddx0dOqJgTVryIA5fTR1812d2E8rK1UwqKJdsNT/eaKrnMe85SLTqmqmUuyHa084AQiMD5z+UYs4jDtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9T5BqSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9T5BqSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD09C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749310793;
	bh=anxjW0D07EFBpM5TI26hksbm5evkq0K21NOdANaOah0=;
	h=To:Subject:From:Date:From;
	b=A9T5BqSuaYDtfj80wCOnzSH6QUQBjKTAorAx09ohWzwUnGanFCf0zvilbAxwhrN57
	 5leuzsJXPdJ6RPD0L6ru33o4WYWaE5tD9472w/5AlZV1pIQZzdPtzqxHEZrTWOs6Q8
	 MYKlWqyUgfV4oB9JtNNarVmntVDTSD9qgYNhlE+nVWmq9QyyzBY/OYkuDuDCA1AL5L
	 9MvweSkDUNznF6xlouNum8sl5epnlUmZWhiZrovcLmPDHwAaI43LnN9VUVTH3J0NeF
	 hPS7Hmps4Hdqrkb2VUFWKjKPwUfsQ2bBLo2CpdxdAu21iUvmaoe5fosPesk57qjFap
	 c2BnwzedON3wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98104C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931079359.28775.13370413757602773990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d801c23f29eddd32e6586f4fb9e6c448ba6bbe88f96eb579fb0b239fb6c33c
Date: Sat, 07 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749310793
