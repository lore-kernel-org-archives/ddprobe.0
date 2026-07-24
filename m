Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5818448B90
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784933435; cv=none; b=aHYpk5Hjmy/JFMrr9P1a6PjFnz67qpYl/ppvsTxYuNrcpE1rt0j/W21D4b4DIXz3SQ3sIu5bXSmSINMObu1Pp7uHhFGIu5U0kyX6xUQk0wjHcdZqnVT9GvsUvpKW7PQQnR9S7TZtK3bA547AOFwRXg6YkkZfqPTyq8hn1gNiqPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784933435; c=relaxed/simple;
	bh=mazcp7T47fecAvvFmR2x6qA68O7LQvzNFXtKGv9Sm/Q=;
	h=To:Subject:From:Message-Id:Date; b=dwW1cCh0dHn/CMhpSMLMUZIdttNQztdAddSlmVQtkfM0kzdJlc4y6rmAK1Yk4koez1IP36jw/46OBH0O9b56E7gBmd3HHVkjAGLCGGHf7tCzomI87S5MZjV0cK8wfGnzoSWE5FL6W4avzdaEOux+lmIb0NyOgaJUcfDBxGoIhIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ua2TDlaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ua2TDlaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC925C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784933433;
	bh=mazcp7T47fecAvvFmR2x6qA68O7LQvzNFXtKGv9Sm/Q=;
	h=To:Subject:From:Date:From;
	b=Ua2TDlaL9P4W3YegPKpzvOHuyQ/xsGFbkq1IQoMA+GqjP4d2Fbuwf4nd2MPTMzLJf
	 oACNUjJFsJvy26cuBpoy9K3naksDjLsVv5kNeu5YKrS/dPzsHXrsfHFHe2qbYrpUn1
	 hNWejtdE6nBanPDlyebCrHB9WY7iEt5EpZKFxs6JyCE7lSrPKJTjD6Jt6On0ZPvjuf
	 L5PZAIhvI2uJoLZNkxbCJGOueY13btGR4ZQSFfJdB1pkWK0IAOQ1ePR/oPNWTvcF04
	 2JbHpW2SuFWnLWYqV7CTOYl9khLoR7zKFCfzvHF+W3DUc9aU+yyi0zU1EnV/4keFCd
	 g9njmy3zv+rnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEED5C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493343368.20528.13034812437752807545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1b723569095a939b52330170c406754ded007c675d5bb587f338c2b53d4a4f
Date: Fri, 24 Jul 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784933433
