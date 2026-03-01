Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B1A175A89
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772388894; cv=none; b=DXIh1mHP5+QNbNmuezsG30RFQxm11iC7BAyynqwgB/V3XARKLIWfhhvaOs1J9FAG97mv7qZPedGGeJHaERitBvBpR9u0SKfYpWC5GUUqUBm7tH4V2yodt+d3ObzA+ZQI2XWQtJFa5sMLbbDHA38jMG+91jBuGubEZYJ/+/UgN3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772388894; c=relaxed/simple;
	bh=S4nFUEFOxRMQKutXJBnbh/Daq2rZCpaqrGW6e1A4EYQ=;
	h=To:Subject:From:Message-Id:Date; b=FvtgK/xSNVgvu4bffyxC42/RgUgzOO2c6v5dHKks21HjS2NuuJwH/yPzKLC5EeFrl2fpXpXHXmh40BojKp/ew/2fROUtsQFv0WJEqTcXkiH3lh66KStwY1+zoetECS23zdnZLicHfLbjK2jOx0Aj5utnyYyEXa30GvlQGR8YnnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzVi25jM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzVi25jM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CB1C2BC86
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772388893;
	bh=S4nFUEFOxRMQKutXJBnbh/Daq2rZCpaqrGW6e1A4EYQ=;
	h=To:Subject:From:Date:From;
	b=UzVi25jMTSyTboxlkcDeKvVxz+YOuI4psL70OWJ+EltlaE0O/sqDep8pJ3ZsMAxDe
	 6dhyNRgIydE5702hACIGwoUpH9R2xwdmnKnwqH8Z2RRYGMCvkCM4qlxcXwLiyxWlrd
	 1cAZykdCJgS9hlrkpX2Q8DLx6FxOlz7t8n08Q+VivbbPkmMnqoyAgcDkPkI1j+ONWw
	 MBZavXqtuZUObOClv59kT8nArJ5xHV0AOb9lPLlJ2R+f2o1pPCTf0nNX/h38KDia6u
	 +V5QFTkFM7udR+uRnQ/9w01DMUhDn1B9BDmL2UWFx61LvU3EdUU1tZGQQrht1zm7BW
	 TGK/nDdFdc4vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC653FD0073
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238889365.15431.13959058331788461833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d7b3375de1d9b2ccad85cbbb0d6d77b32f7ee21aac8c46b7a4a639a088719b
Date: Sun, 01 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772388893
