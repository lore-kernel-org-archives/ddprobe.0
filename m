Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C54137B402
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784843434; cv=none; b=AlKUvTD2IsIHEa4wZ51QJs19u9ViwdJb9F1i/rAa1FIWGKlNKnfdWdd0BKYmvYEb4YEbHrCLUN+qAeOv9gTLQQg2R6oc9VPqmlvKzpxWi666Jb/9ShbU9ci/qgX2Tie9ebK36cu5E3pcm4bwDz4iZ3MLbWBbBJY17jHnRzN48kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784843434; c=relaxed/simple;
	bh=9WcsE2dAhqo5lcxFNrPPfYz02UFpssmQqPJlVExafME=;
	h=To:Subject:From:Message-Id:Date; b=P2IAvkeXFkH1xDfxt46zOjyNEnznLagZdqRjQQ0XsQY0HoQ9+kHxXgS7nStZPWvLOxBVYAPa1UqydQvgHdNkmphPCFG6WvuC3oxxXzjVZkfGBAXvhabEudYbn4dfSzR5ZOXHA9W4sjehvxe8qLAOOhZvbPFHkn7WqTyf1qIfZVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0ee+Hqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0ee+Hqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0975C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784843433;
	bh=9WcsE2dAhqo5lcxFNrPPfYz02UFpssmQqPJlVExafME=;
	h=To:Subject:From:Date:From;
	b=s0ee+HqyIN14HU8ZtWJfULvvJ2yF2oX3TtcGOVfh5N3hCB7RB/x4jrbTwX7TM1XBk
	 1pjAtO7BPHB/+WiNrnR8xD6T5ej+mFOOybM8zDzEXb4hN/74Er2C3rl/MRyXgwi68O
	 BvuEDaYK54etHe2l7rd5yG0PTXlNe/3Z2of+X/lkUoLbt2bJ+FJ0TshAHISgcaSDt+
	 ssS3fzXfjlgdbXmXR+Z8rWj0xUh45xHTVkZuUxOAqoRTBDuB88U9ojIcY9jlT5dJ3h
	 zyUqAj5UN9Pq8UMGfdio9SI4qV3aktLFtSzjCOOz8OVorU0OUPZRrT/ZVqnfRv+TGb
	 ++PnvU5Q6xL4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFCFC531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484343368.10613.3571846204420201957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7f2c7ac0c8ffa84fbdfdd316394fe3f999dd77cba4ba7a5ea880fcbc0342b6
Date: Thu, 23 Jul 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784843433
