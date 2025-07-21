Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DCC1C07D9
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753129794; cv=none; b=uO7kC5IiWsyZ1gLsQ3g53GkEydyByZv5za2eo6SFiIb9e9Ut4m2BDJTkNvkS3eR5RXVlKI/2sSzn3D0cyGnzTDk1iqvTk65oGRomxHHnI3l0WN6CgXegU9rrquHdmBUSA1zAlu2DLoRIz3k7hR3+93Q8D/co6sTU5AoK9L4PCWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753129794; c=relaxed/simple;
	bh=pL5fovynQbJ6maOdaIaTtbWKHZexU6Ybj2USsGjymSc=;
	h=To:Subject:From:Message-Id:Date; b=UW1dUWAyXwiV9N2jMK14oANRJeISdsCTVLLmGfwavy2apASIWN5jRdTK/DE5m4Qrz17Lo9XaiJMeiNaZim/h6VR+OQaVlpCIxj/al+KJ2zDEOMOFxxkFo+9INo0Wi/OB9Grmo/DTQ6IP4pk2kKwvzvQ+mmhCs6TBI1lDqmcueO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rnw3XXFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rnw3XXFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E85C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753129793;
	bh=pL5fovynQbJ6maOdaIaTtbWKHZexU6Ybj2USsGjymSc=;
	h=To:Subject:From:Date:From;
	b=Rnw3XXFQS3qbu7/P7sWjfOJR0WuXWNSwtiImMP0DxdUpaAI4WIau8WZruSaqPVPlg
	 2PUrZdyGIBEbbyRxEVp6uFbtxVGaLmj84BWSngdWCN7L6U2SjGKIawxIbpJ8xL8nqP
	 57jrvS2TrXD6h/q7fsNO6XSntqJbRAJgvgjSyV3Yh4Rb7q8HW1dgqJdCS5RqZ22MMh
	 2L04daS8Bh9heDzSuDzUv3XtJbChKMwzk2kDjN6/BcJv+PtxlETbefSJgXh+ZaLRWf
	 8U0Ylmk9rcDfPH9Lfc/++CmBxoS29C3xvAcKJqTeC1aF+lImMvewb8DzGBImjcCTG9
	 y4+HZg0X7k+IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC84C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312979358.20804.18066890748716261190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a7aefcba3849b02c90b31e66b9acbac9725f5a9f2d748e90290cf5249ad401
Date: Mon, 21 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753129793
