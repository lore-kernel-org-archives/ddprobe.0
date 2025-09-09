Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF0E253F3D
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757457594; cv=none; b=Ji5V3lIvjOkvOcVFOWe8mkZCWwj+4XG2ZqiylX9QjozJtWmN+dsNbBu97bX1+n1s4AKEt/RvG61VRpNIK+Asu77kJGGH+9EyEAqlxaQFtZJirJo5jE/myF/t+MbX6L6vW4zjmMfFPW6UqSiyajyt1pnFzqcsGTXzRN+Z3pp/pKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757457594; c=relaxed/simple;
	bh=+twJDLpZI91xkt2tiKIogJt/gy13HD3E52orlEIV3S8=;
	h=To:Subject:From:Message-Id:Date; b=sJYovwmF9F2aePnLWLW3nxzKBZvHiFtHB4VNzeSzxWMcZvwNN5A9IuO7n2mvS3AqTrqD8VcrlvYM1MGn6DwFKGKY0GUKVzg2PRDZ+Wb/UaD6eRS4D63xjyPNBkila3CBY+0rMhEFoDI83B5K9nsTXqsQzilEltlIgzu3bMKPnck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4beJA8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4beJA8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FEAC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757457593;
	bh=+twJDLpZI91xkt2tiKIogJt/gy13HD3E52orlEIV3S8=;
	h=To:Subject:From:Date:From;
	b=i4beJA8Swf7nFXPmkuFaxVWL6tYD7q9h8IxKOZ2bz5Mm6tS8BRt1NHYAsCr1FFgSZ
	 bDS5S2ZBrjq19A/EhAr2hwUapbslW4cpo93bXV9XTexi76SVELZWawezZ0s9/L2ziW
	 N+6sv1Zaa7vp3IfVvocHnoQMHRShbfzsGGxI6h/R8VwOpaLb28r41tSIbQlcHbGdho
	 V/p7EJ2T4nJwbN3+V6vsLAvrW6Tdnul64gQ4mHSZljiVYCX6T8/RpEuW9oAhZbi3kp
	 VTXbagPm6FrP7QUSTXOdsHDdSDmvBGs+V6xkad0f7bz0RcsWHRfx9Vx96/99fLpqpu
	 YDvWsrLK8GGIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF7CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745759359.11747.1678609538112242085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19634f384d0f7b035f676f60d979800d27a47c138e0991d19ce3b5cc154273c
Date: Tue, 09 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757457593
