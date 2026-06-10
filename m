Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649E408028
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781097334; cv=none; b=IsC1rdVTd7lTcm1gkrmBj4va8frG1suC5/doP9n35ywRr/eA9XAsZpkKG5EbEd2zA6ycd/eRY7Awg4GI9hvOVP6yQjKzrnicxDfZLKnhdxtoFqJnuY4qUo++QudOszoUahC+v/JzVkpYQJCtQBneKMcCed9cH1/DNKrGpvS6LYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781097334; c=relaxed/simple;
	bh=Imy7U8JZCd1Mp53tGEQfKk0N5UEhZkETnHdBrECURhw=;
	h=To:Subject:From:Message-Id:Date; b=pyfxQWqWg0YhafR4skBz8d3wvY46/jumPovhv11iDpgE0wu+wSJre407gRppr5MDPH3FH8K6q5UBs5PD0Vr1faCt8fZ6+R1hbp2EooGyL1zUziX2HEG4ncabS4699iuimA02BxAuZwnhReqlMNi7onhMoxrpnhviwV7rMiRdGm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XT6T/Jz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XT6T/Jz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C17C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781097333;
	bh=Imy7U8JZCd1Mp53tGEQfKk0N5UEhZkETnHdBrECURhw=;
	h=To:Subject:From:Date:From;
	b=XT6T/Jz338oCCLOXvoS1YHI6vnCZ9hlL5FY/v9IgF/r7nVhiYFTdw4nGMWx70afB3
	 oZPgUAb4+49t25F+pBfvniPlYSnreekwNJG0ZbNJoVocVUU59x3vsrjIovfIZWfbHH
	 Cp/urDjTjmj8OOit7IDUOGSCmeGWI8mp4ztaTytmijnn5/UwK5T++SxPr1WQDzOxuw
	 CMeovmM3cmTl6DMGKVXpVLE9uyC00k4eEl5dFhxG4t99F0h5ckXL1fkA19mfzZlNQp
	 /Kxl4f69FVIvz2IupKc+QEQG0y1VBiYc31vWZBDKtgdOkkw+XLKaP7tTj9WOmcY2O0
	 r0lALOSSQhRQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5683CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109733369.24254.15288422553372994759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ede85bbc92d2c6271a7ad96135675038e08fad372b82a17ec3c3277ea80e09
Date: Wed, 10 Jun 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781097333
