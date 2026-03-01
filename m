Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1E027FB3A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772328294; cv=none; b=ldpo1W0SByDYLXavR/wZ6uOVTQlX/9CSE2DMfJhGmKpSj/4BGmrs9p8sEicsJHbUyJ26Qdh6y4h+Sb/xg3ChKmAZcMG/zi9b438CpX9KFftrOCZ9RApjlu0CKsHMyiCuSFgaYG593BU14aLAtjgVASJlIjH91Vuhf3Gv7CdEUbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772328294; c=relaxed/simple;
	bh=hLW0QKqQ79CvU3YmsznbFcZnOz4U5jW8LHC0aCxuTFY=;
	h=To:Subject:From:Message-Id:Date; b=J2T3vA3/mYkL/m6MkFJNeqjFg95YEUt98ZZ7L66DkDHajNL4md7456QMdBHAfLSOeXV8Xavyj+ty8+KSfpEqQn3dz1zoQn/+wWAgKYH87dbVza9quVk1I/hzZp8Pf0gO8nlJLOUijnnremh+UvrCOc+HOjNOVPK2dFqmEpDgoek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pws9gU5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pws9gU5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1943C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772328293;
	bh=hLW0QKqQ79CvU3YmsznbFcZnOz4U5jW8LHC0aCxuTFY=;
	h=To:Subject:From:Date:From;
	b=Pws9gU5r0WSboUTS6UZFuZnH7d7wF+EF6/B9ywiAQflj9YJcWwxWFH9ewxAQIaIec
	 fizn9s7yEUEDz1LIl+oEcM+jBR5crAQMTc+Cyfg7/sNPSbEGz2vsugNRI5E//inmAt
	 PVCWvthB6+mylr4c+85n48wP/5qOJxXHyv8JxKoBPgoTJOaKpl2jYspwvMpdp0EhFD
	 hDqQlHX1s+yFsOOed7o1FSA29XoxiTR9buQ8WRAnYU3xOVp2XxL8+qHd5OEAiKC4Rk
	 Pb04uOT+H8AHprhVzdd4E/WsvyucsOJwPW+HjMQmXSZguq852Yvqe+MDblu76hgGoL
	 hfYKg0vg7Ju0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E7FD004B
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232829366.19735.16138470404560400048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4173a74fd6ec2873e62c5911f1676a9ae64889dbd1de035e0a3280484a30eb65
Date: Sun, 01 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772328293
