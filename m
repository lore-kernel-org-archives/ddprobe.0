Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63774470453
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789149634; cv=none; b=GGG0csD3HbQ91qlypLgu9dCYgAYUCDivW7LlZ4w9YodLR0F9E1ohLRA786lbQ/elyKQ0qJQW/h9H4X3Lp7TV1K29GCSjuZ6bHWqaePclYgk+D+beUzWQ0HpNGig/wLBU4kJ9yUre1ICCj24D3oG6JNd/qclDuVKVSRTZCeokHCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789149634; c=relaxed/simple;
	bh=KExgtKexEEpfL6uOaBD27oGbjmsiJmo2gRAWNlYh+NA=;
	h=To:Subject:From:Message-Id:Date; b=Wj5HDRmyUDC4ajp8LWm7vGfB5Fw7DV0DVkK9YRb0g/guKpjSw35Q3kwcmTmNp3L/FbwR/D+DEk0Zd6hPnFYLtkYXqs68gY7S1HjSa0wO3hLLZF3+zmfqVwookLUmStscu6K5cnYDNv/JlTxxKVbSspdBhGtSukZkCkHE7NrI3fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRLEGkth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRLEGkth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEB0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789149633;
	bh=KExgtKexEEpfL6uOaBD27oGbjmsiJmo2gRAWNlYh+NA=;
	h=To:Subject:From:Date:From;
	b=vRLEGkthpzLQtP75nXmUAOrUzYonXRivxSCQVJB7uXvYlMGB6B4By0p+ITBkYewsM
	 13z7CICMQzdZDhl35D1N8E+C5oclh+u+6jYj1LqEwAtnA/fO37cDlwn176KHvX+Zds
	 Mv/Kj9AKK2BVAoYHUCyO5itwCds0H00bgB4wjqw7giygXMkrCn1PTNslAfwBMD8lde
	 /ovADF5JYON76HTe4zkwLrwm9+uKIA7guTzJu3woDoQ1LMhxhsSpWuVvUpfo+1ItRF
	 4QkhSrB1pef/5x6nt+qFAJBgjN2NYgFUbP8RbOX8x2YlWsoQjZnGOajlhMl4ahb2JZ
	 xgtmCepUEqe2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0DFC88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914963368.15765.8495657514953180139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a688c0d67d7bc86c7987a70fcca7d6125466134187d130a92c98184cac99ff81
Date: Fri, 11 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789149633
