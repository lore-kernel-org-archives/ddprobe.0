Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2593F3815E8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781955394; cv=none; b=g3gtDbIqoZyuXR62u1ngZQMRYC8zOHIE3X0hlzgsN/7zRNno7Zf6GqtHhk5hFF06+ooElUVYXB7M2z3caN4wHtcIqapwlvBIB+L8fI3s1lrgKiwVEeXF/5n7eeq4LiT0JH6QD2CphHN4Tl1BIiiAyLQegg7ezaMOzHFQhXwtsww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781955394; c=relaxed/simple;
	bh=ugL0XdrOQcSKceq7kaSutMuQwLGJ6TqjyzGD3YiZjQI=;
	h=To:Subject:From:Message-Id:Date; b=O1sq8nNpBIqN7L0t453Bm7qLUJcqDoX7Iv8AH4i/Olmloyii2ZJH53x2bSPjUPIyCf9enq7LvGcK6Lvk/hPVGq2shxXgXqS+51yWSWPYJoziL7VvI1BK7itLUYYUrR8H9J2XxppmTepI3CkcSN6yV8xQzpN6wvZWMJLkQE0dSzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDFmxNh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDFmxNh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FF4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781955393;
	bh=ugL0XdrOQcSKceq7kaSutMuQwLGJ6TqjyzGD3YiZjQI=;
	h=To:Subject:From:Date:From;
	b=ZDFmxNh11EoGdFJTiqHLpKJVYtq6o+OZjn89iuzQ5xUfWk5gDzarmMEGX6yFg5NtA
	 Y1nAe+10gnihf9Jg+F/Vg15bxMVIm6QZRAnEYW7805na+7/RvHpXkrYKt8MbIUVNU+
	 tdUUeqJv6YV3i7OJ8LuS7A7HhVm6W5XowosNvtYa1K/ogTc8AtJX0koOZJDYupiUH2
	 vV2tqrGe70EkQl/k00lw54HKfhgO1vcm7cP77+bVitFUGLN9DwKZ4pTC9BtR6fQXb6
	 h+ATiXi6yUA1HEHZSST+hCoqaofG9ykitnsrGPQNgsje2OaUUsby9tZs4BYyw4LS3O
	 L0xQkNIvz9WPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBD1CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195539377.25132.1862353477425665928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b66c850b81ec6b27a19d5585e8cd86a903c27f8454be9b9cb62e34de772300c
Date: Sat, 20 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781955393
