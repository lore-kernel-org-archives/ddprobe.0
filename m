Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E75C2144D7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775879254; cv=none; b=f8kzG27IR6brdYjmCnToPPdm0JlcpiSm2NLZYAGjZAdEP+BDAKg1/TvbtxOW2aNBQ81gHramMjiAgA0Y950JHgzdpm8ql3ltdtXV1b2JPU7qkh6y4YTHXhDhvR8IpOfqEg1VSHcJ7CQfRzXxoqp5gmw7GmeqVrYymIG2LpN/NTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775879254; c=relaxed/simple;
	bh=vjxOZUuUC/xM29C9xbyk9duempCENSgcN/iVH5mt+ds=;
	h=To:Subject:From:Message-Id:Date; b=V70okLQNSAirxmbwM22CUH4pb08v6UlAnynAWNjFLj+gyx5idWC7e+vkNGn9/iLU4VI5ZRIJj0ibK6FjjERKQYK+cspA7s8smBcVVQdni/Nz52EPyAjXVl7ebAbj+KiANwpohGgbO6oJDnOW3DCBAVl/q1uQbgIl7KAMjs98I3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awx4prlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awx4prlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1B3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775879253;
	bh=vjxOZUuUC/xM29C9xbyk9duempCENSgcN/iVH5mt+ds=;
	h=To:Subject:From:Date:From;
	b=awx4prlNcIepTfRKluM80NCC0YI9MHtBpeWZCeIeeJLiwffB0cV1QiywYR3FreHAc
	 Xj9BaHKXuXwG5rCjXZtbV/4IUjyc7StUhcb/qLbwTfSFSVsFb/gdZGILFiwE1lNbdJ
	 zgIvTKArxDDSluvt6boaH2xq6WFdGZ+TUSTxozJKeS0UncorhbX3ipIWuSGc6LDILl
	 B3KS1m1P4tddVCtVzz9xEYREz4QGLWj8CFetcZqQigGhpmXGeN6qjueAVrAmD084Hw
	 ojpgHlxQJyR+OPjUyev5ajb/zM30+3wzy9DODYebc420oUuDOeKcvUlEQaJAnBCelq
	 5eVVpe6n+QZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9111F45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587925368.1391.134918583006310371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25a685b6e053d4500d87216f592bde5dac7218d01632ca7faa912dd7e77b08e
Date: Sat, 11 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775879253
