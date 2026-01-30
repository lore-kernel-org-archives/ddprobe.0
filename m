Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1135F2FDC5C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769806434; cv=none; b=jhVygZHUC+WdowLqsDR2zyk7WVBU2VQoYiszep4Gl0qVUYapktnF2+WMIPx6m4KPxPPhYco04EuDx8mNOVo5vUjz4aCRceLG0XS+pnbT0LMw/u28++DBzZycOwgMbQANfv1O21LO1bZKDdPmfSv61SnMZoLg+L8jcC4fosSYWNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769806434; c=relaxed/simple;
	bh=kDucvWT4/aM1/9/4u9LH79qk0o2Sg2Pdc3JEy5GkvCY=;
	h=To:Subject:From:Message-Id:Date; b=VHX1sDa6q2mMSdG39jmCJgt7nMKAndHs/zChGx3KuoMwBLXNuFkTCVM8gXdo6yjHzek2BtnRJWUugHPAH1q9k3rrIzWXBJvS0rVR+WWT6fO73Com0m/N8MHzNRqGhfMttu2WPSaRTsujUC/4kNwiWUCVkxM8Nhq29u2DF6bL6yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vah8uGBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vah8uGBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769806433;
	bh=kDucvWT4/aM1/9/4u9LH79qk0o2Sg2Pdc3JEy5GkvCY=;
	h=To:Subject:From:Date:From;
	b=Vah8uGBGj+CH2z7DO8JA6qXSiT7C01UtDgJcLs5L+VaBAYmgslHOaUy05y+8wz7Z4
	 pqnhdrEHN4PqQR0Yk9xE9xbry1jEukxms0psyCUPYTIuI8PogDXQrXRFRj4kmUjgFv
	 paQV1dNvygydTfohGDJCP8Ji6PHQUaW/kZI1WlWzdxJQH+ey/Fn72zsba5PHKxMc9M
	 4DuKNLX6MzW65CunIDFhgboB9hy8Dt+9V7UfhJCZ6pyU6EElbMf3LUJNjHt11gYQQZ
	 4L3VTsjfPoKyrat1Wfbx06eg8uMUO+KqINKBX4FnZRMRfB3Cti505RJBvFiJOxQYDv
	 SSyYpw4p1N3gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B57E6BF39
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980643358.2245.2710635879099132292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b7483ee0edd831757b18f613466aa59c86091d81fdbf727526c256ddc15c60
Date: Fri, 30 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769806433
