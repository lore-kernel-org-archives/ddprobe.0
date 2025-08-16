Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB776FC5
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755376795; cv=none; b=f/QgHF6qGiTIdqwVlA45gnguP8tKGCq7FQnEJ5ZnkBJeh4p4GJsO9hXqGuHwRcC3059O3x5DKF7flF8bemeZerX4p08+BK9bcI01yP09Cs2dlZoR7G8pRs9dTNCoRItM+xNp7dh/SKScG4e6OG+O44nTaJtJtBKkeeYBF7lK/qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755376795; c=relaxed/simple;
	bh=SPzIjoZl+4XziabGgWEFXBpsZdMkX0UVnmUMNKcZQAM=;
	h=To:Subject:From:Message-Id:Date; b=FnUZExBQpObGsNAzDetoVxPOeKU3YSZGwiNoqD8C085CGrywethJAt3DfrSlvFqUrFbDFqKPFR+s0uz6jsFRRtSY648sW6cecPbqpGdRsibSOpnmr+nu48FXfKpbgIvmiG1B1IyvLr0mkKMrQW4AcU+lKXF7ZnDVcFYbhQYXeN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hE4PUeYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hE4PUeYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B53C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755376793;
	bh=SPzIjoZl+4XziabGgWEFXBpsZdMkX0UVnmUMNKcZQAM=;
	h=To:Subject:From:Date:From;
	b=hE4PUeYHvxWk8xwuMbnPGpW7M8qFXdhAdGAChVxN0DAg998YF/bdzmouDnPm75vxJ
	 7BIs3B/bAzbbnDut94yz4UbfMBpqnqMtbDifz8Dm4c0EEy28UdL7qz75wZmo96lM1n
	 Yul/FeGsg6navsPk5VWF8cZAXZJyw/lMinNHIeKIsh6D11ShyoUGBozEmU21CDWguX
	 qU/4DFLsksl5GFX2lDqmNWwmP10RYseVZdgFPMHXu7WhlLZj9LNhHpjTYELKu+ObhH
	 xDF6E4uPpEsHs+jjsvQ9+gVWIuy4EvriQSHhazriUkub/ZjvMAi11MMczhOGXdriDz
	 J5A++X4fTBsOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DDCA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537679358.31647.1322209157468852957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c12f29af68e7ebf23d3dc3705119ab44587e415688b35cf12e80b7d296770e3
Date: Sat, 16 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755376793
