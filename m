Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F8A2EDD50
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763024994; cv=none; b=LuVu3+KrVGFU6YJ/hJ0rvY/7IWMrHsd6uHyvopRa/kbV/ng2ukrq9T/rN4UYlD1soOPMWxqYHO5ht4q27A7aOmMtPX7VWpRU6nlJs1Zq87DCOVN9P/zbp+pVATNrMz6jFFBmfitcezU9bcxxe7B4P4EPxapYHg37YHDK999A9/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763024994; c=relaxed/simple;
	bh=cUqSevEYKKIxx8DW5q0b3hnORqWeSC9Q79Rs/donBac=;
	h=To:Subject:From:Message-Id:Date; b=LbIcOZHuw6JJl4pwewholpLj6ubfGDX/B14xKBF0KI8WfKw7VN8peYD2S3JL4pCyzN98qmd9eNfmP3xrAFhJYDAwqzYjPRayGNUcjkaz5qMXZIiZbI/P8VXGsQZaTVoDnwMmCcw2w771lmnM7wapAqu0XZotpadOXe9McIs44l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iob7jrWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iob7jrWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBAAC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763024993;
	bh=cUqSevEYKKIxx8DW5q0b3hnORqWeSC9Q79Rs/donBac=;
	h=To:Subject:From:Date:From;
	b=Iob7jrWGUC3rG03d62Urqwgcjoo2U+M62Lu9LAqoXNolSMIXNrGcFuWfIN/UHTUci
	 uSo7SQjCpIOraKAmp5DmGijy5Vpgq/Pp+aUZx6UYik53SfoVFoSjKHIRxZPiHveniy
	 apIBGQove52sd3k0qOxvZoWV5xBzLahYdoa/aGTQMWa7wQjfrsSbpf60Mq17ov1hYf
	 2l2EV1L/niuElHKszOkWFltV3sya431XSomROSnNS9VJCcg6yFHNGH8jpsECthzHgu
	 mqkqsowSfj9MEKxGcXAsdc7obGLf/fqvNdTtj6Klmj6M3ivGYFTDoL7wjLXvmwpnZ4
	 dW3ZUz5Ulhzzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9E8CD5BA0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302499359.10933.10947275027517128404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f0c6f9e36cd683cf93fac8d4e825958eec5174d78aa661e1e3590cd3ac0032
Date: Thu, 13 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763024993
