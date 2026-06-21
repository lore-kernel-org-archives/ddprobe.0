Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98501275B15
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782032794; cv=none; b=rjW91tQsBsJ4WqK/rfE6+7OcPpzNGGWQBWBldK1LBBq4t5LSuEFO8XRMlbRgRQVu8NW1sFft7lO+LNZSd+cR1eDkkNNwf1J3zmYj6o42+0wf/9maZZe7QBRGO+B7o16WbDAmuDPYXn/0CrLIkYcAMU1BL9Qj0WUMHVAZsrs5vto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782032794; c=relaxed/simple;
	bh=cE5N9/v9U1ddgrLj2E0QvsFeXag8N/BLRb9T50GMY48=;
	h=To:Subject:From:Message-Id:Date; b=UrkYVnaf8/jyyfZFWH2FwgT19P1Ulk+SM83UGRFsmQzWjxUt6iKDfExnynLvrMgZ1gYYYg9y5kAHb4gzwc90TfFl+cS0X+1q/S7lYKmIF56CDHjrupu1FiwLKjWpJum0C3HUUsf9VyQYY4P+eBWtSqlm3+Dd8+N+6S1IWahqqWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOSKjxUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOSKjxUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D4DC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782032793;
	bh=cE5N9/v9U1ddgrLj2E0QvsFeXag8N/BLRb9T50GMY48=;
	h=To:Subject:From:Date:From;
	b=UOSKjxUKiL/yVNzTMGMLjY6UQFqQ0vJHYtjycd8tsEkFiToz37tl4IXb9jBJN9/q0
	 ny7IcAiBPd9lIB7kaKPzOMDPbpK1KIGclO7oDuYOyoJRKS7Ngm9B9W9/IoJ8TR+BuF
	 qbnN26zmly0hBfjwdBJFB7mVut12dMC3Smaj78Qq8rkGlZM7VuWBZQbFnZpC5rV+lY
	 eVjUrmNzMSQ/0VLhYaI2ytYLQ+WnIEwj+Wv2E8/8T0qXBpbKRSCEBNiDofMoINnG9z
	 5Lqok+4IjLf9cfNFxu6BjUS6ESg4/IKu3dY+ZsldtOuIxf7yUlUFnTdIYHRjQVn/q2
	 wvISQUy9Eq0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC540CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203279369.24289.7922513586593548548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c7ea266c56ded397d9ac3c5449530144e82fa4c5c40936ab5c30f02701ef4a
Date: Sun, 21 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782032793
