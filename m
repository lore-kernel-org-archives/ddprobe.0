Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BC537E5F9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786505434; cv=none; b=NmM3YLGe4+UmvQAbrA5l8RDjz1//Ab4tSPykw+0m2NrDaSDhY+5kZhovYN+zqXGeEbgSaa9ttGZzFaNmDEM/rjEMQgE4B03o26Oe4a7YYE0dm+l+sbvZQgH9EwD0VcllhajR7ZGpWhDdMn5bz0nx2J+HZtlmJn/lCaJk02GYBAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786505434; c=relaxed/simple;
	bh=vXxAJPhqbUsL0Hz97VudHhYeXD4Wc1BmdnTD1lV4s5k=;
	h=To:Subject:From:Message-Id:Date; b=STrVn5GGvH512+OKK1F33fG+CFdDGqfwHGS3nFt0OpgoAtIEQEdmsQ/HLeHDzyPg6vHFdFmrOVlje+IVK9HIQ6ZwW8k8i4ymcVapXyczAt9tOVh+WpD6u6igRgkGRSTkRIBImhdY/Vlz5RZgsT7O9D/gc7dT5rFHz21qUN8o2Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEDevDSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEDevDSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5ABC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786505433;
	bh=vXxAJPhqbUsL0Hz97VudHhYeXD4Wc1BmdnTD1lV4s5k=;
	h=To:Subject:From:Date:From;
	b=gEDevDShjuZG22lDxAOitxQBQ2Mc/fXDD4au4Y+qbDmurQPA6xSeRUW0sjimQryek
	 e7g7SZfkXLN5k5cE6u9xbpgxzR6gS93DU5Ypqnu26fr6Ygsvx4nOQtN0KWryXIxBv0
	 5ZNCwEvEu90/t+98s6UKawKLjx0ss6PxRq42JaMbhwwDC4XNbbk7o2c6t3Dlmi1vcl
	 yDsbuPsRWsPYHBFJlhqoVWL6QAFv/rw0LqGcYasm/GIP6nWpXikGKl5alfjAzz1m5A
	 eX4HYcjn/7wUySuZDKn1HWi5Cxds1u90S35cVzc7qKrTgh4SqSB6Nub+h88NorXUo1
	 IO/AVJ1WVB6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3A8C5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650543368.9669.6531677623129161679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d4e744e71b9bf384cce9290f0017bc185c27315472430b1b764bcf1c296cc3
Date: Wed, 12 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786505433
