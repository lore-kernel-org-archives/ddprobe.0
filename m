Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273E6379998
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781166394; cv=none; b=oyrHrp2ibk9syGS0R5dEqyF448tXstRCXF29KTvyb12ptJlOhHa5DDazijV0r22d+nhdLNwPzSGS62hrbgiuyV3ZwH4nAqtS3BkNR0r6HaCFXVMNsTM3HBM2sG/0gMnVxc7udmaxzPKe0WS0E5bJyRIHlrHNvg53YmgnxX8cgnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781166394; c=relaxed/simple;
	bh=9VAPHi1gQwpAQUsBiMRZDMs/isL01HC698GyzFM3gV0=;
	h=To:Subject:From:Message-Id:Date; b=qBQdY2lJARfSmKL5GADFUYLcgY/MKludX4zW0V3WPDW6CUGQni/gh+dGDrvCnYu4dfAAZEbq7tzkcTFae7+lJR0LO7mnUhnBZRhFMjJEPY17RKLQqQP+ii0XysHLY+5VTYJSs9AGcIoK4fzWnQgtGnuAwXnQEZHy/5e5hJOD6mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5CMJ20U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5CMJ20U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D122CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781166393;
	bh=9VAPHi1gQwpAQUsBiMRZDMs/isL01HC698GyzFM3gV0=;
	h=To:Subject:From:Date:From;
	b=c5CMJ20UkffAlTQaEdnQMvFXpMG3jEHZsbiuk5bC1SnTs1hP6NUR4LxVdtGT9fGk5
	 rpsEZXbflWkGSoMRbAYxYppYLNnyYLdHlq/sv7WQF9KbJ9qmW5xkqLc6QFC/G4BCdg
	 5MdTR6r99jIfwFa9YGO6XUY/q9R+SbzFsxnJGuHAe2CksvI0F2x1eWs5dgRoyIlnUA
	 J2vZGzQP8GM09KxxZlRHRHe7WWLTGD0hmy4wa13jAqxpLW6h2Ch5qcZeL44uY5RQu2
	 3GT2wk5/OvVAw3kZSnKXxSo+Mqnrpstz5vaAvieilZ+xJSAh0swFKRiaREchZdeNC6
	 kRM7bLRXLgWXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C07CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116639370.9126.7041862782169132907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84851c75a943082da3c0870e635840902b69f3218dce8b9fd6b88018776409e9
Date: Thu, 11 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781166393
