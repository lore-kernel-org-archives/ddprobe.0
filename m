Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336E133DF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754845794; cv=none; b=qGxmV42F88xBvJb7KLWxaqZQM/FvIGioG83yl//WWHAiqX9wnBpXW53u/yUI0MZuzzV834VDXrqvCSrjbDlH+TkEW4iRZAep4abpjoAKketLOZAHC2RqliapiYq7o4OKn6o+Tm9Wh4XZ6EQ6140wUfYnr1hoAGG7UEmZ0ooIcKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754845794; c=relaxed/simple;
	bh=B0oRAQ9rY+O+3XULEPJ4lf4PRaMj1050gT5IXRV60qM=;
	h=To:Subject:From:Message-Id:Date; b=oZV+7DyrWhG7k5vXmFUfh65ZxuS7rsmtugEoN2k+4TE93G9N2ZgUrnlvFkb44C2yHfVVlspw7dDsiA0wgXg7pNLEeKauW7MfiAJKOYbEUEhW0/A1BpJ/V1i5O3FmdD3XcBQVUnCW3vjcUeA3MGmNq0Vh8flE0rLPvn2idkUSUEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwD0AHcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwD0AHcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2231C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754845793;
	bh=B0oRAQ9rY+O+3XULEPJ4lf4PRaMj1050gT5IXRV60qM=;
	h=To:Subject:From:Date:From;
	b=rwD0AHccJPpWt8Ix0MPZrs4/K4C3vGN4rLwELe05MZ6nmAx2XIPaaHvPc/xsOLXt/
	 KQ7qplQhj1ID68iM6K/49GUaMfuHswtq1tqAHmcm3tRVnkKRkY2GAjgCHpLwVAWI2f
	 q+jSW5ndqTh7Cugra3PpBaoqsHCLmJWZFcxhEGUYCFQKzoNeicmXIcZ47XKMn7hqig
	 xQOEGcAo6I68gZkuA4/clDTB8WNBPP68dknu9kgtDzIewNQKpq9bS9uhynkQoTOyTg
	 YCNcs2suU79KM0e8FoykSp3HxAOIjbY0L4fsS4qp/37L3X/PjGILaT5u2oDjtUx4zT
	 4N6AkwMGfWdIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D5C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484579357.8792.18111967903118165151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0065184afdfe0308c6dff45eff51ea3e5ec7010921351c20eb4ef60844d848
Date: Sun, 10 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754845793
