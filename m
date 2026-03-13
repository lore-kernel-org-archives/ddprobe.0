Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA7B332917
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773383694; cv=none; b=CxgNJ2CluPEA/JRj3U77tVJO4WM+U3WMzYtdiKh93Vd5ACHEEXmEmHCiPkHWv8gCxB0KkrCm79g5SXbBS80uB5blbFvAd/6M7htSwGfQWvWYcdu4uXhF9tD3sDwouIqO76FVnpHe370v+Ig5BWYSfjiJr3Xem1uggdglmqf2mAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773383694; c=relaxed/simple;
	bh=8U2yDAztZAty2imtgRQwuejtrVl33e5GHHKvhaVEp+g=;
	h=To:Subject:From:Message-Id:Date; b=UJnEedW9ncClJGrrVKpf0L4Y4zPJeAtC9vgI3LqDyJxjjA1Q7untty1ticBOwv1UPOIKGsrM9tDzLlt93ibIGatKQ2guq6sWIsrsxx9ErcKVPlnR4vI2qJ/uW4DY0HUYM98vVe6DfoHUCr5NfBDKB1xdM+blTDGigUrZdgkVZls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxF23od2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxF23od2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4496C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773383693;
	bh=8U2yDAztZAty2imtgRQwuejtrVl33e5GHHKvhaVEp+g=;
	h=To:Subject:From:Date:From;
	b=BxF23od2O9i7SekGhMjT3/n2ywyMV5iDDYfuNOVjwvVYrO6OIewjwn0EDxKSEuouB
	 xhL0Hq6/FDOwbhrYF/Q8b5e9K+KKnRdYXRayFbRDccakbL7uic5yA2+E+FBn1yuTYp
	 slwARpXfx6mlnBiM+7KCOeCGMcrh+uFf45+vLDH0W9OU+Aa6e6MotONdYWe/tNw1n8
	 NzYIZjDw5gQC719e/hrcu2Qve80LQRg7BXgYGWcyblLkg9+IrVlkLDqqljNf+KGING
	 30Gl3KCSgDTsxT0qFeMilURip3ivUi7ssAPkLGWJxGXbUfwRrOf66ktxK4RehNDBYX
	 C+TjhJ51l38Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018F106FD87
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338369358.5069.2704438422061546821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f0ee489eefc927081abc28fda9e11ac7644758dcaa452ed37733f037f92247
Date: Fri, 13 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773383693
