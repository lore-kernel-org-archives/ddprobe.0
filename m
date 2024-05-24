Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4239B41A88
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716575603; cv=none; b=o42BI7O8CYrTUxvIH3bTn2RL4A9gMho9xfdoqztjmBgGrtzUX2xYYUAAqCSSWXMEybc36Skwr0jFOZKWkUBdKSz/GEAAhv5L9a6Qr0pnoEBrqPRlO0TiNNSGojIlBJnFKcZGA6gAOUn6ccWHoLDhDxD6wlMzqrzpI7bIyVT3wAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716575603; c=relaxed/simple;
	bh=RUVPsC71Q+l9m8m4QJbSBTyD4XFGyhD+pFfj2P6I2Uk=;
	h=To:Subject:From:Message-Id:Date; b=EyJQDaYnAZifHHkt5Wc5iXU/HIB6Tr4nNoNW8fS3DyAL2QfbnjLr+qU+kBvuTM+5qcQp5ZD3Af3wU3HXWOhcwv8g+29g9fQ5eFOgO3JnKXBsuVNwwGOrjFy/RM8Twl0EMrG8Ex/CUwagOhPhRUkFxOKdsatI5aze1XGm0UV8RPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOQzjgw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOQzjgw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D537BC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716575602;
	bh=RUVPsC71Q+l9m8m4QJbSBTyD4XFGyhD+pFfj2P6I2Uk=;
	h=To:Subject:From:Date:From;
	b=SOQzjgw+6jOtlxpP3nNRxKbirHpMUi4v2/nvinwemRboo4V67m0miFl4mwO8pg1ZY
	 NUdABx6fn5YkrcNEsZvb21TvpmzPIn378cq2gsquYfxxsfaA91wf45vlcqXs9eBhjV
	 47jjwmrS1eL4ee+d1xvAx1lux85mpLllA3GVPDdt7/WxriotrqmjToUJfwpnMAYMKf
	 7jdKh/RwMzcLeguo5TSQFHpSPgur18FW4CWvDw+aG1tc8r36pX/nDrmB6a2JWM2NBy
	 aytxbu4gNB4cTOn7SblWQ1f66zrkGorQeHTC+GJgjc7Pzl4jpEc0NiJ78fYc8Xanvl
	 tcr5/wba/HxKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04ACC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 18:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657560277.26419.15942877212676107733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625c9831329c73106946db282dcde6bcb53342930f17e92b08bce54302b51685
Date: Fri, 24 May 2024 18:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716575602
