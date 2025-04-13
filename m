Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1F81A0711
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744565994; cv=none; b=bAMu468VfMt/gooE9beafjVzfkHUI9PSjy9TCMmX5QOcGy43vQJqXkcl0ipq6kSujhvE2IpwkK4oX4F2RNTigNPqkz+xf7c8Kf6KqNqeXL+QyulKt4O4iw/iHwHyHWmFNV68WNzA0Vf2asDnTqJosro2Bt2Fc65fqT2wuXvzyeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744565994; c=relaxed/simple;
	bh=UBXHYBlQjQnpihJe5roohuujUXXjLRtY0Kyyg4mZRhs=;
	h=To:Subject:From:Message-Id:Date; b=KbgrE4y0Z50MMO7OyZzYWCtaaKJlY42zvpYGNsExVCWGRnITcKQvRbbibyIzJZouYsaF/5THA+/RLhrVPwmd/IjKLDjOn0bzsiMCa7+Eig1MshwFf+ScsrSfYm/cJ8nG5nfFUdQ8dBvJr08ABHGahH0zGYbfQkUsZym0d3uj2p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UH5Ntvzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UH5Ntvzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98E4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744565993;
	bh=UBXHYBlQjQnpihJe5roohuujUXXjLRtY0Kyyg4mZRhs=;
	h=To:Subject:From:Date:From;
	b=UH5Ntvzy/7jI8yPdRCxHh/+ZLXIZQRotH++9ByVV/eyJ9OD5guIhw6mjJAMtsCv8Y
	 GJMupw43tYbx5nOsjyUuS+Gh2B7Km6O91gAvoCMD/l4imHhgc8jJLv9lGZkyDOowxJ
	 ypikNeFCRiA4u+3xcifsyP7ISTm2h8Lt6u0jgj+XP3DWXVTWBzsjdRbCHoXUFRleD8
	 FOfD3NmFkCmniisqO4r55+zkfqqsYD619RdnI8q9aIdv9rYemK5WbtGFZhv/kYmvBV
	 D5hL73skN0uxWM+aEbXJTYrdHkOXCzW8pXe6N6EbxUS5cr/f40QxWQ/AYAhk6GJYAA
	 rdkLNIXeMxHqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E9C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456599360.612.6413278567019096500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2c4c72b1ec3ce37da8553b84ba2a7ce9e67dc4729224e8e37c72dc39071392
Date: Sun, 13 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744565993
