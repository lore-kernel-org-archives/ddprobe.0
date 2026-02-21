Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46EB357A3E
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771693493; cv=none; b=h/mjLKzYzo6Sf0CrP+lI1HpEoHi9Y0nw6Ra60fF0Rc72fNOWljegaVxll3tYNLruZoUFvd401kOvIuXm8wAPOeCekLZSxeyYVaP12t8aVvq4ilP0GVf8gv6IChxVqcPd3vAosn+eJEqOliuSIREkAvq3zizLiZ6nTmmeR2MPOFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771693493; c=relaxed/simple;
	bh=c5QjVNTGBcGY60MsCl+MsuFmIvfMESWfzFOn3CGYOdc=;
	h=To:Subject:From:Message-Id:Date; b=XWwxiFIRfp5652KgX1H5PRrP+QcYAYg/nmCHml42FFEOorL9JYVG6xpOxBU4OWu4GrmJLP+quMWZSor8aLCoBeqxr65JHx+jmR/1JoVqP18kJYh8DkCoO5w6zYJTapRBEEyxkTMVjos067nkGrfG6Hb+nG4gzB50CIswXrtWqoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmM/e7eL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmM/e7eL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7409C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771693493;
	bh=c5QjVNTGBcGY60MsCl+MsuFmIvfMESWfzFOn3CGYOdc=;
	h=To:Subject:From:Date:From;
	b=mmM/e7eLQBYyIZTEVuvzt8RU0UrHMWFEGRShRqQ5C++1FO/X4k+BadhY6FN5G1v38
	 5GQ1sL0lwB0VUZrHBqqs2fwCzstEI94pI5AruxlJ9TMh3qEL0hBA+XMfUPsfB5NHQj
	 7wpmHRlVGf+JI58jTayVxX17GDOwiNSXNeF0unx1FOoBKTh5an3EYJvtGsHgd16ESQ
	 fcCEeLXk9iCoo8IX435ukDsahRVkc4L+8CQigxaC1RywdmIiLDy5s8Ia7IPs0/zG54
	 CEnH5JupNToxKacVZ9p5jeAnfFSwV98yltr7dTBLDcUkCT97Pm+/XWDxh4dPW4aDZ8
	 nz8ZpcKK9mpCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1805C61DE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169349360.30000.15443200402077021793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922bd91b436855cc101a42ff1787218e3df4081dbaf48e76607527b50672ff44
Date: Sat, 21 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771693493
