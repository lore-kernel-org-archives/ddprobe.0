Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60255499F0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786058434; cv=none; b=jE82JCWc2qYPbbh1Dgp6eipa6KgQcW51Ch/lrbDrMzYPXH2tZfYdl4OlhXbWQMb1ImDi/bObpEyKpB4GA1XQlen51yjFBcW1FjTs86Zw+Q0gqnCDyvY/39tat4pClXiHW0lZCcv2aEIIg9I4WsMzC3P1TluqAAMmXKyNI3Faj0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786058434; c=relaxed/simple;
	bh=Z/S81SVom9pE/Ns/LaJwR3g01l5dQKxvth017sgN0WU=;
	h=To:Subject:From:Message-Id:Date; b=ncdXEy0C+yWk3/c0JBarpXAElJAIQEgW+RmCZGofePbtKTQGKAqFF+0JM0JZmJbFn+Shl22OSpFwhMyusdTdzS44xZWB5yJPzmAHphbIRGkZqWQGut67wJjD70/4cQDs9wgUzQIA6XVc1nHRG9wY/TnOxVytBhECytRGaZmYFKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgzXZlGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgzXZlGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D554AC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786058433;
	bh=Z/S81SVom9pE/Ns/LaJwR3g01l5dQKxvth017sgN0WU=;
	h=To:Subject:From:Date:From;
	b=BgzXZlGKO1JsDJ1AJ3NcPXOQL30F99Wo1eMq5esIyWAbq5HQpOKcMg7qsut8+pNne
	 VNYXKOWGxKgXHnaTCRg52kIZ6VJ4iR/z5tNHehGxINP365ztmGtduF0QgOAP3TIo1d
	 lwUvdLFeJJ/AybV/bJ19mhsCfXiN5RoHpeSMJYQX0Q8G+vXI3w+kQ9OajB9yfGM7z7
	 +g1SCsp4LjhiitIYPDy2MkmCEftNlgVDl+sQmAPUeA6etxe6drE0vO0fAkfKRlcx2Y
	 q3EPyt5WbWzLEahQcY9jqMWdeiGkzu7htwUV+UqoFup00yM5Y6i2hbWGdzHkIkpggt
	 aRljy70rXp2iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13FCC5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605843368.8427.1708357495707438406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c113c65c01a2bd7e06c8755cb029bee94f79cdb9e6205a4883dfd6ab9eda88fa
Date: Thu, 06 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786058433
