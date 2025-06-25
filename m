Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE84748D
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750862994; cv=none; b=iPgyQi7VwFCQ3weMTJo7X5JANxAeWDZGUkUH64PvouGheJuAefJwUML2nwWt8YamcTJy04OkswJ8bYnkcRMHdTmXs6ieFDrUfYGYfWJLQYEP5/dDI5MHINX56mplH3UF7fuG8K6DA7uryBtUYFUTwJpGy4TxA8qIOgc0xZQI+80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750862994; c=relaxed/simple;
	bh=THM8eZL4nOzFHSP8FZBv9k8NJfuz99rdv33lUEOOurM=;
	h=To:Subject:From:Message-Id:Date; b=YyIvjUkfoZt9qRedRBe51z0kZ6XlQn6InoC+ikzgZhOsx52pPIYm36qPvJmxFHXTs5loMPKA7PoRUM8i5iiTqGw4gUSkcuUDkLzwZyYyZEeqcFoLcgOah3gwc/2wbomJrmvetH2x8dTe1CUCAsGgJxcuKxzLJiqhgppch+ucY+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMmN5UjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMmN5UjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A321EC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750862993;
	bh=THM8eZL4nOzFHSP8FZBv9k8NJfuz99rdv33lUEOOurM=;
	h=To:Subject:From:Date:From;
	b=FMmN5UjGlZ6zojI76rGKEfacOEK8yRd0gqJTNkBwONDvnC/u70RadDoZ+rfbE2Nsy
	 VQ59DO45KVbWWsy715iKL3n6CESWM0orqWFHlro3wYpIG1HKVNTjM8ICybMqMs2ygm
	 +ezzPoBY9MU6ghRdNoNkI+oDqUg0S+6/c5SUDE8GcT6zO87OAlxWXcMXnFc9mlfd6R
	 XaZSpOT46/F4ULV94gSW9Iq7Z2sFEGBavtatPaL4C2s/HQKcVRnbrF4ZMM2kO0XB1q
	 7kXUZv2gfnUn2kNV7/2dBAfnH1nElnN0VJGovVTfJRzTN/ekpR4Ed+v7xPen/iwQ1k
	 z3NviKkq/AGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46DC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086299357.4187.17480619190554258526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51af6612f94e6613933e9b0f4b3d41aff484e908112db6d19ee369a0e77be2ed
Date: Wed, 25 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750862993
