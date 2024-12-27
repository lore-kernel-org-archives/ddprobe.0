Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BEA1FB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735265754; cv=none; b=DCpTXnGYXxB7PlnsfReaynPCI7mc/ff3nh6TtYq4qKh3SGA/gSKu68BHRK7os0zKKKNZposLq0IYItWf4cmLRL0PjDxKf8CdmTadCakS383EoGVICNBCo7WZ1BWM67JZM3xs2YzrrvqATjxrPJg347zh815BhBJoaUkR6HEFI4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735265754; c=relaxed/simple;
	bh=KkQn6ZdtDedo389vkapgE2kXZHuA1ZWCr57LyUdk0h0=;
	h=To:Subject:From:Message-Id:Date; b=WKBS5sVLi7V97ssfFt1VPnK8aTgMhIV3VfoKC4tbzEDR5sKoz1kjg8RrtdPvtsvrl4BhT9yIrjcGU4As5NUEmqXzof2K/oqmX0RtXcwzP4EAEzsO4loQgen4OH2P3aW2iUO6TJspfBp5ZLhAquWMIBjQIDKpyO0Wy64b29W7bGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAN4jRcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAN4jRcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7FEC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735265753;
	bh=KkQn6ZdtDedo389vkapgE2kXZHuA1ZWCr57LyUdk0h0=;
	h=To:Subject:From:Date:From;
	b=tAN4jRcMI8tPZGyGJ/+hy9IU5tL8q/1amQ1OMTFqntMq04wR5hHpQHfRqrI7ZwstD
	 FMhxtvwhMYzyQ4HBh38aNfB7VbkypDBdZzaaUiJCRWd/L9kw5NDEJs3zlsjPQh3YCJ
	 fekKyYRyL0QFOlWisHcmi3TrMNinRonvQ4iUfcEwh20OVL7fZbunqSvY4ISupSQhkN
	 ubQq1GCQZml4slG3g+lFTDF9OXZVJrqpTWiMismiGQce97MGV2D25uqzr8euv+7Rw8
	 1pK/5DZGe6LGoVJ/EKu5HzMUhOcC0fpRhUoOv2r6cN+ZVB1M6OWHotSt3uyWbik8vF
	 EEEKZrGmPJKyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97735E77188
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173526575359.5118.18416860086910418454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36966425282a2fe6bb9e08de81c173dfd430ce9f9badb0c1f8788cd2e395b9b3
Date: Fri, 27 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735265753
