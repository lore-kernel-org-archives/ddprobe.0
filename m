Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAE88632C
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743340194; cv=none; b=BmcqcNtrjgNQW9wbw+FpPIGicImAPYYi/I3Ka8rs3gdNyWv3bYRsFOON1juzLIK8NEP0OAH5km6uxkI3HMrMbqlRuiq81aPVIPZ4qri6OGTn9AhEfOX3JMUjf9PDhMvIQ+oMyfjlGbEXIxGw6sWM0aanGv0Zbsabp/tRzuN38iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743340194; c=relaxed/simple;
	bh=uUZzbxlBh8NQ2ADE9EJd3Zg1ndF1vVgVH85Q0F4Suq8=;
	h=To:Subject:From:Message-Id:Date; b=EmF5kue48xhz98Da50BgPlLSAJjUggqfvkXsl5O2OunUckriRa5lx1fgjgobKypPc+hL8QRN6zAM2PFWUOZgPYfIKMi46koKBfxF+G0cqWAnlAPBJMUmBfDS/DSuM8E7/2KsLFtzARKF+9bhnyB2f3ze9fGcdF1n6QzLNCtyS3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAkuydmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAkuydmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23EAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743340193;
	bh=uUZzbxlBh8NQ2ADE9EJd3Zg1ndF1vVgVH85Q0F4Suq8=;
	h=To:Subject:From:Date:From;
	b=VAkuydmPIshsrGyN921zLvaZpU8ub24lU/0iDIC30GJssWpeynGvQCqX+KTDZcAde
	 pWc6zIgeKamgNWnsm8yWc6LtvLNbqGlBoxktcOOgJM3nwiVLFUiHSLpGDza5+So3R+
	 p/28AYDZRLXmU+4CJ0NQKp0/JmOU1U61bjvRdsHc2RNDcChPcFf/9yd0Phd9XxYjwI
	 ZaBhGAZlipfz5cy85blbUnbWjgf49LKNxNXFXk0Krc65CIZLeAU5AMwKZa5Fw5Wkxc
	 JkqQ+ySYY0yh370hJcvQMP/Aq00tzMWLg9wcdJQy3RBqCfBS7N5t9x2RV2c0f86G5z
	 /JFVeLnM36kSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61C0C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174334019362.25253.5625384453329852401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97c16e690c2f734927e14766fbdcad2bd3556f185d3920bb708153883b79b73
Date: Sun, 30 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743340193
