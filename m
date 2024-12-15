Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AF81B4150
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734303354; cv=none; b=dAcUVB4DrthlL9WFOgBsOGt1gz4y3f6pW31N6i+bW2U+Nr1UT4EeQqwosBf7RywyQJd58iYErWUXLeumH+uRYeplLWJEvJUGlKsBtudTJU4gX+x7noSr85ZPd5SZdNdFmywfxQ9uY+zmmAKCzU7BpRms+7C6iap97q6LgOqKoXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734303354; c=relaxed/simple;
	bh=K6hQi4paGwVYewMKkWFTG/YOP1ylJ8TnA1NGHkBTCcc=;
	h=To:Subject:From:Message-Id:Date; b=kmVERNh/vXXoXvg24VmMUeyorGKAFXpEvlSSVbUjccaZhSOAylpMffZQ7WLgmbQ+hNkswwiMlRm7NNLdsCZHWtd4/yEuINHAb8PdkMZBbkGJP10UkHsJpBIVt6jmMelvuMVHC0tBBH2LhwOU5243EIrF29hI7EF7dVwRqyftpk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u50vpmBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u50vpmBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F22C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734303353;
	bh=K6hQi4paGwVYewMKkWFTG/YOP1ylJ8TnA1NGHkBTCcc=;
	h=To:Subject:From:Date:From;
	b=u50vpmBrCFPCeAn7MYJ6C2jHXkUES4HeHbmY8ihokDNzYOKK3cOCPBpu53zBo6pH/
	 0IiMGnY4UV4i7iwGdtJjFCO3llHhuu1lJaEbAK3+oR+FppJ4rjkXHwU8SDbWfhEN7I
	 zDvxiGiCt6El3IvvngD5Q39ZjRwkYVjIouBdbRPV8B7YvtjCxnRhARMBJ/jsFrdNay
	 iTZY/HUDAq8pKvlrQOpJkQ1cMYcU6sD3g4aLxOjty3Ro1cIlUXsdjh63gWW/g46Kf1
	 lz99OB6Db1yZHiTMNkmiwqyfCcALwMSzqqJ6wdUJqfo6ZtlXpujamhlsm3KwW5WX+j
	 Km72QszHZ6wKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1780E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173430335362.15311.1562369746420870032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143b5163230a69a0596e8d563b43b1830b7ce228903c9b57396ce47fe1f47d36
Date: Sun, 15 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734303353
