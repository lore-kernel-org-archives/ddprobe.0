Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246BE2E414
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775914054; cv=none; b=gg5JTfTAlLa3K5FPm5opaZgKfaIlWNLT8d2dk1AjrAWRUErImXayiu1XNqoXfML8UOjCZMZHrKAVF+PbaBw6BBtWCInBxmZZ+MagqTPl7MY4rsPo8w5AVFRCs7PQJvbxgb+TwZrGH9UsW2NrbE242F6itJ3EziR7693nC6LsiSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775914054; c=relaxed/simple;
	bh=mm5sSVYaoRSjfkwDvYWduCe96E7fbCJQhkhF/9uOr68=;
	h=To:Subject:From:Message-Id:Date; b=e0KaZU5wq+8G0KOmSOPSdhNNat+bheAxS/mtVTFvTEHlAurBnCaeLo4LhOwk8nTSmOE9SzdGKKuGNYB6qZNS7A0LI1dOD+KZfbneIZP19VnKCredDvrgxbm5CusoXiSjYWSQi5TBeyK+jbIMJdaSbl+Ox4a1DddOw2jb/3IJ2E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IusLcx61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IusLcx61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C6AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775914053;
	bh=mm5sSVYaoRSjfkwDvYWduCe96E7fbCJQhkhF/9uOr68=;
	h=To:Subject:From:Date:From;
	b=IusLcx61rNH/1c23LXw+eSDjwerxeQY3Yi9UZXYnFT515i15XwjiNo+t6BrktWNHN
	 KQeFB52Ea5ZjXvyciZS2kNo/MW1nu4jnkSb++7VUQdKB+P8BQ3YOQfA9VdSO6oz84K
	 4frM2/HQ6EKab7X38asJllgd6zn4huodMQmmR7yQ0hw3GhGE2x3K6LszV1miFMYWhG
	 NTGbmjwrv61d649596jLJRiJMyVpkRa3OPtV2gYiDndQAn8qiajSQKJiiLZ1RGZCxU
	 kU3N0VHPdFk79Q/wjOVvYrEOZTwuWa3IFJq35XdI1hnzjCCMep8z7RU/LNfs9LRejx
	 Sc9UjK/Df7EVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FF5F3ED40
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591405368.6290.12011299892775512774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e376027cf36597fc40d5e7ecde294d7fccdc1cf982bdc32e1f9956d0b695ed
Date: Sat, 11 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775914053
