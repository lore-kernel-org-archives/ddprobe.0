Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FA64A21
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726266354; cv=none; b=OZeG+NrlAkL57OP6EPWiVZzoVIlrUrgMoRlbg3FOBT9D72+fzpfJZhoMDGmT9s5/mtuzPqrbmmQL6Acbxu6aiyRHcFk2om+820I7VeYcdxH3RoEzUi/KKGPXB3VwBN8Q2i9vywWw7V/Ec79Yj2xzHSaHtexD2FN5XnJzfSiEgyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726266354; c=relaxed/simple;
	bh=9vaWKy6Qv2ZYmPvtM8BUiquSH/J6oGt4mw3feLSzvqE=;
	h=To:Subject:From:Message-Id:Date; b=PEI6c/s1sabIcq5VRSBdW79WenZOkzbHJwT1xMmVr9yl5D/Yj6e2HvMK1G/Hr3R6cE3GO/Poc068QQyCCK4zRBpULL4tGqIkNM/m9RK7JcsL342/4FGcIhQ0rOM/eAe4nmCIDNlm5/ud9KovCKXcvKAFrvI3WytrhmLzXYFuyU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrMKNPrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrMKNPrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF116C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726266353;
	bh=9vaWKy6Qv2ZYmPvtM8BUiquSH/J6oGt4mw3feLSzvqE=;
	h=To:Subject:From:Date:From;
	b=KrMKNPrRlQzlyZljZzvUhdwOQ4wdDESNFEmlWy5Hu6KpG49oRqXaiktaIEyTXGIIT
	 wojSuDDgBXB5OgUO+iUQxqyYNlzwiiZJQs897WuUUbVpc4HIk940cpGq/qi3yIiTc1
	 mmdLrqnnGwqdC4zjvbnPsQHruISzCeyOg51gWHa5LMvwp8VhknFDIIFnsGpTna2m9h
	 eLdOb/PNtM1kJ4dSJIKyHwj46IiMjk+WMkI1kL9BQSID0eKyJzSzD1nPJWFkWeFhtw
	 EyJE22u0kpOEuRuJW28VKMCSYmLJPAVuox0JH1ZJ8IbB88pYbRHPIARJYMjln+C29l
	 AtKsFSn2bVnlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97310FC6182
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626635359.24345.13448622821414643059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9904bdc36461caa2a8a52fb4bcd53eb297e1d307dc0a3ed9f0ff49edadc814ac
Date: Fri, 13 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726266353
