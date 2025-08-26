Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CBB301004
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756251594; cv=none; b=XBl00p3dvmBnagC9Nu7uGkoXYAEyh9XtITgj2C/P6AZVWjBcnhtKNLPR9oXxgPWf9f4ty2lNx6ZnWLkHsvxyOsTro5Syj+yDbEnDQNVxwjF3xZEkag9rDI8Ua6O2GY1oF0ivKk3cZKIFAMvqYa9kdUHWZL3Re1oVG4Pwf8j3qvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756251594; c=relaxed/simple;
	bh=e+CY28IvypVyPu0ZPNg417NB1Nkc6+9CGAO8w3cSINU=;
	h=To:Subject:From:Message-Id:Date; b=S5K+O+aWe0WEZ4xfHSbeiyuQYK/kaEnAVH52a345OmYgFw/y/nM7xVDpuHfj5s5UhgSuY35RQNVT/oocQbbwlJp5t9b1CYnO+Uz+1SVk+coPJ/c4wpUHI1d8PY+/RYvv0XYaszHrsqEYwQ0tlSDNdQBsbLs6CRw7JuQzybmr2g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYgntMat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYgntMat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0804C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756251593;
	bh=e+CY28IvypVyPu0ZPNg417NB1Nkc6+9CGAO8w3cSINU=;
	h=To:Subject:From:Date:From;
	b=LYgntMat69gl5KgR46ieByVeP7lUzdlTZ1BDMRl/7asIxFBAbQEwa9A9ztujUCfIb
	 G2qV4EACzd35m8Jpzj+Cm04VmXBWm3LQB8IWEQBYDPZn6ol+jTOoAyYoMwJg57qOf9
	 iPc94LISZpIBcsDTVbm4hQJ1yn7OaNiUbZgNGNF2QcgbYtdTZoJ2LgGYc9JAOeR3HI
	 13D3K7P8ujDh6EJNlbeZzV4WNKZphmuyyyKATzJBVJ335uu4pqcNLZe3cHFQ7DnFVg
	 qkaQb9SGvb4aX/ScqJHLZQbuhGGOTY5X0sZdse22HDqcQmVhBN6bB5JNBOidZN8g+u
	 r3UuQEZPexFVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A0CA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625159357.27775.13057442950866687326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549c8df26ce5f6531e795b49a62d6a6cd6b7948afbffcde58ff911fc8ce780c3
Date: Tue, 26 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756251593
