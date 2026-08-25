Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEB13E171C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787646634; cv=none; b=HVPbcTqnfiFtW95i6ucNFhxcQtJ1HwT0y9owuYHZu3sFFnch4+9q8KG5TZNdm/UPtR1foboLKXAdi4X/TSX2eLm0pqluMr3MdmWHMS9GmYUnpH64UIMcWGAJjljM+HDKz2FPRez1rGOg3hSQk09AtVGX8tbLCP5ZnEZaSP2W4S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787646634; c=relaxed/simple;
	bh=I2xwnXbVnz3VILZN453FNlDp59oOh06xkl5gUDlqWww=;
	h=To:Subject:From:Message-Id:Date; b=KpgpyUPhVwGzh0h3l5NUG25/0zfeWRav+UNxpawnjgN4TKAfgXd6xQ6WrgENTh55kjiGP/4DZqXO5oKaQk/kZZywsPZnJY+njeeMwsX0YKVmbuutHTtsyhdrW/yhiwfE9nMyYPffdlQ17d50w/wdtwKb8Q//iAlNKRPVyMrf7dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8nxHIOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8nxHIOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A61C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787646633;
	bh=I2xwnXbVnz3VILZN453FNlDp59oOh06xkl5gUDlqWww=;
	h=To:Subject:From:Date:From;
	b=e8nxHIOKW5FPw7qcpRzaSElPKiE1SUl414CzSHyS9SvwYXR+AgMd3fxzh9frzMFPg
	 ybv+TtvkdcSbU0GtnxT79fsLhOO1q80FrZCP0jMVsxe4Azn2/nB3iv7COtKbsU9L3v
	 T2eJNdsqEAn+yPW5DV3iVPxsLum1hOVRQfAtbLJkngOi/Yh+Pcnz+MiuOOee0R8m3u
	 +Al+yfChGWH0SfN/jJ0FePxjcMmO6yqYxLV9rkEUlZIibBMSOyWyEVVQSrLFfnAX0T
	 g3174wuSbX+PF3ZPZow5t/yDO2ZOUii04qQMIxwT8u0gSflFxLU1rKOpqMDYDj06wq
	 XyMHAGW5LIbVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CA8C5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764663371.5983.1060845305298274693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a663f46468094021a78eb67400cd927680ffbaf3f332effe421b352e8a6cbdfa
Date: Tue, 25 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787646633
