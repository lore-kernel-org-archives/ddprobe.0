Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BF52FFDF7
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757946594; cv=none; b=Qt5bmX9MvmlfDagRXgi1pjY+YxCWwP+VxhzQ2zIctmm3k96ZQxImUrOF5+MK4Pi5PaoMSfM1Pxx3U5vM+iOE4sJXZsMLRICsGamFKbbXjs4fz+96VP57Bict2vrNBezJdV/EKX6/DgUueiRoeA+u8cZy2aR1xN/UK35Lc9ohMb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757946594; c=relaxed/simple;
	bh=C/Z+iP/QfEEiG8IMO0vG7yebtkj9QQwnnAmRsJiKWro=;
	h=To:Subject:From:Message-Id:Date; b=rL7kCgnLj7AIsO19Dr1t1haI2GaqwuTaH18u06T8jf1LiHIvS4wlZrjlwq4Ui4vSJrPhyE7ZmcP75fvnULd7Zz9WrgaMuyTYiUVJbS4ykjzPs3N+vxQZtQmvd8b7C+EglAW0ATwCPJAD+jY2bJWxt04Vso1DeFN9ieqFj5ah0a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnG0Nc/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnG0Nc/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2414C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757946593;
	bh=C/Z+iP/QfEEiG8IMO0vG7yebtkj9QQwnnAmRsJiKWro=;
	h=To:Subject:From:Date:From;
	b=AnG0Nc/dl+TYCqkkwh2GzummCu/zNs2jsVXgweGWbq8ZY3fkNd71/SO+25rG0sr0z
	 AROMwp8u5ROOg2SfDF44qS74J7CYNl3S4kdFVXxC+LcusUYJjLbuhH+1QWOnQTesHn
	 65YfaUEJnykERXeVd5P0221suD4tIotB1r5k8CArgYwptgPP+3mvOVP5CdjpxfMR80
	 AqUdVDQkwK7XHUkv7KOkiLqQNZtQg7FnvrxGtYmI7rqhIy2Vwd1PVaRrwqWfDCOf8I
	 7MD2Mr7oKSS5xv4C3UDVVVnsxg0ve3+99CzCx/Sjw9tkJ4DQYmH0iEtM7z3PkZeTYt
	 zgo1LbWUqjyNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9124BCAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794659358.22005.16215214704260490455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c6d31e77bcae5a8c047a4abc0183b354ec8cfb67597adabdd286c7104031f8
Date: Mon, 15 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757946593
