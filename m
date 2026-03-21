Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2986853E0B
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774131894; cv=none; b=kRmBAyPA5KPOPU0uubakZQkv//VmV5/KsDrvS0OnEmuUDZcctWO5qyT/U9H6qkZiokl8xxGwetAhKoNRNABXOZ2S1iI+gespjFR2MLaGy9Yo747ECFj2Ne9mTCFmPbClHa8VM2+aA5B5J0Ph/PLqTCKteGr1GH9wG/kMvVPI9t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774131894; c=relaxed/simple;
	bh=aoBh3sh012hNidxV8DjwQBOM6P658iL/UmKNAbokfIs=;
	h=To:Subject:From:Message-Id:Date; b=dhEKGQHdjCLShCID+xh2sbBGtuEps+cEJ2xr/Mk7AxYZePdZzZITE07D7wtGq4I0xZsjut3OAFttQBe2mS+Y5GfxzZYXwKc+wS5he7FN8GZvbjb2MpDSPVOKR56cFr97Ks3Xvqnu/cY3guURBCjn0RZQTzVuY9EVIJly0Ro7SuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYD6Topz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYD6Topz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2463C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774131893;
	bh=aoBh3sh012hNidxV8DjwQBOM6P658iL/UmKNAbokfIs=;
	h=To:Subject:From:Date:From;
	b=jYD6TopzfOSHiJ5+gZChQCDHXbEEH0P3RsJ58NVvrYH23dpKGWfDpZs4OwUfz0gVO
	 C0PUgY9UGgk1HQUHifJ8INJLu8Kiqnu8L8CLuS8uU21IHhiX0xZyRzPSsEjjdjxxLN
	 wt7k/3UZiEGlOTz+9/sewGAPw0hc2RF8vnJbagOaulSGONl7QSUpmm6ngUAAE2P3D3
	 dJQ9yFCJfF825BBsnXbbqqunKNdsHfGyZDJXKj7XWKIEQxNnahGYlZU9gFfSqa5jmL
	 Genf0AS+g8bEusE6SlH4ap9PNPxADrrQ2dLZ7rFqXLVGgJ2v8hA9enVcXh3IM3FaoO
	 FnWGfs1VEKycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14A109449D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413189357.25040.3264418048561174135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dcde41dfffc5c83f64bc55d605ae9484fa650451f768827d505cf4d15f68f4
Date: Sat, 21 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774131893
