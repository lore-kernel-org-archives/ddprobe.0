Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3CB188735
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765301574; cv=none; b=HSojbeoC2+d9SPOlCtVMS2YfCbYJFTYDVarmblCTy0vIoQuxZ/9+Zq/VLvegIIifr9zQhf841vX07R05lj1YkipCKhREJXMLbS3mgs4upc7HaJSuO48sO0kdf0hFC2RfIWKSHwVbmglXqfFJONINJDoSpSaBb2mlnytQ1BjgrD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765301574; c=relaxed/simple;
	bh=QDC1qgulkjS5qj1U6CrUIiVJe92J4kVMyQ6TJnsiWcs=;
	h=To:Subject:From:Message-Id:Date; b=F4IVv7S7UHB95s5na0tZPEiPIgONZ5mj709QXFQ7duXxBEhY2CmbfJParKTyy168ZMFXUblPLd8ADNKf/RSENOk7uIMT5JGcNKnS4lN5MJnQV616/87AHEQBB1objwbQdILxIeowwKEvNeUJ+O/DKxlPDdWiyas/BQf2CT9/95o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZS+ZC8zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZS+ZC8zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABFDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765301573;
	bh=QDC1qgulkjS5qj1U6CrUIiVJe92J4kVMyQ6TJnsiWcs=;
	h=To:Subject:From:Date:From;
	b=ZS+ZC8zTRYE4LJqJCJQ8jHuWrgEE+2jL2U4SxNywbw4qQU34nhAHqgjy/3aT2zcim
	 csqDZS8GMljjgYgxXfquy8Qg5fVe23Ebzn1ZWi6j6LDKKZdyWY9jibIB0rJ6dCECih
	 nHqkDIPKds6bHq6gwNd1OO+WHiTDSU1fGMHWtSakLvHP+OPU7mAg2vBlVutCNQTzLi
	 ywXKG7exKf2mefCi5HDYLHwCQSBXbw+hgVMevzZTnpWaL1Nousnw/C0lzQoONeVJiG
	 DK1BLMgB0xPdABj5wvehH/uhcdywaeyyfUTzU4Kd3y7tvsiBaYZVFdVIgFFgSdoSxF
	 ulifrrSBeFK5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C23D3B98A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530157361.21219.15033106558828212412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3da270cb707a78d2e7cc6712e9f0a3c54e7181c41c65228bcdf41431d5adc3c
Date: Tue, 09 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765301573
