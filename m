Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338AA1AA1E0
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745748594; cv=none; b=pyLcYrF5l7etXwC6yRPcwtURr9SnPD1xo6DbubIRn5CtmvXrVhpJfivlV6+CeGJquqzM54XosbKLuEqZdc4FD6dXnWKrlbZBN9o+pbEuJKVEqndjIY8Dz064XSjV8Wx6qN9Qm4A1b5YC9WtnkFmYIh0/296ZCD/OXRyynHZntY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745748594; c=relaxed/simple;
	bh=pyIpxQupHLCwVKOrZMHl/M07dKxvvxyu7wD00oO1qVo=;
	h=To:Subject:From:Message-Id:Date; b=ShTepdYAPoom1oZ6cCV9ZQG/WiiLQz/sGoN5i+N6dNNtgqgc0/Z3CGw3oe+gFJxCcCoWcdA7d5Aqr4kZaSThWZRM4258d7+c5gvnbe0ZtAhgJ0if89VJRLESwhEroRJZitsu9sBNvxCYEQXLVoknzw+lQFFu7IeYIi4v453cqpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWW4NaC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWW4NaC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7856C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745748593;
	bh=pyIpxQupHLCwVKOrZMHl/M07dKxvvxyu7wD00oO1qVo=;
	h=To:Subject:From:Date:From;
	b=LWW4NaC5hx9Z8ZY5dVDiTa24HI9i0nHwVtrHFJo7tg+CcK/7PtTl5yPm0GBiQ8P5j
	 t4h+6TWSEaYFE2Iwr4uxxUfXfrJN0mwa8PB9+RfBBBUdR1j/bCYqLjMfZfSwPy6EbB
	 KwwQxG+7Tm/k5HF/NCtzqeTSJIN8C7JRkHkoM3Whk7KuXYklgmGAQhK2LFDDatBMap
	 CFRYehpTmgZiybkEw+akx8k7+Zv6cZCn8dsgUe1KhRHbo49yMcW5b3RVQPuLHIBVHU
	 1EKmTvXVfhAEG7JgFSrCNLxVwOkGehoDG/VAsZc2GH3TCyWijTMYB3zWURX1U+yJza
	 mMmKgAcrTEb8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AD5C369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574859358.6983.4991536091017344631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b97ccc97dd3921c4629fe978607e08d55a6f6204d0777d2d0e49c3f494d54e
Date: Sun, 27 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745748593
