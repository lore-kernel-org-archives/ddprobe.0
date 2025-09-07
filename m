Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4221A0728
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757215195; cv=none; b=LOkVZzvapk1IVlhuH8gmN/shESZPKZ1LiXbV2jT7/FvbCpwVvcG5qL/nu5LakRnDt32KiVR1ThLJEfEuz4WI6cN9tqkQ6Hrj/+ZN9aFDoJxInFXxaN1t3AoVJBNTFN9QBa2Sjyx6YrsVFj3szgvjRcpau7TqUkAmE9KcjPUSHQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757215195; c=relaxed/simple;
	bh=1v52L+WM4tMKOUuHTTTY5/7ZEahkP9x9DllGp4ustOc=;
	h=To:Subject:From:Message-Id:Date; b=uMn3vA8gBO1aoaQJ4u8ce7rF2iBb1X8XbYDziK4Oirl7GvepgFwhvsh+g02XScY9yO8AsVUdfUDRIvxPoJj2dlNASz27tlrU3Lm52XI+7CWgR5TLNn4+k/JmZQIbplx37mFgLWQBFQ8kXIqXu7eueZIAAYLovPODuD5sVPPAkws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rc6NHAs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rc6NHAs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26F4C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757215193;
	bh=1v52L+WM4tMKOUuHTTTY5/7ZEahkP9x9DllGp4ustOc=;
	h=To:Subject:From:Date:From;
	b=Rc6NHAs/NaHUs0r/+wKatLd+sqoPUXx1S/w+FveHHg0sYxK65X/5QU1Pxekq4sHCt
	 I4kLGMQ+ANyNE7OHasQWnqHt2d3SCuDsfWdNNW6HDJuS2qInwaQwmhG7K2TTi1hixO
	 IWx09Wj7ayG8nmZvcPN2god+OUB0m0eArBgMtoRI8+hUWNYfHO1TfDYk0OGsR4AnFb
	 64FY2MApZVnlPBvxAmPGnEKpwHN471r2SBfZT7U/KTiQ41+FuyNXF8lvL1aUP1Lt7w
	 W4nktdP2w0ShKFPpKf5TVU09Pz0h5dgeUS4xz7YiL2HjVdWQAL9CDmujVUKw5itvPS
	 +o9bxQoUCGN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9152FCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721519357.12030.1091968687746941567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b3e4cbcba39357cfb04f44f569dc9f249f5aeb345c3f6a09f0ad4d3158168ef
Date: Sun, 07 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757215193
