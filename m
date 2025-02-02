Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477E3535DC
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738495554; cv=none; b=hfKlu92eKLn8FW0z+q73z1GrG1shtRJjc02YhC88Dm+qvDSzikgQOmu/0Sl/U0V728hxUXte68cB3zYK6tkarrBhly2ALoZZiDvtOz0KkWy6TPquMaY2izS/4v4iYUbj5J7R7Ez3UUhuULEam2oDMNg1cz3IyXRA1Cof6jpyTA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738495554; c=relaxed/simple;
	bh=ef9x58wb/N3eHDQ5H31rymriEjWwVHm4vC0TGMxjo/U=;
	h=To:Subject:From:Message-Id:Date; b=ZHcaDR+YDTGJ363jh9qkNOFP96+PvhwlNrK4S0YXFMV4CjfYctttN3pfogD0yPZC44mmDRrg8fzGLrvNrVT5uX8nkmNJz2KhAo3WSXccrNvnWnAlp+I1cbWBZhuavH6LkLYanUJXvUOrwwbH8trwcfZA5M0WPYGz7aBJdwNTlJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKxmfFvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKxmfFvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB29CC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738495553;
	bh=ef9x58wb/N3eHDQ5H31rymriEjWwVHm4vC0TGMxjo/U=;
	h=To:Subject:From:Date:From;
	b=vKxmfFvMNghuIz9pMvkC3VJs88HlbrowkVIPWS6OyVP55O0zTNPcE/50mTlHjrVBE
	 VsJwVMjb2qhih0ARAKWV88FH0VekfxcwclP3ys1A6Kp0NtuJO7hQ3WQgickBWKKHIJ
	 4WNUTHnxrtqmOqa/3RWno6N7tkz4oy4o4gprgs+XP5Ww0X1Mjac2OCy9NB5+GDDRfJ
	 5Rs+2/ng1o2Dlnycf/3SvB7W5j0HPiDBgxvX52bAyKgpcJff39vl8YmMQCWxPzC/Bv
	 rfgp9WQRyNpeKCfPdHfUJL9xob852HNgMo21DZBV1z67Szc8TTqqU7uZ0e+ZHWgXuQ
	 vddMAXqyHGXjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C939C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849555359.5326.356507200964176268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4f8cea581ff866b4198c6b6ed1de803da5978bb8033dab36f37e703878ce1d
Date: Sun, 02 Feb 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738495553
