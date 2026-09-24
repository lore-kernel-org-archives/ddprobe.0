Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7525241F346
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790281834; cv=none; b=hwPqinAGbU9UxNqxLbpiDMl6tQrLwvVBqRmQbMjRAMZoRQ06Eb7lR0iaMK4StF7tOuDkrAe9csSuQSqjpTrmsUlhxDAi1PSJc1co0dg4Losi8Qd3YeZ31LJjrhwX++yNS5tPAVAlKjefNJuZtJR/p7YWksC8vx4GaM+NGRHbrD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790281834; c=relaxed/simple;
	bh=64GgCCylEGtEhUgbxW2z/PH9hNkUoO3EYKHkOspxomI=;
	h=To:Subject:From:Message-Id:Date; b=o+dDsXlFVDFDZ2F8jUytg0Ukvc9ZPQbkbEAF9ztGYzgR/huy5buonZYzyS5Qi4YsXZ5Ht+QW1+OehtJF4XC8y4/yhjq5w6kTA8PhQQ4RPlgK4qxFeN0ZBzlqe2+sMaTXl16EZVB0Wnf1JknPg/p58nnKgJSfVOaIWaTQak7cTfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2o4MACO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2o4MACO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89E9C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790281833;
	bh=64GgCCylEGtEhUgbxW2z/PH9hNkUoO3EYKHkOspxomI=;
	h=To:Subject:From:Date:From;
	b=p2o4MACO86IsTWn5xB3bRixN31EjMfU6rqRiwePZYI3Oi2m/nhLGG2Tk7VGcBuWA6
	 lD9gNUpTEfp4VCM++0Vptj0MJR36FeJSRnIfZa6vZyJa8GyvjCPbq5ASky7RCPJTwP
	 DPtuTYN9rMBghPY0HJ0+1jo/WcMJ53O+2tTOTnr+ZlC04Ywj43NkNDz8GoOuey0C0/
	 lbAQ0x43QML2gMfdCspL+aNTKbpqx5DlWAzUbzN/ukSC1tItjvEOdsSRY0Bho1BCZa
	 Q2DOrxxAibsJCPEv/IFATK1rMx9oSHnqiukJrp5zUkYPC7Syjlf2i7Nka5ool3hAo1
	 3XDH3IAG8G4WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5940C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028183373.24722.13641790801609305873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0ca2605e9489d2341909b04ce8b2b5f4a51e529748501d909c6580cb01d11f
Date: Thu, 24 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790281833
