Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF7C16F288
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760795394; cv=none; b=jf9BF0nc/lZshDqzMcy+xIBNw3ID36LWoctH772MYijOBHJBDnIElGSTSOsurRuI/15x4IjlQZ3l0em1y4voFWYsAIiH9nN6kzEvlBO+kL00MnCSz0qt1a/lzScnnY9+ZyjcHLFIAmmExKCeYoSdjGUz7blrBsTkBjca4bwEN5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760795394; c=relaxed/simple;
	bh=zGGoTM0MX6/umCmbF9czHQTvKIK7bHLWwHDOUhnvO/k=;
	h=To:Subject:From:Message-Id:Date; b=vE/Bx+dU2rQ48tR5RQkHz0oAcaUXmN5kJTQs0MnM317TcSDrh4/iNMrOo54XaSNv/Od/EX7x6fGL9MLtX2AMffwP1dAQa2VrO4MHdgzYy8fYzIDs9/FuOkzKxUNHA/7BNtj4EGmSnoebipb/DcZY5tQ76SWZDYDC9EWRcK9dWAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzA3h4An; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzA3h4An"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7533C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760795393;
	bh=zGGoTM0MX6/umCmbF9czHQTvKIK7bHLWwHDOUhnvO/k=;
	h=To:Subject:From:Date:From;
	b=KzA3h4AnqIywLEUFJOuyidLNBpllV0cNHoxeCwC8C8/iKBKkfFdkSi0MIgia4ATJk
	 krUGL5IC78Qkrj2goJPauOpZBzEs6cBMSqjg3kwlLRN9g2w8s9Q5Apj9VRNKKOS5GN
	 81y98xy1qGYhgh/UJc+fWE++F4mrWwIc8W8kPzq/jOSpnP9kuziDgKhPgeVTtoZFdv
	 jt12fZbkVQiBqoNL3gVcc5zP/g45TiIHj9gM8VC33XOoYTDqIC152bgmsDkxziqPNW
	 rI0m0E0fgaz9Sa9d0BBpRHM5GP5thYqPbO/ARmjXQ9U4UGb9bpo5sUiOCsUlR8C1Mh
	 aikL47sqNoJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95452CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079539359.11743.16751054570953557735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3973c6b96f3b2bfa2942229382237ebaceba91cc4e5b5630e83e21febfaf5dd
Date: Sat, 18 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760795393
