Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2376F23D7ED
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758400194; cv=none; b=NWdqC4y3zKuyrAe7CCY/EGLnoWRSOwRuV/pDimp1LulQ+qmzKOif6A6DPivzDIUmadPS8FnnAd3INLuugwXEu45yKBtPoAITyV3Ui5Y6Iv7bljTKFOAI7fU2Ma4ueltHXNVlJeSHqneSJycGvAK4bXCfHxQcPUdU+XP/3B750FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758400194; c=relaxed/simple;
	bh=zii75jWexJ4570DocdLccKYgePiDmXTIMpJW9t62/J8=;
	h=To:Subject:From:Message-Id:Date; b=lKR4JZ7aGCCtwnlKebzan23UkjXK1CeBoygFPpjX9ewRB3msIYLVW7Ca+SsEICB4bN5SXh+9zT8g8jNhh6ia8e+o4430582JM19vBlMC1UjVtgO3JylSHGrfgH8VQNl1kYC8G6790Sx3HOTuqLWYj53VxPw4Ty5iwSD6+q49erY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJNTwuf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJNTwuf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1BDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758400193;
	bh=zii75jWexJ4570DocdLccKYgePiDmXTIMpJW9t62/J8=;
	h=To:Subject:From:Date:From;
	b=fJNTwuf5UalUS0sDypSWo2b/Je7mAfqoOBY1W3zJIPyZdz/sfYXo261ja1MQfdy0m
	 0sn9GTDanxprrGOiejd+gbJTfbXMfJho3V9Yswqjl/+vEWrJLm1Bj+SgVoMPCxnl7E
	 yFlhLUR39hMtLC3+ZXTGX9W7aSHSvpe6t7AlWTT8K31tv+DGvu7ebfQhvtZZz38bgz
	 x2wYUPqBzv81cczrsms8p0Tyc+CDIL9jzI2efwkAjWMMrTVahuL9haTjxKL6D15aVf
	 ZZI16P9PAgoDNJj1pmmWZ3rFDw3kcIsvR3PyclWf16dGwyOH+MoC69BGFZV6UwXG19
	 XUdBQ9Hk2rS7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFCCCAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840019359.28198.7297394890309857501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85db6f9a12bf48b918f80752b67316ca1218261c74d0d6c07ecb5678dc2f863
Date: Sat, 20 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758400193
