Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5992737EE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751383794; cv=none; b=pGFZana7MxtV7n+jK9+QzpyydENTgUxs+l5lZ/8fBC+3hgNkqGMmwy2nFubSvFzJQe6JqDQoDZfl8jHyQaWoUSw8u6pButQwhacH2+dmKtZFOINgSNj9CEI3UXaO2UiFu0W3UcNdsfDvBVXnOwRKjOyULqM9EmsE83tpmpEDuEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751383794; c=relaxed/simple;
	bh=T7Q4yYB7xVL63Raq9UlO/eb49IJ/P0x4G1QjcxpEghs=;
	h=To:Subject:From:Message-Id:Date; b=jX635FoUCNpE0TjNlJWSk4UceFou2vvXhq12h4sSHb5dKsJRejtrxc7JlkPePAtFILx6DBOtZBotjX4aeIA2idzyjR88LOyUD9HlorDPiXTjDuS5+I+GZ7qwlS533rNuM6mfAKN3CSLSDHcmYL75nbV+pzK7vbhBN3k9+1RbdXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1THGlOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1THGlOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A090CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751383793;
	bh=T7Q4yYB7xVL63Raq9UlO/eb49IJ/P0x4G1QjcxpEghs=;
	h=To:Subject:From:Date:From;
	b=m1THGlOkFanl6bwzCsxL/WgUBUny0PP6RRyEWb4VNaajyVtVFiPRV7JU9AumOelUF
	 ZUm/4us3pSWxk1i8ro5LmFHQUc67n5ht2+QrOsg6WlCIrPPLE3WngJqq/TUcGyOx41
	 hl9fGcyezHLlS36iVdTXd5fTbFPEhcS9+maT+1PS3I30Yv9uvKcVujrV7Y/K0Ey6kG
	 /FxQp/Wf0to2ab9wxBimw1uGLTXv2tMIcGQPV/MGmMQxwUCzRma9u0UQtGfoOjwOm1
	 Srqhf2H8pAZ39a/P3w5E1IwOSIepLVRIejjUXcSKxvOB7QcL2xXf3gwsvObrEk/6C6
	 HHH8l2VxwG+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E98BC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138379357.15124.1000565370821896527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de69d3affa7e057c6a602a689294d433940b955d59c9967ed5d16d3670b3dfc
Date: Tue, 01 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751383793
