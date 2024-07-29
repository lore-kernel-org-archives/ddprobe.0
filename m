Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB34914659F
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722258953; cv=none; b=lw/wXOqMrzrfNu2lbHEK9EukWLVn1XYo+ZbxYphrix8R2YIE7v+bRnobZ6xo1hmmMy5w+FUthOqkSbONVlquYUv/i6/WHQTRbmrI/lp5mHM9waYO7FhArIoK80pr+NiwVQC6iuZiQme1PJx6JFTqRn8Gah2mLw9H9BVcJ/SL9g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722258953; c=relaxed/simple;
	bh=d7MmaM+5Y2oIwyY+5HYT/P2lxE8SLrdjFTUc7+6DF1w=;
	h=To:Subject:From:Message-Id:Date; b=ZvW4NLhr+orpTt5CYXVa1stncj5JC96kRksOEPu5I8PukUBGCVhl2LLk+Dp1RuAQA3K7Zur6t+QuDkXrOmM8aXVayDmvJSs7rUVA9NDOisUpzKoosZQqM/aKIVb0+DWEfGXQnaUB8swdE1/ibLEb87vTPugzSKYzJcZ55l1W/Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVoR+4g2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVoR+4g2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBA8C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722258953;
	bh=d7MmaM+5Y2oIwyY+5HYT/P2lxE8SLrdjFTUc7+6DF1w=;
	h=To:Subject:From:Date:From;
	b=KVoR+4g2A3d8r9acpGARNRYm+uwEw4WuKcYCqOsa0CWqyY+aJYHl6mZni/NXdUFXa
	 /8zHX/1gkQSf+orh2uVeL+/7nvF81pv3DZIteHBgeVe7zlFPOfMZi7j4E9dC4JlQQU
	 hzzi9QSKJBwwpMR0ZtopZnwhQF7B60k4UeaXcrTPPasl03xwJXpE5ekVgu7sjiigKi
	 zyDfybHhTp+chc+T89qH51Mk/duI7JPcK5LRfIkByxQK0gPNnigJtvREM91HwCAz63
	 hSNpB5qv0J8HUOqH9A9creSclA/wMaDaLNXEjQxalFhDgv7+reUKIsjl5bEcEGWs2P
	 ClRU4ttv9lwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A77CC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172225895362.14482.13701835786359029564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89a4cbdc51913155fefab142a98926793d7812cc36d62131b3e69ffa15475b8
Date: Mon, 29 Jul 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722258953
