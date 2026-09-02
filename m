Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47292274B4A
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788320434; cv=none; b=lPDiGy3hmlwbH73ZajKyxBeYUcpHTvDQNFrZdWoytCQ6RKXhkK8hYfwN8hufZnIGQ3j8cvlDZZTjRMvayu7qsd4OCOpFhvh3ukBl0g3pyGQ321cohjnDNDWJ7/TB3cXk7XG5NEQ3Iyq+g7BgrDqoi/uskuZFaqQ5Nbao8EebxRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788320434; c=relaxed/simple;
	bh=8D+zj7Dh6e73WR/o+rBnSd5XgImtk8/v7NRSkAbfFZc=;
	h=To:Subject:From:Message-Id:Date; b=OJnIZSfpqSjHyLHM5CvkwWpBQUDHWa3QPpR2qp3NsZgEQwpbK3Trz8fusqct+Dwyv7S3ejSCfYkX6ryvwXycrGlYSr8s7l6c0qL/52ZY3ydd+F6/ifc54EFeNzfj+S/mHWTynrkdu4GOp6M+6Odh1ZJup1PRj8+roxnjKA2YdMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALpcslVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALpcslVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB37EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788320433;
	bh=8D+zj7Dh6e73WR/o+rBnSd5XgImtk8/v7NRSkAbfFZc=;
	h=To:Subject:From:Date:From;
	b=ALpcslVgPauHS1l9M4YIb+Cz2WNVhkSPpw1N2LGj211dHCZiEI/W71JcFHNxM/soH
	 FDcskdu+LBkY7qvuyxlj7087v8tf2ZNP9EjIdgyS3yCSOvIWZxDNTSmdlNq7hsP3tt
	 uDC8jQ5lP/2x3BsLiBXbCPXxJ7pTUk/9vPv5i5BbUbYIuvyffVOIh62fjiYIbHworI
	 NzQq/wL/+aV3o4FI6wZlpW1+Hg8d2giI9J0bQzKsQwEMqEuur6SBQ+MP4E1iqm1ly7
	 YawVt3LPhGbD0I4E4WlyFo9kbiLPa7Y4cx+OA8y6GJHeQUhqj3jj27i746C0JrWzvH
	 ItHjPYy9UmDMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92FCC61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832043368.22067.4626877296621256431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4bca6aade77921f8c9a1ea949d0892be0def8222bc3bce7df4b83d953ad27f
Date: Wed, 02 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788320433
