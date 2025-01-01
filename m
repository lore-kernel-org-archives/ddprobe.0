Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384DE2114
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735706754; cv=none; b=Wk3x/AnYwjvtUPy5L8tOxnhsQlBqmI3aJ7DavrasyaGolMR4UznwwgOspzhgz8dS1hyd5uz0WeToKUmwRODnEJa3rlDvyy7A/xT6cgPwalOMVHIHWkoCXIPssElebqB5HkAu0gsq7vtJdIbTs8KWjaoZY8nOSofBxHHf3LgaYl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735706754; c=relaxed/simple;
	bh=D698DwnOPrwBF8h46xAeJ1Ob7aJE7d7xzRzhLPJB3QE=;
	h=To:Subject:From:Message-Id:Date; b=aO5i/JOlMRZ3Vpdtzg9bm45IdNvvIjxulHvQWgy1ahLLus5V3yClqNAyDg7C8MzkhxtDMSi5Akj3doguFpgRPGV4wx91ndxgD2uLUcauCJ2E+58QMpXfPRdVnTUlA47emCtQ3D79hzYX379pthvzMgRHRSnRFYhC6AIBZwcneTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvYCjxmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvYCjxmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11C5C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735706753;
	bh=D698DwnOPrwBF8h46xAeJ1Ob7aJE7d7xzRzhLPJB3QE=;
	h=To:Subject:From:Date:From;
	b=SvYCjxmN0Qso8rcW3pwbYzKt3Njg87OAdsy0LWMHbMx/7jNThjrDhEAP40n2523tA
	 aq+1D9hbdrEgUqdvydETwu3P6ZXZ7Gn3MLwTIFpaPwh8M7sE5sLp4/nZ81SNpZSaxH
	 JmbT8HnLPZ7neIEkPZthnv2Tcml+hOo0TQwnhHzPjSo8b7AXGMTE/8DqJ4RSQ0n1Je
	 3FWryXkdxGPQpbCRl2S1Ytmz6+It8pU7ntmcgsjA2HDdHbMGa3RhK8aKpB97X662kl
	 kFOlznCKhWyu1u4/Kzgkd67u1c8tIBG8N5RnPlaPCyVIV6ENQwXrq65E/LLs/PC7v6
	 uEliwf5TotnVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C47E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570675365.24454.6218631578332980694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abaa0dddee791120ef7cd6908c0349864c5bedabc01cae5f602d423fd1a822fb
Date: Wed, 01 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735706753
