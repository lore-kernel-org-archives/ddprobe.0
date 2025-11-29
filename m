Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C1E4A0C
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764396174; cv=none; b=R31ZwOpzMVb3DT4QVpRDijfzdajTNErTwNbJcwOg3M4SqyGG2gTNuxWsuFPfpeOr7YseZjmrqfhEbGYMNeQid0WqPn49BwCFhhzDwK2wQaa0sbE9+jLCjNikVGHda686x4LCACIaMj8TzJ2okgXhFAmIj1fsWEQixTZyxBh/ceo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764396174; c=relaxed/simple;
	bh=iEpAUrs5sR4x/fhtYb7KdaLeWWsggC70H1AhPpPt/FY=;
	h=To:Subject:From:Message-Id:Date; b=AGTmYaeCyPpqSptp3k9HB9oBtH51R2dbA4YrUjgOklkgfNLCG931CXMaNFofERkQgFrCDRfcUv1x+0uHjnWYvfQ0sybYyJxkslE91u52Z2/DgGNstDnAroLqqeLJlFt7icacaE2KbXm45XUv9OCAuGv5/Z+9p2Z2gcJbyosAQcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxU6/som; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxU6/som"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6E6C113D0
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764396173;
	bh=iEpAUrs5sR4x/fhtYb7KdaLeWWsggC70H1AhPpPt/FY=;
	h=To:Subject:From:Date:From;
	b=JxU6/som6RtlcB8Gq4wOXuNvy5tUtvrt2fRmF/oUSupK48M7PKaa6ndr5Aaf/N92R
	 FwiWe3VvQmv0K8ClHj/opiurhc9ttjwkz0L6frc1tlUW0StEmp/luoskORTlgMwWcj
	 NgWnw/RUeExkM/PkwCADx6foGIgbF2O/w7ykvCY4fzZtHbwswqm64y16Wenbxxd4XJ
	 Um1wuySFN/H3/JGWEEwSKFeNgtTjB8Ak6uljnpsmfoZZNiJHMzT1wn+zLpDwl235DY
	 uTlbagbv3wUKdE3np2a+bPlgur33hSX481ERyKBJbQlSIaEvHakkdknuhj2OvrLlJM
	 e42awj2AVYDIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998F9CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439617359.4400.3540361877209697540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379d39408c4204f57a75f2adff3b12e3e82a2a4dd050af4a80f67f136e40ef00
Date: Sat, 29 Nov 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764396173
