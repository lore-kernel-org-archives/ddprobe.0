Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558CB17548
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738823155; cv=none; b=jv6O/bpuyEdFvib2HGc1CW41mj3pLJ5lQANcagC8U1TH1Tl1IRKqFtCE4ndWvjsc0Gz8yIO36/T9l7BvBuh8Ar5Lxl0DbFcVk5WhrT4rdH42wIUJKxym+x3iFkUeUcftgrkulS7MjqkGqcByHWQRX4N0kS8qdpcsvsyIE3mbGAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738823155; c=relaxed/simple;
	bh=3dO5+LarkjTM3rmQBNP6b4AnO1xTDre8UOzKHQK48JM=;
	h=To:Subject:From:Message-Id:Date; b=sK3XGpGrqvpIt51rb41N85egZwCXYyb3upL3OZjeZRWJDG7+UWyAyi6kd1a1t7Wp4s9nVkmt+dqxOk+rypw3gopqYDirUNRDKb6WKkMlEMi0S4H9w/LqYviH2F6enP0ck0StHVKJnPH3Rrj1o+h3qBcJ2gRgKl++MCWqotXq1RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mj1B88Xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mj1B88Xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9E0C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738823153;
	bh=3dO5+LarkjTM3rmQBNP6b4AnO1xTDre8UOzKHQK48JM=;
	h=To:Subject:From:Date:From;
	b=Mj1B88Xw2XVTzLli/cogDh7UnkWbV3KahT0tJ6VvOi7ZL77y5HqujKQCnFXXe4VQD
	 pjxnF4XlWb/sOGBuMQgNMVg4x/GCC5CtlVC5b+vTj6X9st8c3gKAOakhxSQ4WfVhax
	 4mLKCzTWGtGNdWrbMHBCev6FCtWfnDK/izKZ9Q+4tI1c2D6Ly3HoXe6xP2haueTCqL
	 v9QzeAqUw1/wumV1qlojEb90paLvt5I+k5TufrHHINwowH6N5LLA/ylerjFZDamxOD
	 HrK6gMzTcD4lN2jAkkny+NVgcuYcHEcfYO3uWTWAdDgzPvmc+0GPDLuth0kRIBBDip
	 wgTVR7gyYOILQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F7CC02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173882315366.16587.5800676924826812324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44d260366475b81a4cb08de62e99871f5a81e54823de0f5cc51b49eb5566471
Date: Thu, 06 Feb 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738823153
