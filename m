Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E29B29AB02
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790044834; cv=none; b=TmCcDyZgphSUgQjTMydF4FHt3MSt/HH2By2hToPWymju1Dl4t0pF4tbEoQMZtKxZ1vM9YsyDZnVDAH8r+LXToTBDr6gw10+iNQMF/xDuXE7soBa/Cg0YGk01SLUwuSIfED8bYVyGO6PKcHLB1MXAwb/dH+xr+aXKHPh6v4cje6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790044834; c=relaxed/simple;
	bh=MxxlPSz5+RbFJ+IG5aFUfuRIYewlyfIvZTDbTSxzjfw=;
	h=To:Subject:From:Message-Id:Date; b=YNBW3qdCnK/2k31OBM4gvtiO2N2POuhYdUa1A4JgKoszRG1cYsNOftArnO/eYFFILgWuNM5K2QZ/yxGmh5iD5oYYFGs3/i4lfrEVjLU6QuAb18PIlfSuQWuo95LUeXMdI81QnTb6FlsAiF0LkmvlxZ6vzAZis2NMFTmVm693DK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boqeEDDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boqeEDDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D421CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790044833;
	bh=MxxlPSz5+RbFJ+IG5aFUfuRIYewlyfIvZTDbTSxzjfw=;
	h=To:Subject:From:Date:From;
	b=boqeEDDZfSOZq3uJY8wm49JiyesyT1e0HdI/BnblA9vsncfarQRMDYZ1QN4W8UjBI
	 Ya8y9RPl90Y+vgjRiaJDYQXFQcjwnMUlPhWmh6mjO6p76Ou4XjeU0hx4Zv7jm4vDja
	 P87WZYh0sxwRs99h3/L88ObyJnnlmlNNYd3S+qjfAru69TUeOMU12Rz8+JizvHXoLt
	 0o83t+gXfp2lFOMhVIWRuA12vSDfyAboHVt7pWsQKFoIF+snLVVYQ8aKSxZFWmTe2Z
	 r7ToJi6J6SV0vLqHwlkKrKFQQdfm7veFNrbFhqYOYx5Z59OMjMCdePMvHqRuw/AcZL
	 RWiOShH5X+r5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08A3C982FD
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004483368.25515.2797610791754452294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a04cc7525e896b05cb326441c9a52da91a325456ac59fd6a2327209736e9399
Date: Tue, 22 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790044833
