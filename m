Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3508633981
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726778754; cv=none; b=Bjp7/Qh2lGhKaAZLjsL/mOz/BN2oHM9gTPAyPq75NqeY3Q9TY/XINKbdyNMC34mYiIaqWUnnsZjKY6OPw4x9XwlUORQW7skJETleNi6jeeWdHFTeuQkdYpkCXQ4y+BlA3aEOxLZxcbtaYpPx7IgrlunEtPHZC6cHTDEMgEBjsbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726778754; c=relaxed/simple;
	bh=ylJg6RYwO3+6CzirEVkuSdO78eUFTOBNDEURGadGDt0=;
	h=To:Subject:From:Message-Id:Date; b=d2dxKmWk5ZCFqe9oPCTcuf0PTuIXJvxT+UfxMALOiKeOap1Ml7NvLqSbnxrzL6i8/RH53WyGLBegpN+ejiFSrhjamZY0waLA+/Wx6D+OxmdCqXPZpVqIm4mFzyA5/eKr9fVhaJ2g5UxcIacckB4K8D7oYYOIp4sg0nl+GY5ARRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IV90C2TW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IV90C2TW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B780AC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726778753;
	bh=ylJg6RYwO3+6CzirEVkuSdO78eUFTOBNDEURGadGDt0=;
	h=To:Subject:From:Date:From;
	b=IV90C2TWxMFhxguzZQbSj+Ojykou9cnj3vbhCQJdyNIqbPA7oauGlYEXFW0yXWu0F
	 /KJallnz0kUZpAmaHTcfN3Ns17yigwehJ1KOtqvNTGPuyaCW5zXIC5lZc5b4BhhyFY
	 DZLMBsUhxzq0VAnhFtgAcPUpMW29wTidSwzl2+FZSMBSaPqGrNre1rH2GoU3eCg+Od
	 L0PWHctFQ7xRjYEmM6GUma0ghnmK11bL/ToEUngufhDLowg8iWFPbTtzX2tXCIOLeq
	 E6WTpz2x5tE4isKdU5cCdN66CGxF5XLEmhwpF+lwC5LTnzkd2i1QI/7T39e0b8CDXZ
	 4r3DTNSbXgA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F0ACF396A
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172677875363.27541.8199395690630022358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7316befe8963aec93c678c6611bacffbe1e64214f6b0b9e375e796dd997d32
Date: Thu, 19 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726778753
