Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3164E4400
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748776794; cv=none; b=Y/cJ1S9IPg/+tOJJy6GLjpudBZCoAK71x8C2KBd0Bc841lGjoSh1kLu+aUDUPla6B9oXx5hP/oI7U3sNzebueNlLPjVANgNn2yCuzdRfYEQjpvbTj60NU537lQIWJyleXrNbiaXobD+kRZjAvndxX2wKmSykFMPtf7cjjsFVD6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748776794; c=relaxed/simple;
	bh=kYRfxaCyz3SvRvqkO/0oeL+7QT8fpNTOddiknGYTJF0=;
	h=To:Subject:From:Message-Id:Date; b=H/cYZR0mZkaLdfrjKMgxF5jBvBoGe5l5lR5hBkbet1gtJOMd4S8ynb+sXcflXiIVyXzlk6R3/O+UvSDeK1iuv/yhWEWp1npfpIjrIFy7qbjCeWk5tZsKkezR3oB4xgftsy36I2sOJhcTwJK8iApGz6iakelpO8zSJZnCD0rdo3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFhY+dwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFhY+dwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748776793;
	bh=kYRfxaCyz3SvRvqkO/0oeL+7QT8fpNTOddiknGYTJF0=;
	h=To:Subject:From:Date:From;
	b=kFhY+dwXtfmEqHEexvK7GQOx4+ykC6Qj1IHuoplLzF/IDt28QX0832xVt0JsFO/k0
	 qi8uxewXnDV/6YWc7So8cA/TjX69FwiJVKl1BIyDpLIkApr4MErUDX+vW/9PPw4xFd
	 bQfW4wg0fqnuvnG6O/F8ggXqnQntRYhV3rS/aY6R91NUZRVYTylPBE++bH30agTyKc
	 4RVLoPhITqvj+gBrYPuSWUA9uQwgQUodYLKFHEaMafrF7IsaWAZlR6jwjvjRwzwghp
	 JwjXtoUkaZU3CkVCgrShvi9whyPVCEi7PGgp33eO9vMza7yxvL/T0XKqdnoZ8Lm8CJ
	 SfRYUOpseXmGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067EC5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877679358.25328.7893369255985642290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1a091eb3fb5bdb9bb9770d1fc6071951dc4e6e1e6777b4452161af7dcf9775
Date: Sun, 01 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748776793
