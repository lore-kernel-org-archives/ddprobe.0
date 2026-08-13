Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4274C3A9D80
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786645834; cv=none; b=JsJuM2PTnFnvUjOsKLynoZmU0e1TliSjxmahgZs9DSws7kPX0HSKlbOvSRBXJ9slnNYjDGGjYVDHYdjbXRB0sZFOFKAW08nwcAXdfpyR3qOJ4WC/5TyO5eMWmH7BwLXbvZMS4UW2jfbipgVt4EHQggAwcZCJX4tJQK9IP+//xDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786645834; c=relaxed/simple;
	bh=3kiYrgcsSksZfYCUrA6LuTeVeHKHE5WtZ0Mv4Th8fTw=;
	h=To:Subject:From:Message-Id:Date; b=bjUizAIKgoV1kJl8WS4RFj0xLZweGJnAYztdgTJpEZ78wqcbU4AO31d3yGAN2TjdwoGcfdm3PJSD1YzyXvAQZi33gwimpo7Eqk7lzUxPTkfzsJ5ElG/oWs0Bvv95swC+Vf8w6z4I/n8fkZtYnkQdjMryozDmz5Ysez0YD/E5+WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUR/+513; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUR/+513"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91CBC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786645833;
	bh=3kiYrgcsSksZfYCUrA6LuTeVeHKHE5WtZ0Mv4Th8fTw=;
	h=To:Subject:From:Date:From;
	b=OUR/+513PpmC/fRHG4WYa5mx95KnAgBPaBbUPBwDGse3GTOSzg7IBGRRac/koCvc/
	 62Hhuod+16mzuWDdy9O2lz6CXuYXzuGhjwLMyqAsKjjdQmgeRcty3IRM8gCypukf+X
	 B4G70WFXFuKLVLPwLe6G/jar6kdo9yYjdVN89ItRWamWWbIpYR0KSI5Ejx8yX5PnjA
	 fUB5dUxwhBmw9WW4gbEPhYcyZMxCXpIdgGktmdPQb5qWW9VUydhWRwtz0mg+7/OI85
	 CtlHyQYJ/PKG/Yc0tTc4TCRAQsvW9TWmpHymYeQ2fPXijp7uTuXFGjSA9zyGNVQiLn
	 Iy9TiYFBp6ZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A889AC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664583368.21526.5233946730037329229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9768004d2037bb5a301c59461f3eae340dc9701af10771cd854b5041706a2644
Date: Thu, 13 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786645833
