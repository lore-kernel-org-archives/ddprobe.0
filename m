Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8102E403
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762081794; cv=none; b=e9i2a+tT9uZ5Y7WgH09QcMVGtv6bfN1TjXFhiWz4FvByVzmUyr/xbXi3UZryBJtMNSty56Wih49GIWs9mIgKHQNi/74pkCiZUYJu0pWuNbUVDfUqVSxMhSmLrMHXwkP+KVoD4P9qpcF4werIMtstIHGAfgwNbqixBoM3BF2Di78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762081794; c=relaxed/simple;
	bh=v5qijOtQ26A1NdQRHDuMRaA4oV3fhVkrIpxSd5mlVFo=;
	h=To:Subject:From:Message-Id:Date; b=c8IGdyAggaN4caLv4wm4ImI0xjGdkeJJoxuX/CD5CVBZrlHj6CR17dOl13j+Phb9X1y8wV37VSMPa4fso7K8YR1plOUBnxeZLncK5t1dWNHya0LFxtaAbKlcL4e9wVsHzMMjkXfn3Tik20OD0O1twoINcqShZz0z6HOxdy+u6Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgJq4kqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgJq4kqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C548BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762081793;
	bh=v5qijOtQ26A1NdQRHDuMRaA4oV3fhVkrIpxSd5mlVFo=;
	h=To:Subject:From:Date:From;
	b=hgJq4kqFC6wlzqlzVJJgetrW7MVYEqDiomEjn7gzXy2r6bmACr9fFzm9HGsxIdLWI
	 6F4ft47O99mJlOiqf6xE+LmQ8OvyTXwMCAOrgTzy0SNag1L11WAvSMgZobPgouS1RD
	 VxfZdx5Oyq5ldJUZ4G1vW1XXEYny2viRdti8qo42vFma3M2taWPWPa+L82+w4G81Yq
	 m+A5SEFhvVsglPPrxMovQ5tJiMB8w2rjDcKg8DG6+CCKWkkM6rutLFhcJ/kQfr71co
	 X5DDLi2Z9HZ9t7ijL66k3WSeb3NO7P8ylYrT0EYmaPbJDaT3D7WLaxQc2/HORi5YLU
	 giSxFZ+cbWG0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26C2CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176208179362.9359.6422492215498784347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4406e349e84d8923646fd528e66ce53a1c69018c0b4f7d1612a3bab7c97a5a
Date: Sun, 02 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762081793
