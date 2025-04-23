Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F202701B6
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745410794; cv=none; b=CExh1FAf7aCgd4gczl1//xK/b1Ez2WFHGdAbm+PPkHa7Iy+WGM75CKsvyDVc+AfTHz1T/oFqzd0Zn2IEOgHL1aljZmWKG4R55eAjGm1OQsCJkVRD1GWPGXbCXWlzgYLbPthj0aYblwfXLpjCwI067/6GjLYZcc24X5yPJdFmvLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745410794; c=relaxed/simple;
	bh=XNXwgLk65GGq0A2XaUOOKUMlDq4hLgg3oEUAVgGp1vw=;
	h=To:Subject:From:Message-Id:Date; b=Ux2l0ntb+JdQ3aSzBP8jH5W1wzq8KZuGKaJU1G8nXrYIHb7EE6SlGClPWfq6TV/GPqlFdDkrG311jbKxuaUWK9dJu4KywNAFV3r5kBTcWBrTnUKvIi3p1kRxGtzD69w2zhxW2hlchTPnPg2pceDNJcuqVhbocJ5s0SQlb7b+amA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKaZRtrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKaZRtrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED29C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745410793;
	bh=XNXwgLk65GGq0A2XaUOOKUMlDq4hLgg3oEUAVgGp1vw=;
	h=To:Subject:From:Date:From;
	b=OKaZRtrkWTVphZsR8yRzaeT8ELcbdpjjr35IyKeE7gB0b5GeOwRGOx+AqfCZSL/GQ
	 EY3QqrlH91lHzCF7zaeAGbs9fcDRd+VRTyo8X+vIDGk4KKe/SkKRGXWxeUwIkOa7gP
	 HFfnc+ax+tBh1gY6eGBmRpF34p0SaQMKz8RSDBfs3+G7lYaLGptjWkyp67cqNPJ9s+
	 GVg/5nkRVQZI7Tz6z/GJi022okTnw+pbAmeleGy4fEsoPZKkJ408rnZjG34myb7/q/
	 O+gtXYahOLrSsGOTi7X6UsdLD63CzvmQTdb6Y/UCkKiJitYPsx2ZE3fYAhei9FP0TG
	 08Tdn9Vzt7qbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F3C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541079357.2668.15574748636071024866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d1d6280086a91b5e261829e13764df53ba764a9531e6f06e22eff1f2f2adc3
Date: Wed, 23 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745410793
