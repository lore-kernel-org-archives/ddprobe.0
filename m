Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C47E3ACF0A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784090314; cv=none; b=fo7IlO9Xsp344HlmayKCunQjp2Se2w+Uk1kTX031Z+EW68xJpEWaTRXdgGt4CRQnItv6lyaB9HNJ6WliXbEjmMLY8+ZzX55v6vkAObIZJ8OeER3EqvD5iOoNu0VVUyo7HX5MVH5gmV7iHcEm2gJkvDhaMNHQi26mzn6xvDd5B3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784090314; c=relaxed/simple;
	bh=9WzXdAJTtrPahZAU57YJjbI7bXElA99JPf+Zwr0ui4w=;
	h=To:Subject:From:Message-Id:Date; b=dXOacww8Z2rPi3AtEfM9O8/9z9QJ+HkUdewMtOxFvUGKdsoSBCG4HilvCsTAIIZsgOM62krvcdtE8m+QsRhhSSM7s8Jrz7ZQA/G5uh0mrt5YxHhT8Kkm+euqY6ox5xrra34CU/YOtQFR7c6srQzrATs0T8+ZPw+7Tg0HMXTpSl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmQ6ya+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmQ6ya+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E46C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784090313;
	bh=9WzXdAJTtrPahZAU57YJjbI7bXElA99JPf+Zwr0ui4w=;
	h=To:Subject:From:Date:From;
	b=CmQ6ya+qY9G7ASAZzkIT69FE6MzICDGG9nxUheb4lo2BKPz33iUx9Q2CrGjPqxZKd
	 iHn7OdzLISP3sD8PLw/G3qHARB7RU5+ss6/SVXJCEn6ztwBkomSyro4TbRKqEZLy+U
	 aNJtVsDdu21el/eOjnWzjn4Sxt/Vzyn6n2M/qGqsALzV2I3vU2EMlpXxw7cjTNKMTp
	 JnSlTVSj7ut7r4cvAr+tGuj+OLYUqlxwUhFI5gn0V5q+bJkMgmWSA9t/Oo8u3ZQNGi
	 Io9noyK2AYwJUEYBdcsFiDxyfV94Tp4+XBvAlMiyke09BG1cObQHSlhpeDwDImwv2z
	 52VOTjVJVZ9LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF78C4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409031371.19999.6976316525781918190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede8138dd6acd6369e12d14402bc96882c7997fee5a28e5fd2ed1244d1c55abe
Date: Wed, 15 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784090313
