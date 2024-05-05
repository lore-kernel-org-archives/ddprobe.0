Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC79566A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714894943; cv=none; b=PqL/SFntm8MCXQby9Em4yFWQwctVyXRwa72yza6B4xKOLtmbIOIzHRz0ll5L82eeiItMTfUMKKZU8wlBxHilyM0JeJe8Mz6tSOAs6LwaWZVf9OBryN4l5QFcMW42bseo95G9pVCzoGuoUydT8FQoCfom03XqFs0t9lqBVJBhkGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714894943; c=relaxed/simple;
	bh=6ZNSnloFj1DNoLNhxpe+EEokMBsI/fXsN54gex5L1Vo=;
	h=To:Subject:From:Message-Id:Date; b=mVq/HEHewY3qszzirisAY6WzflRTl2IQgXqTN1FqjLhpHl//wfGJVV/xgpRC2b2MxNJsiDDPEEHvFBkCYWY0DTnPCAhtOQKCKegWT1KVV5Cm2M0PZ6KjagmrucElCbOCf+bNfAtgkKgrdTp145VFG5nHuj03SlHzONLPs4tdaoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V07kjUwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V07kjUwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFDDC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714894942;
	bh=6ZNSnloFj1DNoLNhxpe+EEokMBsI/fXsN54gex5L1Vo=;
	h=To:Subject:From:Date:From;
	b=V07kjUwd0kgAsaDZVk22+vy+HOoT9fuoWxm/+YNA85RkYQPZj0d1bweFron2mYBud
	 quPWKC1Qaony4U+zLmZ0HwKaYouQ0djOIfPuz6lHZZ/VmanGz6NelNSmGapKdXwK0o
	 ei78JSX9YL3aCiJKp4rM+bZWNRNREmkpi9Hthx47sQE5gNzZtA2Kepy/TexiGHtFN0
	 VwGVcnjtZEJqlxGbeObOaUR0fEd2kIaeVpQeLPQiGePF44Rld7rTTaaFQUgv+hcd4y
	 xcwi/Swd1DcQSJsOZZ8QDZsEQDGlqQXv8EQ8EMm0yXFUYsKpK7X2j6S52xKr1AiD2H
	 Q5EvL2e71qwmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE68C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171489494276.15106.9504980990678061485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25f6a98ee6223bedd57128d2ba01ace1fad670389a880250eed31edaf2d010b
Date: Sun, 05 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714894942
