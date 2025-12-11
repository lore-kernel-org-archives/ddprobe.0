Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D0D2AD3D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765467174; cv=none; b=BXMJsnBmU7OReit8T+4EyAfATbRm2Molw8b0Ko4JWuZLRu/bIcqwZaJ/Y1Nf1LNcBNXHjYIeTVnsi8nqDZ/kS+MygoXmvuzYS5KaOHs0biq9Fn+/z+TdMMJNgtsOEb9ZwjIS/5d+0+vKl5R9GRN7fJ4S+3+g9Y9g6xa2hmLPRMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765467174; c=relaxed/simple;
	bh=93e1Mr7pJErxC0py3UDFJNE0LcXdE/qtF1j0gsrPJ0s=;
	h=To:Subject:From:Message-Id:Date; b=Xmf78t83DH0MmiDh7MQMw1rNF+tcQIig7/5HpubfVKAnijdyZDU4jzeNYpIZv3Ojw/U+UNuWuTYLDJES020+QD+hFsJsjwqNUUP6kT+umvudP60Qbqy9swkek9SmfBuqVmiB4hsn6iT/U0+D2EPwVrF4rw7yDU8i9dT5+MuRgJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLpGZSnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLpGZSnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB21FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765467173;
	bh=93e1Mr7pJErxC0py3UDFJNE0LcXdE/qtF1j0gsrPJ0s=;
	h=To:Subject:From:Date:From;
	b=GLpGZSnE1+MMmhA8LpCBapStiHysMDK2n7P+Tyb+cwD6cXm/ubDaw/8qWbtpGuIOR
	 oG/mppXQWWAcQUtH4doMXPtn0ssj3YXp6Z8dx8iOswGZ04vvbAolFc5qvAmyFptkdA
	 G/at+FY7G6VRE/ALExYSEaAwJYS5gKObykyakA9fEfKa6Dhv+EYn9SckcwmuB0iXml
	 1U+ScT2Gfp9K5CTV3DajOtUYY0sGeoaKe7f70eBWjDjWJkvJbXpY+KNJgQUYT5yNGy
	 Ty/RYzpRhPyl04YeOvrelUwcpVH/TgbrDgI/uTe3CHngecmucT0rqxoaqOxjqWkuTV
	 DC5zsW1L4mMfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532DD41D58
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546717360.12419.1241917692244020043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa4e0e678c425c55f906569215150a04ddd0cda17f003ee6cc7df74d893fd8d
Date: Thu, 11 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765467173
