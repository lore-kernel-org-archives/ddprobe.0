Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1516C1D12F7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727882154; cv=none; b=STGtnHgiN4N93jgMBNc6110SZFohD/kjalIXtVX/GlWf+kIzTWiEddVwPAlSVyoHrfEiwjEabDOXwAiW+BjazTMgCnryLxvp1x9eklorsJ+0t/xHCjuTRpa/f8VGe9nUrNIg0dD9vC6oWQADyFnASgF9puvv30Krc7/osC6Mzmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727882154; c=relaxed/simple;
	bh=tjI07q2AA8rQnb6IHsZuGh1s5vkvxVTQQB0tOB+raKM=;
	h=To:Subject:From:Message-Id:Date; b=ruNhkvb/OYUPxsogUrUtbbBoWW/46H61bcic1TFdC7OwMU+71MdZKo0GYQ8JH6vnCSuGiaOOpDM8EKtyBErxXZp/nuoSbOV17Lzdh2wMPHV2eU7RTdixsgVKfkPn152fYNrL9eB3mkieWWfHKZVkpvYWFzCHgdqYiqdvfEvusc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4O0Ed1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4O0Ed1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F33C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727882153;
	bh=tjI07q2AA8rQnb6IHsZuGh1s5vkvxVTQQB0tOB+raKM=;
	h=To:Subject:From:Date:From;
	b=C4O0Ed1rBHLhJPfnhx3EhYHwU1fh3LCWjLB6f89JpP0KZgMlExLHUq3Bb0AKaDrTk
	 ESi/8gMe6ma/jBr92vWHM2f17+7EvifvM+ft+Z5XZUdzSYNC2xU3DybCBpRgJhXK3X
	 1Afd6ashXZnaJEZMYlz2p6p+udliuj1DCeprFj6bTOflQA3r4ZtaDEL9rc/nqCndPE
	 sXlkkBWo9y1kWCs3T6Q7bpT4Y8YEhEiGkHSHRApr5CsZUMwehyNhC1XBHeLAqpBffK
	 jpbZiFNv82KoaNIYMMZUK3+aMYoiZUhKQ9GY5zeKLGhR/RJfACyYidK0YCsaD68Nr3
	 bstbasNu0TW4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29B3CF6D2D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788215365.22511.14876320154473285577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff0b3b4903281544f424ac8613c378f45ff6d1d78bf194d83a883376bef829c
Date: Wed, 02 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727882153
