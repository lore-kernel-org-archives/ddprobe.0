Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAC738D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762630794; cv=none; b=dhUgYoenGDhk9SxUaC2uk6GseSMWbOrIWRaXNihU7sGNMpBYW8p+VyBq/azHyDircSUczp2uljeBO0KFZTNQYDm2Bbt3da0FYFG4S+j+xgibGBDt/fND9x8sW0LqTufOF3qNySbXihfcSap+o0jgxgBgMx1IS56IjXgvzV210uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762630794; c=relaxed/simple;
	bh=8whSXO5E3lKUSjEXYXMkp+uiHS0z72C5xTsN6e4bS5g=;
	h=To:Subject:From:Message-Id:Date; b=bjNMPdIJTjOixg7glEkVKFwDBNI3b9FWT8pqvJdsuhJEIRLw+ibzocLFY09Zxg2UVPYMdfUoHGsxuC1vARPuW4jwHI7onwPI66bue0+g3rX7vw0mI2mRHJt1l4rLZXhJRd3KLt4qlRlXkLTkQ/DdYMnUbC1/aQYKL6qSFWgCni0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeYGq7Ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeYGq7Ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C408C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762630793;
	bh=8whSXO5E3lKUSjEXYXMkp+uiHS0z72C5xTsN6e4bS5g=;
	h=To:Subject:From:Date:From;
	b=ZeYGq7EzmAyNgc6kZ6IjA2W9KcPy2U3oj+gtSICib62pvDMMeSjms1d5iKV0LsNTC
	 OJhOoFhk0STiweUr1nGEOUpup4lQgK/OaWnkknAbjG/VxhF7qM3Ijqx8VlaNO1d2DW
	 6JLCzqvmc35nrhbEicTvdqsRWdkLyXAf0UUxy8f2rvxoCSg0jjfRGe2t/qAnZjH6Zm
	 T9F7Cae7aAN1usrc2ZOrRyhwMYtTJ8II4dfwa413mNYmDNdbcagjae7vvpnaBVrtzm
	 i71a1eSPVTSRTi8a5y6c8ErF/XMlU3ev22YiqevaeRoAeYzyvF/ya0Bcnj+pAvwEyL
	 mdedWXT9qOUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB95CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263079358.4250.15093639403792647114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9050d0f6a12c21cd4ffdca59a5825f2cf138f95814a6fb79769428806341c7d
Date: Sat, 08 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762630793
