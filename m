Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55315342517
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783579114; cv=none; b=Diy14P1sym60lLOjClX0E+L4jORDw2nWvcVyY10xuSoKvfiTwBwzv/6Ix7e8L8nSa8L19TfDF+ghc7jXX1aZN5IBC/ewPD9nGwGDt/1FQWP1Hjc70i/WeEtfYc+dG/CTcrniXEUuRP6Fv/rCkSCDlxypQaLyI3Qybfm6/LNHL8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783579114; c=relaxed/simple;
	bh=6bov42UQj7zNZW37E//5pMwzM4fdhd6GCI6OJS1k9C4=;
	h=To:Subject:From:Message-Id:Date; b=phP/izLwNgMTEfZQTNQlNbVyltYcjBb6Sc4fHHtli60m8qGZSRXigzi+Ye0Mu3EzL7wKo60SnZP3sM767qnFob9rmn9dXVyYvYNptJq+1VbV6tMUKIaxvaobZ7aO7eTVOguDpkGfHqojtJMKnC7lJyKUzIYFQggctwUIJTFgZuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1IFbN9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1IFbN9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DC8C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783579113;
	bh=6bov42UQj7zNZW37E//5pMwzM4fdhd6GCI6OJS1k9C4=;
	h=To:Subject:From:Date:From;
	b=V1IFbN9UQigPvgIgHL5mtfIcZwYeynAhKY6rN52dFrCyJ0d/RoYD5nm40uVUeiahn
	 0XqX/XyFr4CNAehcaPPJeXSs7u2bJ2eLjoFUbo4uqL1gB6fIAG4VWwahn1dL46zHah
	 hzb2nP8hw3fYVSvP7uBxOAJxh5G3Woqyet3KQZf6ZJ89J7i9de8wmBNNSEr+ynyXDT
	 mGXjUZRj2edHqlPWRmanEaMKmAGCcuOwA07s7uXOwo1pdDpQlP7G3V66LzzVFQaj/M
	 NnYALjApFAvMNcQOOgjvaKdKEqKrw/WsiACSwn7L71OGFJr62a9RvOJje5/JviKnBA
	 jg7cwWcQGDxpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90C6C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357911368.28914.3338607048937100101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63cfe55bf45c8472891c781e6886ad2c3817a16258eb26f82ec4827cdde265af
Date: Thu, 09 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783579113
