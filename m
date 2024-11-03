Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20817522A
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730592954; cv=none; b=RyoeMkLgigOPpA2Z3sEcyTD4+OWcbB236nr+DfW2gsA3uU6FfWJ+WtbX73Lnn6O7GBx3zzNJWkDqDXLjnEcNqLQSMeM58e3EGeCcwzEh2i6VSYYBSlYQrfmfayqN5frjgG9MffQpTHaVO+/chQWTqm/moX9Mm/8W0GobEldvisU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730592954; c=relaxed/simple;
	bh=EeuFk0aWdARLq0tynGU5/mJuBUbhbFqphzXuhs9I678=;
	h=To:Subject:From:Message-Id:Date; b=SUjG3sXM8ZPyhQrFfaRxom6IZUALG1S3QL3t73xXGmhKXgL4ti73DrJ6dcTaIO2gy3hwAscdoE6xlbYFLS4eTnpM0BC4aJyzyncwHt6TMpXutZqDzdHfWEPgy/2sIDtT4p2OmwakmFoB34cFkU4GfkNXd2v/UZJCQuObd3bAjVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeOc7U0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeOc7U0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25FDC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730592953;
	bh=EeuFk0aWdARLq0tynGU5/mJuBUbhbFqphzXuhs9I678=;
	h=To:Subject:From:Date:From;
	b=OeOc7U0Ioask/20TAPqVGIt4rY6q3W9FpzUFbkdw2qPAfRw90SMEMiqvdGV3VGbUw
	 mvOAu2JnmCO5t6AOYy9J+bk+xVTAVCSwbTVYq0MaK1lCrOAimA56rBU1P8BaEbu/V4
	 PdfwFDZYTCbTfV+w3bzWufBKM+XUT5/nq58OhtiPBCajdKRz3pTiKJ6azxA1mM6xha
	 OM0hG51nyPlxxE/SArtT7reIX38kqi1FYmvID3Mi1NZV9GbNouP3D9c6cr51o4g8lo
	 tqnTHJ78Grt/058dhVoHfsg3E4+ZS6TVAT1mBpBGOnyMEt8bI7g2itaE+OKBUXodmZ
	 hKTW5NDcNsXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98577E67816
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173059295360.12173.4459038696513959586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51323f1b79301b035ac6ee1d4e52f4b720b533591eca4ad79c519187c7e9c837
Date: Sun, 03 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730592953
