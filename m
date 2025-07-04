Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEFA238149
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751664594; cv=none; b=tXjWS6u1Inhcit1cAjhLreU/tD8hCMopZ+/ML5/VqOJCHwsi/mGQhGpQOTQ9uq7rQLGSWZiTanvflRGCf1A3VVzz3SbrzMgUjp1D/VTXhrTXTJfiuwgU+z3T87wrIxDv9A93dJM7QEeyRGKjCf9zxTT+P5lIsPziI+mOuYkzISI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751664594; c=relaxed/simple;
	bh=HqPe4ENJf38oY8IfFslpbrdt4iko8FxiMr4CjPXYxuY=;
	h=To:Subject:From:Message-Id:Date; b=ZN2D1iT/IxrbiniUuu5AqRlUPfpVBc9rJRxk53gMO6TKefgYQYQxTWPSfJOrGI4bxDpZEmkNKq300qPuO5N6VCuXae6LE/kSrvJdPI/TAj+Y8hEQfRpSB2+tbBgX1Un2BzVAeZQJAj0QJgh6237nXvmCLYqNhn89Jv79aThc28E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mH/ORXYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mH/ORXYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A656BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751664593;
	bh=HqPe4ENJf38oY8IfFslpbrdt4iko8FxiMr4CjPXYxuY=;
	h=To:Subject:From:Date:From;
	b=mH/ORXYc/DbZ6ED0rCdFTU9eiWa8Qyyh6p5hfFqgSUI/EgRlphpOnNdfnni3a3tZ3
	 mG0lTNph6sMvfMk25KsI7Gy8RYi8qP6xFCFREtqWF4uU6Bm+TNs/oalrfYa0zLkwmg
	 aj6eXdieNviCeLU9u40gsIHBvsOK82ja0HasEu3O5ibCAXUevgJZMRvLU8SeBBGJf3
	 XGAht58Kzf7sSpPGcS5NwcYM7SFkLeEjpZoBbZYwWVl1LBU9p8+w+/eHM6I2oynZ2j
	 ZHb69RLRjB9HVLuVgHlizOfMIXRoOWPV67NonXHhFAclcxYARoRP2wIbtiI3cYAc2T
	 +0E+FBLOiD5IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9145EC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166459357.3454.9516093308872162424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075c64d045de0d9a8e7e196d87a8f808d07850eee3925ef6af4a270965751a59
Date: Fri, 04 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751664593
