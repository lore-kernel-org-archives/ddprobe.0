Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416733BB48
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766864034; cv=none; b=qfIHPoRQ+IgrzSSY80YJ+DIuHyq52CqnKZDs9aooWpJrCjStiREEJbDXbOigbeD80VgViL4SuFezSQmDckUJkaXSW5cCQmKfgvL+xUfzs/qpRjJJcqwIRlkYMRu23LLfZ/0fB+c8pRjYF1ycY1dYm6/DxUSL3X3MYGhx7BdPoBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766864034; c=relaxed/simple;
	bh=PLRQT2rJx6Wqqo7t8OIGvFRscXcDQTN/Yrqbx6tjtm4=;
	h=To:Subject:From:Message-Id:Date; b=KkKRv7Kb0mqKmj8TjgZD7Xxt4/hXf0l8sRZvGRrF8/TwB4I5p3mLbLHlnbo22yYqQJTfJ4gJCGYiBZTu/GOAYdiqeBx6GnTQgskrviBc5AVYYwNfeym6//9Z1qwSJnej0wihK2dVpYFx2aXpQKoOzSd48L+sKnpxKnamR2nT9AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTVXDktg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTVXDktg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52D9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766864033;
	bh=PLRQT2rJx6Wqqo7t8OIGvFRscXcDQTN/Yrqbx6tjtm4=;
	h=To:Subject:From:Date:From;
	b=jTVXDktguwAz50TZo0Vkwt4UxCKS80svqTL2mQhgat5pyr2tCTFvJyEVgCc6Yjf0u
	 +HkoGKcON+DqmUcXMVt67fELptSXYUMc4NuoD7V+agoSusPId658cnEng+m/hqvI9l
	 nL2qN4iht2l8i1g65WdfRoJUCi1+1S7XjUF3oGPs77ol01HNth7WQm4GqE5QvSMQfg
	 NHU7fJsbB6K9OVdVmQQJZGvUWPo5FOtItPVQqGiNLoU90PDjV2GVq4fFBiLOGj8/R6
	 R1dGo5S5jX98bFMR9Mec6MOHzLpK545UYC6YylXhGXohXIn7ubOKGyqrKDq8IdOpbY
	 XVVTeq3cqtK2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E86DE9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686403361.13301.9170655200061469429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a517d832f0f09e4493e89644cf5bcb64f862a11cf969c1dddf05395c6d00d60e
Date: Sat, 27 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766864033
