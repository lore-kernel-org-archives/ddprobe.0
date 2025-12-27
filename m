Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF078821
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766814834; cv=none; b=dWxIxWxkMuhcCfGzaZoArdyWo6d2lgT8scSMQaWgEtMIoAB62zgUxKzt8frYF6B0FldKFZjrrNC4f/1/ERYFM1jN4yLb0s2Q+Y2rWzf061okqJs6fqUwaJQqcKx2F88OmNuXKNrBzNPS5SxG+QQ9NOnHnlVAJ32kfRezFUQrQMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766814834; c=relaxed/simple;
	bh=6wk0egnLmit50ysuwJSiyreaUT26acuKTrYG4rcvo8Y=;
	h=To:Subject:From:Message-Id:Date; b=oFhIc7otLOvXq9sf2LVxUXfYPVydTQBYvgMT1Cf9JEa8LzDCzv3OqWISzZSGAQLB49Duqlci4BDKbvahnfB94fhntQ4u7aM5+WytTQPaEUnRjrnMO/ASzgw5Ix2mUI/nrHRRXVp++eqO9g75xjLclXtxvRu34Qu4Oxf+2O1G8ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoVdUYW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoVdUYW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C73C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766814833;
	bh=6wk0egnLmit50ysuwJSiyreaUT26acuKTrYG4rcvo8Y=;
	h=To:Subject:From:Date:From;
	b=uoVdUYW3bc6LJVGLop2j5+1lInC5Bz7isFnJuBP2l6FYh92ugLoPOAAfFMxbr71X4
	 CP1iyLPMeVAd+uylwI8AjC4uAzsypw19L8W0gmn0unnWcm8kzX1E5teSP2P4woxODS
	 QORpG3b1zLWczP7Gn2y0m2mPaB+2kqC8auYJwG7rtCOuwmAc/GT0fIxcq4sZmEc4y8
	 QoEtPPKajUHlCCUwHENTS1dEV2Ano07SNSOND0OP9pjvqW9geKDaCTuuy0rvu5G8++
	 XCfXItd3KdZnIGu2gmJRWrWTqUhpYnD+6uIQlHuU12ZsOT0zFPJsg3SaU3AhKSZRDA
	 bZD4joAGJ8COg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973FCE8FDC6
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681483358.2380.10480981834665536003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ccdb1110405a24431e98743cd0b7d275fd05372881c66ca21773753320b541
Date: Sat, 27 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766814833
