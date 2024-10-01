Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496E31BDABD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727823355; cv=none; b=UIfkLbTTSgZ767Lu4iwFlDpPEKCKaXXKMZ5pxX0aRRYgixJl2QxVvrCcidrjn2/YlPDylYNGIsQ4vEoM90WnIevzG2uLoHPgcQuMHE0CdNr2wZ6/+YSLmc8tx5lFQ6ihM/BnEI41UQD1+wYnm/+oM134DPDN8hrucI/Fh7uli5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727823355; c=relaxed/simple;
	bh=AWzgvZMlFiutKsboO2uTQN7geyLVL0/7ENr8n9x0SwU=;
	h=To:Subject:From:Message-Id:Date; b=Ow+Ragk7BsRgLSiG8w55gOsRrTbnpo1Dh/ef/MDzhB1rOESVqrZG1tTMdKbuRD10np2jLZMmb+HRjlwIHQ+WG1f4k6+PECeFyV9AeYbjSvyui1fJbPLSvsxQFrmCY8nCXJHfzpaCsqIffu5bNlV4X5ehQNblA/UcwULvLexWzo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqMTNJNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqMTNJNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B32C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727823354;
	bh=AWzgvZMlFiutKsboO2uTQN7geyLVL0/7ENr8n9x0SwU=;
	h=To:Subject:From:Date:From;
	b=WqMTNJNW1+YVM+7MVwZZ131/xGEYmagiXclBRc3GAwIe04l/yflY++8NjCYHclDsE
	 A0/enXlFQkTH7ADZX7Ursy0Ezt+bHImjhrc0fjn9wNDNey+7ODydjitoHYi9TrfSFW
	 1TVRPgGxOMF+qwIdiGxEjkzMYZ3R/xc3bZ8eW0jKK0EztMf3vzWYbq+fJnMFYZCxXw
	 NI4i1KX+KS15t3DMgW/a7Hfzs7oOGnEhtv70SJRNp+W/XlKUj/rRgNX5RBISZmbJBE
	 MBNTy+F0oXY2UnV5OLBiwwKYafeCKPwR9m+IKjoU69KLbyFQ+ZA4RZB+iIxLxR6OjH
	 sRt9WngEKwlWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECA4CF318A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782335363.8928.790125956602322718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5617c4ae30973c533f86d4e74fde4d3b57ab5a12ac25fdea416eba71fa11eb06
Date: Tue, 01 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727823353
