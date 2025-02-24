Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B45221F31
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740400134; cv=none; b=rxJ1NOJ7DRcd1nS0oASEP0yduOeRaC/l6KpFnEeKxmAfxRXfwYEXXg+VUiwKSwZOuauOv8IJh01s9ZoQ/4+0TXrLlJ0aRIkwNtmK+Dboa9PEHTDa6lyUtC6wa+ai4HBMrDhu2+l0lCF8C6jbEJ2RnUKNVYBONNxIpgRae3eG9L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740400134; c=relaxed/simple;
	bh=3z3WYHCmckVLXDyL4AGoNt5p2czsNBiIlnji8wpCslU=;
	h=To:Subject:From:Message-Id:Date; b=drspuzO7XkOEaVhjJkP2WWnIs1GboRHJqtyseMFUGxG67hYOD2GYVpT+jAKJtJAh+YU4E0/BIZSNTRaw0VK+P9buabCackD3j1p+wUbRI57SGM/nJ0HeNNV9EGIMkoiZjHR4/ItPQi/AhroE6XtPtdBycdOMBk2OlngSgbhAOJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8DEKQXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8DEKQXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48E8C4CEE6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740400133;
	bh=3z3WYHCmckVLXDyL4AGoNt5p2czsNBiIlnji8wpCslU=;
	h=To:Subject:From:Date:From;
	b=u8DEKQXVoIvyLLWbT66kkXelKOtgA92u/qNLeTDcg2vc5scLGbO5wtImpnV9zdhNu
	 Te8aMTR+tYvIljm4nvuXZ9lW1M0iM3+r8G4U/7oKqDlENRwtNuM6A4Z2Bi4sbbtQCS
	 Uo6xgiZqsBRHrwXCZIj8CN04UWIldqeY6FGeUzydHQLQ/xBi4EwH00pXIx2E1bKTxF
	 GLYCLmGHnyHhaLM4Q7MEG/XJMTG664I4e+42cM4BCChlA2OgkdugGFQIdXLLwQndOC
	 AgGLya/FR/m730hYFxSJd+ZNHVRuz0n7HEBlURZ2ImCClGUgFxJpIfluEqaA3K6V9r
	 qA0jG9OssgUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEE4C021A6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174040013358.32497.16613101254654576468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3bc30170288ea36221708c55d61294507c5d109b4815d4db9248e5af58609f
Date: Mon, 24 Feb 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740400133
