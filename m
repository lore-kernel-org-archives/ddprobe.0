Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD2E30FC32
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769011433; cv=none; b=bsXBFGLd3mjMsomNdFkZYhsUPBUXr9gRh4Tej6eGMK+VirvoV1y71nM3WFC45FOH3bZbPMc/HNQre5FSYVI7jeYdWUZ0P3XX90D6GbyTSpH8vmR3qwMQz8sRAF44rtprunrlpUTT/exe2llH/stPCGCNPJRbj8WOzGm1NOhSCYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769011433; c=relaxed/simple;
	bh=DRH4DKQXbuo2lk9Uk8adjiv4f7zFCBJVaJiWyFhdRcw=;
	h=To:Subject:From:Message-Id:Date; b=lElPkBPEbgyD4Jfl7TNT5hvFoToCyywFUFUvo/gzC4hhqp1362Tv8xonMNTEs2KgvFZ1HxOzlkmk09yQpjxliKlBqcMh7PvEC3FYiM56RTuA1ZG3Tw2DvXP4Ruvd4SPXMQ7SMx0ep86uWLly+7UlF5JLwKLmSBdvy7AKTb7PKmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWMfibgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWMfibgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E985C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769011433;
	bh=DRH4DKQXbuo2lk9Uk8adjiv4f7zFCBJVaJiWyFhdRcw=;
	h=To:Subject:From:Date:From;
	b=jWMfibglqvTnlGtOBjM7nNmFh5grsZg1Yjt4zAqkUM0Y7owA7oHNBTmPLqXIwJ+z8
	 5K6U+WWBHWudZBJmPWowsE9PlGiVi5m37BG4DNogKwUi+k7o3dHeWoARsLA6inAkTg
	 VwllznGq6Wu6Q63QJJimk5CFYgbvfzDWKoO6BYkteSgt7i8ErCsiw2SpzYLu7LWjB0
	 C/zoQyx2909L506FtoaLTLFx/5e31hAs1oElVnhDgCBFN6t2S33IPOpzOWCncx8vc0
	 YljDIes/8joXYnW4XyNg+7w7/X2wjfbHmmjEfRpu0cYmawgootk5of9cY8TVUH/C5R
	 0qIUT26ZDoyZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF2C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901143358.18002.4478111449347220244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956eea252748ce3422ece18f7bece44e0585fe39d5b7cbf7c25606cd0b1ced99
Date: Wed, 21 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769011433
