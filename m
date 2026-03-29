Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DF838F9C
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774773894; cv=none; b=oBXzOkE37Xrqw4irLXPJT1gKKuZ6dGbrhRl1bQCgSxV0QpYWKktVa1p8Oz8BsmgTUcDiWXS4g3yldrudTcOI8VCHo4SSj+2+TQMOuZ6vsDcwO5gVUzChJxbutbE48wSoRPOoJt4KWIR1JC9ZoJla6brM/2sluhhpVqfxEm7R9bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774773894; c=relaxed/simple;
	bh=qETpG9YpGE49fNOwjdEnRxpn0tj/g8kViO9McKHjTGU=;
	h=To:Subject:From:Message-Id:Date; b=nLgkfRCpMGLZGxKjvYbNYP3nj5WeyILuwW0ztbCxvtJrWDNqI39J2wHZOa6n12vQ+nzenJn9jZh/Wg6aDZUQtr71Uy9DmJ5/HuZ/KGA6HhoL0MdGQh1JmjR0KKt99Bvw7OLbjgRM2/eR84UhpV7YriJxCu8SdKeWOTl5kdpO8u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swyOCixe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swyOCixe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5077C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774773893;
	bh=qETpG9YpGE49fNOwjdEnRxpn0tj/g8kViO9McKHjTGU=;
	h=To:Subject:From:Date:From;
	b=swyOCixe+hliwfHkSHw+zoZ9fp45cosSizuwVrtWK52VRyfdIsBtpKPumG4LanTGR
	 aWrvnUGUflRSl1HalwytfwAxFTmfiN6u+wRnW4FlzA0kjnDhRar2qManpAcNnM9UwA
	 KECEGCKjwkSV6Paa5KUqcL0oet51SLADCzeqHJqfuusXrVSOAsH4lBRUS7+70ZiZn0
	 jPyJYmCLF3UwmR00Qj4cTOmgO4p+ZlpO9T/Vm8fMzEHFS3iDFPOR+SArfRDeIjt+hs
	 uJncFcFO42wTisYQS7ic8xo02HUhBGVKKjtjjhzBTJi9f3m+N4yqkUIHn1ZWwowdo4
	 2OXxgAbY6YvyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94785F3D5FC
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477389358.21663.16920014072580172512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2dfc7870ae21f34061e0ceef7fc69ff9024d2917e77b6a91faabff77f5194f
Date: Sun, 29 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774773893
