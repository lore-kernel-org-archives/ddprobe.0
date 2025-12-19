Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1336C2D47FF
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766123034; cv=none; b=LGahxg93eKIW0OxbzRX49a08/aEZqrwnHQadbBWN8IazeJi/r8HyjiPrjQuRvr2oc8PvKPNnHe0mnxf/6OmfyaSsHd0Zi0oYhYxBA4eOmrzqXUEzsXfx83gWaE0rFfXif8J3VJfe0iEb+LS6LmpQeBB01D5DRJDv9NJ5y2QI1dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766123034; c=relaxed/simple;
	bh=pU1qAGyEQ36IT+lcK6snBnQ852KnN0SNK4RrdHhVyq4=;
	h=To:Subject:From:Message-Id:Date; b=ND9gLvaxusm27Yy+xSvo0yE+hUKEOLgQRG8i3jIoBV7Wu2qvvi8l1/YM8eupLh1ikF2q4rIRAA1DQz2zZkfMcuTZos0bd1RSxLxO9xvrtzV4PxuoN5Sm63+ZNL7G4NNwsNt5wZkNdJNH+REG5KKeV2Ejz1aJe0cPTJJwkRaOynI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPbyQU20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPbyQU20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AB2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766123033;
	bh=pU1qAGyEQ36IT+lcK6snBnQ852KnN0SNK4RrdHhVyq4=;
	h=To:Subject:From:Date:From;
	b=PPbyQU20/FYV+3DjZKNCL7T5pnkOOdAtLb5rNRGxo1lS+yKKte3Llbgzu1JPEtX+8
	 UPBASRAUysoMxtsm5//103fzaApUfGVzXlHOCeNoiC2J64XEMA8jLSST+F4bKAZifC
	 gbmZjcbuv4lZcigBad9PkqR5+71XvEJLuW1ghP5KENJHdOAxCNYNYBYB7G9ctwPYrN
	 m0nA1UrpHOtXeOHlsMCID1BXp/bUOg0EuUwH8iF6Bp2szaNGRBD/SxT23cXRvNbI1n
	 cnscE1ankgkNZfK9viOYtk4ljdwcYNH6TQtzNFKLgIbIyNbdDFMdENytDXuZlna7BG
	 2AEfOFefVT1zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92324D74956
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612303358.18174.16457780974642484519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec05a04910e2bc707c5a42e78129cd8101733723bb4a176ea8ed0275db2d21ef
Date: Fri, 19 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766123033
