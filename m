Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFBE2F39D7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770800694; cv=none; b=HEc6LCQnrI+XQtUqFmpbWAG4ROWwK0fAi+FiyOPwPfRsr+3nTaprmMowjSkKc2zW79l0k+pR9l6DIszLiH8Z/W9+/mJHlnpKOU5NxpZEcPBJgCb3dpFdKIna54xZUT8a3uLWBPS2i5UlfSYtO9putqD2GOeGMp3Q9nq6XbfFrbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770800694; c=relaxed/simple;
	bh=rtLTEcOdLWoytn9n4NaDckjOxSEUcbxb49yxE/KNW+8=;
	h=To:Subject:From:Message-Id:Date; b=osgsTukcdAXKgTShKfBL4t8ZMkrqglqUpiNzHANM0axCDNvze4DmJYkaH0jgh+DDUGiZ98IOiMcULP3fZLm63EVnLkbVkV99tVnUxpLSNiZ3vYokk7pWFgRrACn1db3B4wIFQgucjDer0W2mjtWMo8vDZTyWvl+Ky2YjoS8O8K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHBLXIV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHBLXIV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5242EC19424
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770800694;
	bh=rtLTEcOdLWoytn9n4NaDckjOxSEUcbxb49yxE/KNW+8=;
	h=To:Subject:From:Date:From;
	b=oHBLXIV1EIZv7/oVYqXl5bfI8c2GFCGd2U9hP7N+31rPfC7I5zmmaIGtNf+U7S1LX
	 6EnPv+cdTK5YbwrbnzBBOVN3scf2RoglLGCEbvev1C4ie3BJfN5Dv2aNDb9HjFNLXr
	 bHyORFKoYwK2lZ8Kpde1C6xFY7U5YRFbQ02vPE9UPTGVza5sojj7UzvJJnrSHtUGJg
	 OEwx6WC25Yz6JWxVHtJgcvEj2z0sfWQQySATJvd882Pmtbigh4pYjZkVDGW7wgI+27
	 o2evDkhw/PxoZI89TV97gDpa4o24p+8XcMEOufOfTQWSV6tLkE6wpVTlOg4tymcar6
	 igG6Zxx4TBNgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05CA0EB597E
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:04:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080069397.8171.15621022246261387887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be21946edf7473cace0c134e21419995c18dfe9ce9f2f88ef4563b26d5bec332
Date: Wed, 11 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770800693
