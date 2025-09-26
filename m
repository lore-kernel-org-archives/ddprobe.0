Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ED815667D
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758919795; cv=none; b=Q6rw8oHSnXFdJdWSLsEfJIQLiMPVFwvhUAJVXjP+JwngwSWgMJreza4sJl0GXZJnOeei9EeYemm+hsEgb+ueY5KX7BM0RRh7lDvc+4Yu42ow08CY//FZIvWYI4wf1XyBVUVV3ygn3osm9GucoUjZNfCpQK5JaqYIGBJWBd2d1mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758919795; c=relaxed/simple;
	bh=AvF2oBj59ZHu8JjXVEV3nu2rx7Sf6YydhU3/XKtuYwE=;
	h=To:Subject:From:Message-Id:Date; b=STXBSY/awZRFGNJtggRRBA7bzhhthz8k74HHxbftPIamaBDnB3LsvAX8A0c41Koc4UFHo7t9h0Lf/JnsqwChI3X/iAZQorwlYEwEmeN7DKj9TsIWk83IsF0Qs1GuGA7809RpCNE4+oocJGDf85jOKhTQ7i9r8NhWQ3Y2cmxXaZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIPG4mAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIPG4mAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A21C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758919793;
	bh=AvF2oBj59ZHu8JjXVEV3nu2rx7Sf6YydhU3/XKtuYwE=;
	h=To:Subject:From:Date:From;
	b=mIPG4mAioaqJHk9/OxtjVmkLQCnSivoA9vBzN1fLh/0PyXzkqfk9+ufQrusVy3FZM
	 ert6TXPD1WQQRE9mtXtiw0fhgLKoRS46WO47LEx/xn4wWeALTq89jLh2c1+Rmu54Fj
	 DSKtH/h+x/On4yjWftIaO1dHILJyL04mk8M7BhuJxzq+lkgNkUyZLqc3CwcBAJHqub
	 iNwJEh/YfI4qac95beo+wVpB7foVbrjj0aW9cSefQp6RN7T5cp0kwPof0fR+BNWyiL
	 MJYrX/aYjKRJkxp0QShwXyoZPC6fWPALAANfr9B28+G5pusZbty5S8amysKOcUHMNs
	 9qptWlX/ARMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BAACAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891979359.4523.11046290330943955026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e18111398cb9555ba6ba41c21d3c4085e94100987180a1bbece9ccf9e7530f0
Date: Fri, 26 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758919793
