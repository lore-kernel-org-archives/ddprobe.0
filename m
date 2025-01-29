Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493D110A1F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738113355; cv=none; b=IVz3oB0kPiAMviVV44ANpQnFHago4vSBwGFtGpN+xUOmaQ1RPLB/rLi1iHKzkEYnVfwDq0DsLXpYz1hLefG9zlxFTriD0S5BG4CJPKrGVg1weJOWYxvPvvEhP26sF3c+ujbUhdRTZDz3Fb0lUNK5p9HcwDktgzP4N3kxB097kM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738113355; c=relaxed/simple;
	bh=tYUUQ4syLAzm9NSkN0UBhm//2lTiqLXNdd2EroI4yNI=;
	h=To:Subject:From:Message-Id:Date; b=iZLgjsMFrsByg3ZArJ0pmGBg1BMr0Th6Grp0HzJsnRZ+qeT8BanmpEFHcKLC5TTwRTnOEHAVgwD9nEjxTJzpoA6TFw7zJ5FvMDx5YdOw90mVLaFzXUuYDcHQo1cpq2feaHnikw8voPcFDGGbX2TJCD6G4QCnu3mXCYZNLEFrt/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2ZeVIYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2ZeVIYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C88C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738113353;
	bh=tYUUQ4syLAzm9NSkN0UBhm//2lTiqLXNdd2EroI4yNI=;
	h=To:Subject:From:Date:From;
	b=c2ZeVIYXCxf+1ooIYFbzDdrOrg1oKR9WbnLEGB5146XxIRsKb2DoZR+jNWui226QQ
	 NP4FlKtHiE+QbqOj02OQEfM4WmQcefLoBqlurtPzBXhb0l0GnMTdFXd8jWfnw8JV6E
	 WFDw2GZ5a7CWJc4tvDhrUDMORSbvovPnk9l3+XRVeQQoGxCe4gl7Bi/WMJ4li+t83j
	 OYaaysdbMSU3M/bo1zAtQxYeJjhZJFL9nebcAveT9cghWVIrbUxsUFiyZ0yphOrGXR
	 YsNKErauqvoCxnKrp3URrcNLXzgl/VQKtW5V9295VsCyUTXHpTh/+76gTK12T1WS5D
	 HwrRhfWpe3ZJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AF6C0218A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173811335362.27138.14220873144610099420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f7b6c991eee09a2c663c3191dbfd62c546ff564e5b0a213b0a3e69184d40e2
Date: Wed, 29 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738113353
