Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D15B1BDCF
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726415754; cv=none; b=bA+gBu/zxgpOQmvUOjWtqv/rgRjuPhNJFrFnTI//sH5uVwC1qWJh0BdwiicPX1LlU9nXBvWuHsQ+rPdKKXipr0Kz2W04I5VcuQ3w1gkOMcSNJD+sEO5Bx0LBZliX3iNlSDW1H1/RYo9XXxSWhVdOjTHrrKAWMXXkVPWCyYGoTAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726415754; c=relaxed/simple;
	bh=dngTJwntaWt00jTpUGdPT2JKNIlCnQTKto/GyBVfMaA=;
	h=To:Subject:From:Message-Id:Date; b=jiV7THj6z5QRI43BS6rjXdkN2s9Dv64osJAQfEcezZjfoaPI3YXk3TK0bM+kYo0BOv+QPzLpBQfg9hHpe+Q7Za2PfIkEAr1bI01DAdk69gt9Y2KkkYka9tETMrAkuYXtVO/GWqp9Ohs/Wx4ROCwZnb2GMev0PuQb26eEnPrlCDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvKoGbG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvKoGbG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05EFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726415753;
	bh=dngTJwntaWt00jTpUGdPT2JKNIlCnQTKto/GyBVfMaA=;
	h=To:Subject:From:Date:From;
	b=TvKoGbG72p1saQjSN7HbjOBEECRUK/sRGBQe75TaUKsETFTd2mihKu8K6Vex+Qbve
	 x5uLwDQxk+BonKRmuKQY5qIgIyiLx8nrKxdNn7jjw6XoIdd7xO+yvVcQgT9MUaX7cy
	 obuT5QvOd0S+OVL9VEE59Mk5W9tiTCYu37h5k8AdLxOsMhgz9rXDZvD+dNHrlkdidL
	 I+1Bl3VxkLTqz6AjxAlL3122oU41D1oVDd7ddxVUlAqrNWbDcQ4eMCyM7czOUoZrDQ
	 rEKxjXpp7DQ7m41QeiU3LEjTi8puqN8TWeAqVCPViq6pnTFR04iiKOZW9OHYzsj0vO
	 odMUUI+m8j69Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D728C3ABA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641575360.1558.1651171229630720807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc50bd619c1c7e7030eb6c2ce23e3aaf880f9b13dd23b0a6bae3e1e0c7986483
Date: Sun, 15 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726415753
