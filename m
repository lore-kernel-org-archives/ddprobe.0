Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8F6335C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745284194; cv=none; b=X9OSFs/B+yIAwpa/UVrYo8m3/+pvRn3fy/rmQkkFz7Ff2rAPZhCtMnB70pqmLiIY9qwG98UrACp5wveSGZloTJj5oSL5Oth+yp9k1KozD5eLQhn4Uc1XJlvqp9gYFfZDTwJcEHWKirTLOcQJfckB8UzNuFo45fyYBJg7JahHr6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745284194; c=relaxed/simple;
	bh=Kpo4pujPzaxJdOmwwDXzKRSakK2MV3HRGg04p/sj4cE=;
	h=To:Subject:From:Message-Id:Date; b=d6o8fTMIPSMcrN4nQaGahehZwBoV2eqKtls9clTD4sJgFt9cpJuQu1/m5ilNR3fQrCA23mmcLFEykfheug+nd643phU91cehlpc1V3lwkHb7Wpn4OfCtVUwBVd6iQj5PYiuGEb5Y6BKBj0+sMK8hQ9xuI2K+A/Z4lRyKfjWTZBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GI1FQsc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GI1FQsc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF00FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745284193;
	bh=Kpo4pujPzaxJdOmwwDXzKRSakK2MV3HRGg04p/sj4cE=;
	h=To:Subject:From:Date:From;
	b=GI1FQsc3VrrdezBld57UnTEGK5i5OqdzK69NYc/wwzz8KkF0f3g+sP++TrIfF0ebd
	 UD1/9V+PkVZ3JF7lIPvGaJbD+4VlcdGmH5DdiJjRjHXjAE4TcFe7orC3sx1XWw4Bvn
	 xUCi5z4QIJCJ06S3yoOuvUshwz5EF3hUnVQl3Zb0D1Hy9uxryocE2cbYRK/WSM5xlc
	 l2jdQHIJmJEUuqCjvLm+YmDLi+AafBp8Uah0jsgPgg4sJ6DPmUKIL8n9F8HpDKG4RS
	 LSyKqLm/aZJR4BXgiPXTHZbWBynsnyEWhvVSEgeAGLL2US2fvYVV3/vkwjKmOgWmwC
	 c2asEYY7iZGAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FB9C369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528419359.3958.10228788259563559784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccdfb6e9d80c64842db3bf2ac6f28d858bc53afb9526964e9ee28dbe2226dabd
Date: Tue, 22 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745284193
