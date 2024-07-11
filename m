Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE2D82D94
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720694243; cv=none; b=laCGU8xw4RmycPvYhl4KP238k5dka1xtFWwUTPAQvDArjt/gVsnP1ra4qaY0Knsg5Me1ZGGivjwBECzfdyB5Qk0xyTjEfkt5LBnSU7YhAyUfVLotTni60e9EH+ahJGuSmH7Vh80/IVVhlU+68B7tT0dJcMgh9VqixPkMibUExEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720694243; c=relaxed/simple;
	bh=2K3MZRL8slgvYDxkk5UaJalPi1CVP6kJun8keqLET0Y=;
	h=To:Subject:From:Message-Id:Date; b=utSx7RmYK6pow93rMTM/k+MTZiuuLjEwNE4D7dt4uOyYXqJV1Tp0witprKiaGdf/DqU5ZbT5z75HerNIVdUyVyd9OavFMHXBkNLSUJp36EEpZI/il33WxEbgM8vFGUZj7lqzDklLCQnwMEzx87w220DyvBfLCnz/47Eaxe2tDUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGRr/3iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGRr/3iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D698FC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720694242;
	bh=2K3MZRL8slgvYDxkk5UaJalPi1CVP6kJun8keqLET0Y=;
	h=To:Subject:From:Date:From;
	b=fGRr/3izSXUMx2dGFy4PuSi5Z7Q6K/+jdIcMGzQNdibkv+S4Jvcp9DQrVtlyY84HU
	 2Wkzt3PPo/D/7oG6oJ7JNcMmtOfV5+2PoVZUl6XAEcy1UuGKdtjwO86imYub6aqe5Y
	 Ky2GT+SlbVM3wDnaTyL+rARSuWtR09vLQ6mELNxX4g2CidL6CtS39XMGPdibOe7qAu
	 2S++3ocDiF5WxbgCz8crSH0V6F3uf8aO69RspLnS35gSk7xMcm3aZgxXsB1Nlr7Jdi
	 8cbUIRXpqcYWkgQ5hh025CsAXTaBPFOP+M7Jc+qbn/1ZNS6kJO1Cah1TFJw/infcVd
	 94e1g+XLFU6Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AACC3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069424276.2435.16903250008388102311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7208bedace5af613fdbba1e375b851c3b2641631379f421d7bd3c10286b58464
Date: Thu, 11 Jul 2024 10:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720694242
