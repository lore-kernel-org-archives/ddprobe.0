Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164CD23536B
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752922794; cv=none; b=QRW//GmjjFKVefKOa8Tnd3AK5REXJD3QqXTQhCgavfR6YpBpmf3K2PtlXC6c16kuSTjAdovavXPw1LP35BiyKz6m70kVDnSvJ+EuQYWbpv4sO6ypHRZkTrJiFM03uV6ISRERBNVbme+xn6W8Jgl78SIRQhETl0L6O1my2s6ByV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752922794; c=relaxed/simple;
	bh=lvgRwDWady8AIat2loef00qJEJG4ReAkcR9dSOz4UYY=;
	h=To:Subject:From:Message-Id:Date; b=HvdTTN080PgN/UskZAiarcYVUUPLHGt6ZtxHj+dSOPIcwWRvGy7VLBqWFDWtFOZNcVngQslRt8nyBs35+183lf1se/L8nZy1AtUZlVn1JI8tx7YqW8CSfMoqMQUuqysvPOkWKJCD0GTRlyGtQRNVLQ5ANVJ/d+orYh+zghg2eN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWKY443C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWKY443C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15FDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752922793;
	bh=lvgRwDWady8AIat2loef00qJEJG4ReAkcR9dSOz4UYY=;
	h=To:Subject:From:Date:From;
	b=GWKY443Cfn8FrZO9OjbjQk4gi1mVL0S8jGiD77GX4z4o4ivWtUDpWGFfJgnusWM10
	 qM8OBTZi3Y8CXHgEblYlqdpIiLhqMLeOYGcKqAda50u5bpJyJzVS7hQ5+7x58JRmhU
	 MFzB8UFt2vsgjd7oF5zVpSbXr+0pOpM7S11ebpqnsD6LnC2gEMp/GRyKHTAPJpVIqF
	 yEPEk3vC3mNgtFtzQpVhabgUbLndTbOnV+0Q5SQzUavkimQN3UrM+QopXSRpHULy8H
	 0lL15z8qCJV3Tg4H0isSBukjBFidwwDvwfUn6AKifS/gdOL2dJXY0UEjsbI+S/0TRv
	 lXR2M9UUMzV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB9C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292279358.4601.10422648858414358150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217b7de212313bada95d1938ab2d80aa9dcd5f9340e2e8cd15c336054f2bdbee
Date: Sat, 19 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752922793
