Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5512516191A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714593743; cv=none; b=lF2k6oLZjJvdkXckxPLWlKzTGMfbBnPuDvOWK1b3IQtzNFMXDWjkdBTQNw79pLpcWFZIv9LtzsoKsX33aApYBwp/2MS1Ifochyorva8jaNWzg0VhG3txR/aQJnnujYnO1ejGKYRcpS7Ju3xa8bvMGbJ0iRXTVxHwlmVV9cLAk8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714593743; c=relaxed/simple;
	bh=l205DXnBZNI8LmmbzZsuM9neoleYcDOM1mwx2afMJNw=;
	h=To:Subject:From:Message-Id:Date; b=vGFV6mzUHC2nJQGLrA4ngXnq5+EI/eJpanvbWbw+CRIBcMv9qKM++8K4lNJl4T1KHMCsQr0bRgNeeHQ1PVKzkmvp7YiU9TY32j9YTgZAPOg/Of55gKbsvqIuWi7QxS8zwl+mZn4VjCOUFNU2H6hSym2k71UN6SR7Cp7/JQ1fkdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlJ09pu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlJ09pu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87B8C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714593742;
	bh=l205DXnBZNI8LmmbzZsuM9neoleYcDOM1mwx2afMJNw=;
	h=To:Subject:From:Date:From;
	b=KlJ09pu1yh4MlVtQUhIMiVSWxNWRThahl7yvedszwV0E4BNttr+8jLWBEWmhtTG8f
	 vZUDoXVpygRubopJMNNPC5b9bt3A+phkwoHSQiDSJ/Sdm9OtT5yyoLU4ruRFao+YGB
	 9apTuXDLpCSZoXOPMRFg+HyAF/HMclcY9Z0lWcl/nO2UBkhezfjEi0gVVWfKccGxNi
	 sv+b2UI2KBz8/XBTCXQFnyhS+Ai4GF2b2bxK1q23IDy14impIv0N7sJRqSJGUYQvqt
	 252ptSVFZUf2iE3aNZQQnrJrwUO3FP8hIfeDo4nhAGZi6c3+41JV3LMkSa1V07wbkG
	 9x4IHBq5cKCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C854CC10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459374278.14982.15039505889918965815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab609e97891d1977518e63c556a2647bbcae19b5267957af88c139d6043fa58a
Date: Wed, 01 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714593742
