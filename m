Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E4C178385
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717866443; cv=none; b=d1Zv5wR+VcApT4LXP9H+FtzEJioBgyow2812zSlyc99bS/qBt+kBcoCRjwTWLyL97KB+Nvu0s90ksbYAfak9PPMbVKMNd2DJN3YTLEsDAhBwMFkli2W9bVcSi/8j4dYVnEqjVePqSRW8iU0kAInfOM5gRthCrAjeP85OoaK5x3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717866443; c=relaxed/simple;
	bh=1TVRi+roIuOk7n9kUl6T/acfX6cgQbHXFAVCXl8PIXQ=;
	h=To:Subject:From:Message-Id:Date; b=G/MQTuthMxhL6CdP1Zb9ykFRdLDiPgwuUwHXDDbbfQfUDCXFldeXFc6SrkWDSfGHBh/VWqYN98XknSdzxs0txD39BtiEef2ZFI+oBPov8eQK0OxVf79iAe3/ecb4kaMgrglSqmPT2fcaaPloxJ7TX9K9kW13oT0VXJFg3kGE9NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ta0aqFW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ta0aqFW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D5AC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717866442;
	bh=1TVRi+roIuOk7n9kUl6T/acfX6cgQbHXFAVCXl8PIXQ=;
	h=To:Subject:From:Date:From;
	b=Ta0aqFW/PweYPN8uj7uqjnfItIn3yGNS0Kc9w2E5jSlndqzA7++OGgBFYZ9dif6kc
	 A1bG6812U7L4SrrDkj+vL+IIPf96VwUHLc+BpgJPruHqpefbEFo5W98i67e4Igzyoz
	 PCrTfNjfYdI6QU6wdsPLj0u6LCVbrjIvkgXp+B1eHaUmeDaGxN82vvUzgDemVfl0UH
	 liDFvtZ1yjq60fO1S4fzCPLmEFpMhFlMsX/pKBzo6PupKPQqzTRTbTeEFkdVLLX1f5
	 m8hWzYbeJRojwcfl0up9oOqSzfxBRwrIgD6/1sUcLV735kksq4ZF1aPOLtBpdtxezC
	 zAa1VE/OBE7oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C722DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 17:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786644277.26121.17994649005435820434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d25252da5544527eae1f8de73e86c6b114a8497d028ec083ca8c3fd31ccb2e
Date: Sat, 08 Jun 2024 17:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717866442
