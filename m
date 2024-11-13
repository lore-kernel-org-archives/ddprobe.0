Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9752309AE
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731476754; cv=none; b=Wvuuh8U5Du1vBf5HDNyOci3OiKeIhk2d6QBirRK9W++TTRK/V6zgOJhYVYZ5YHTCNdWYtrW4kYHCVSoL4eBZg2RarF9TUpDYbk3mKOWngtKSuuhso8gQlb0CNpy0/wyIBsi8Umldg6KXX+Dtyl/yW//lMdZnzxZ0ajLyWsoTKYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731476754; c=relaxed/simple;
	bh=hcLwDiIiaAvuhpIGkG0rF2TVVypbvmgOaf7z695IG0Y=;
	h=To:Subject:From:Message-Id:Date; b=oDTmsTJMpuJMYzqMydbfykZ7yfxozeMxFAkAyBCukp4POtTLa3xS5togK8gxyR0RoEXBVEY4lRMY22pUCGRnhgF130cuEfSVVTjxytS0XiTweKciq9vfbJRi0E/JF04pktJHEnWcFGW1ShYulpGvo8VPQ5lZk7LSCqReOVViMU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFYxyDai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFYxyDai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C249FC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731476753;
	bh=hcLwDiIiaAvuhpIGkG0rF2TVVypbvmgOaf7z695IG0Y=;
	h=To:Subject:From:Date:From;
	b=hFYxyDaiQG1/9vEqrFr1WjX+mnx1gmvNeT7/Gek5ZCvjkq42hRrYW9sQATm/4OVuv
	 e2HqZH3HLB2wJKpoAqfNIHdCZGiftl8WBC5Q3KQkXsxkptVNANMM6tzu2NVzWWqgmX
	 IP+pj8+2mSwyWds8WHYk54dB5RPE1xS0j9jgqaBSpDOQSRACtnPn7ZflVxb1bjRg8r
	 7qCtJ3TZUaeSHMzmbmrOOviZuDc7KtyV31A/PmTOyzDjB/7TQhEO0ck6HgDglir+TD
	 6YeDxslevkBhFQRrDUdNpPogv+ZVrUbFsjPYj5IXBB+IlvtYzigVNjgTqaQv1dKWtv
	 kYxUObDtr9sRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8F0D41C00
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173147675369.26436.1922673639357018196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c99ff24196ceee0a2c4604f5ab2377bb7777a0b19a21291cff8ff6e0ab1c98
Date: Wed, 13 Nov 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731476753
