Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376B9BA2D
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743398394; cv=none; b=Ray9GduzSQp+rNbQaa27XvE06BkXbMfxZNsk7IPzVzGBpFFxuXRg2qTxzE9o0rytLWQ9SEn7XwW4H2c37GLQKzUixTdA/OtO0aadu3XgzNAajFbZAH8fjf2f1UqWIYc+rj4/YwEmZJhrKNhDB5fbpvDvXMqtuqPOM5wHtm6fyHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743398394; c=relaxed/simple;
	bh=Rue8iq3o86vFrij0r4Yrm6UgAwEFCyWUa8rtl9+Pelg=;
	h=To:Subject:From:Message-Id:Date; b=G+NPEg+ozawSMnV/NT1xaAtGwQFblcKfsEg0E2SosIdWcZSSzR3A5jjLFt9mW0qz/a3Z/P28ibDlahCP/Svg5NQgvZ3jXlZnT1We2IbKndioNRNn3h/5uuNxPOv6e+IRUOEcmdWv1bayZa3oom4sFUTLX1Rq+JPPMyRxUL1mlso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=el682CSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="el682CSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD790C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743398393;
	bh=Rue8iq3o86vFrij0r4Yrm6UgAwEFCyWUa8rtl9+Pelg=;
	h=To:Subject:From:Date:From;
	b=el682CSS+aqejlFnpwW5UNvVDH6Wra5MuwHt2+JhhoZ4eGArIh8lPP1y8TyFZG3Hj
	 ShPuQzG9o0Eq8OM7Yrt2Z/YGlAiKacWhbxUbThXjw1BG9zGx3hiLJ5woqgonyIansQ
	 sFclWK0mb22XMpehj7YhqLdzC+uIqlFihgofXSr+1SW/TdxdsUhE0/vPjxddIsUfg+
	 ETqqLpd1L+TuPuyspseS8KWBiUAFwKDCqSOusMN00o0rjaZ6B4z4gq9+BBGHIDAJ0L
	 c22Rizc3bDp8YhjFeefIC7hX5h82BDMWu3b+RcxT8BR6t55Vy+Q4OzGhIY+l7A5nOl
	 cfD8JntlJE+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9864CC36017
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174339839360.29988.1278702742848603351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82686720c8316ea48c889640925cd5ec5a33480938a3c43488e032f9f6c433dd
Date: Mon, 31 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743398393
