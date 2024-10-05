Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F51BE6C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728161154; cv=none; b=kuEb8p1/ldStO7uVnz6lj6Q8yymPtJWC9i/kfCATuF16ncuyMa9m4nnpQGrjMP0gBpU+P5ZLxHIIvQCMCx5vLo5+mOcc9ly0HQ4FtMXubrq6biNUZ2TB5aGXvEScEnr8tFeoMfRyE/wOXtTn5foJ67h8XxS29feQwzrfNxX6/JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728161154; c=relaxed/simple;
	bh=YihYBa1vcBl6RC9d7rkf3bZeYUtBon5bGIMmVXVLpy8=;
	h=To:Subject:From:Message-Id:Date; b=DCNWZSpSHh+PiEUQjkjbPO3wSJtPYiolDhTThteHqeOZFufzfv/Chq97nbldwW/I32RiX3tY1aTH9Hfaq+14JzN0zBfVPZNyUUlS68STaH+v5AlBwqBy5HJWDyLhW/HTe7lS3B6ajKR/N9xPx0jRjp6fkUudQYpslL801tPWIuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riziE3hN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riziE3hN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39CBC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728161153;
	bh=YihYBa1vcBl6RC9d7rkf3bZeYUtBon5bGIMmVXVLpy8=;
	h=To:Subject:From:Date:From;
	b=riziE3hNq94z2CwqUJHPFzl+Vn1id+YRuMoL1tp7QyjeDxpjKv24wcfnQCv8+dJAO
	 wwEGuIL2GLYqDbvI3ADxUwhVkkAfSssSQFkWZETMCNd9GMQYMOnYXxRrJ5pIZw80pM
	 IOHJ3HpMo6m0j/JJsqIi8osL1s1O8B8MXRwoA5/ux26nARuqTwHsJ97O6It4OXbMGN
	 l+tnKWv0pqxUuCRFM2UdT3pWgp9RsU8eK+g1bRx6EIq1pgnWLGh55qd6RlyjIv9Hr4
	 hkknLd7snWvOLgO2fHSLMkRfr5MsTnVdZjewFd54k2FEHS1+4mXRA2X7MGJKNcBoaF
	 H+IZWbs8H/3Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A053BCFB43C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816115361.21319.7829249286423175413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bef43cf78ed25b85501b23405ca468eab03d846dc6a74b5a23532854b6e51e
Date: Sat, 05 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728161153
