Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6738381B17
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777628253; cv=none; b=lAsshoXlCGI1HFiX5EqytYIzh7gOKToTQybd3+MtJztGhjknFu7n14RmoHe+kFFzr88GqEwjbdAGUGp0tAhwchaihMGlD+8TrM0ClAr419pcxUH7vd2VanLnxVjfd7omsJj01MThP6nLlqxeqSvwT1JqnNUbID11tme+wVh5pfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777628253; c=relaxed/simple;
	bh=YOAPha4rRs7HoK1El5419GoyODQvSjiy+6GPtopjW80=;
	h=To:Subject:From:Message-Id:Date; b=U8GH6zm9fZ3ZOUv2CjOdRX4NR5mzyi4bdPLciQf6a5EdY9Qf092afSzucvsLVV4reG7OO51/L4uejP9l/xKcFEbTp1OvwnZtRyUIz18p27OBT+J0buQxvuUlTL97B6gfb/2HG82dZwY/ncmTY02lkB2Df6qZU2Is01CiooYj14o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUyEnDSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUyEnDSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98F7C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777628253;
	bh=YOAPha4rRs7HoK1El5419GoyODQvSjiy+6GPtopjW80=;
	h=To:Subject:From:Date:From;
	b=SUyEnDSe0fZkeKXm91i2ucjCZwOMO8jv+F1UQmOj/baW8LFDVkmwDyeGBZtXrMOLE
	 HQJ+Lp/CI4yfiKdYzMqOwv7OpSknlum1LgNfeBNlDj3hKlfrFEh8CNBeSj7NVU658z
	 XReBK/9ZudCEVBaY+QUHIcEqF5KpDaoBamrotHnyjK7kU5j4ERR3bWo94ZV4e8jBqW
	 hi64AE/91GtWWbOwicN1BACiEe1xET+VOG8+MIBn6Xc3Zi/yVDCOa9n4VrqLXQODcS
	 UHzDQJGOy4U4pyOt3cAZtwj/e6MxlL6p8xJrVh5j1SV/5isbn2R87xSJwEu4IQy7tH
	 HhTYIHj1/rCIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F1CD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762825368.8327.11186803892643033392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175231cc56cbde5231f6e289545efff90b9d2956c4b986330ea2669686e58e41
Date: Fri, 01 May 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777628253
