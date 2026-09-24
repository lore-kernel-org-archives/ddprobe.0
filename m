Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D3C4A2A64
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790264434; cv=none; b=ojCXAZhgdrINaaRRiKndKVTdwJB+YZNIYv+kXt2ilozvp11XbOg17mFhNCEkxExD/0DBk3GUyA4qht+Ap78MrShOh3+jeDAABSR5AyLF0P0fjpiH7AysbjEIwYdZTj1kF2x/X7PR3iMcmrB8ZKoCB0WXYvtuS3y9PT1aafaN16k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790264434; c=relaxed/simple;
	bh=suEBwHXkSYWZiB4hjph48B5iAQg+Ty4W9gtnNbg7XMc=;
	h=To:Subject:From:Message-Id:Date; b=sYYUHbYp4xh5XKLRWEibU74phGehyAnpacImjxpWPQEakQ8SB4c0Jx+ZLpjMYytrlIv4OCmBvysdD90gbGQNap1ns6tM9sCHL8x7nNUGbTfRxX77T2Boh3bLSlNUsy6klxf2btTGoCGAcP8CD/BWhWn8NjB0gFmKrEyqPrrS/E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdlZaD+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdlZaD+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29E7C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790264433;
	bh=suEBwHXkSYWZiB4hjph48B5iAQg+Ty4W9gtnNbg7XMc=;
	h=To:Subject:From:Date:From;
	b=SdlZaD+VFKVtKuxKQ2OqE8sW23HwHUufQrmLiYj/UihmJkDyrQPT7+RVP4NYWwLhr
	 f18cSfpehBTG+gW2FF4FxatcIRIWAxLzHAmTlCe8q0YsgL5d8YClhuFeICs3d7g8hJ
	 8MKW+SJjI2XFy/oqjoUEroy9yaY/CetiMIwfl1jGos5AkLBf7ILbUaReJvNjwwr0qX
	 QRJEKCjmhFhwm2oAklyMw1k47XdpINJ+m/RnkEHC35930NXdcMS5ytKfQmJ0yAcQ/+
	 g/5wnQ+RWZddcv0V+SCxjNO8oot6hTXiAHyar2XAe6dQup7EvgNVx5zAegrrIqC45M
	 JUgQFtZb8itKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7A8C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026443369.18982.18319643600066675264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40d07ad885004637824551aa3a5b6cebac1f9970ed8b4a666f139a009b96332
Date: Thu, 24 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790264433
