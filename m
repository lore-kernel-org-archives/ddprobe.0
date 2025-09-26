Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F29735950
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758865794; cv=none; b=YAzmSghlZvfxq9mqaK0WSJOr/nXtwP4YAGufiklOwpWIeNg220Ov239/BU57dO/TGuqItWdkqzEzAU9ZVoxL0+aL1CivvoSIKCjsarvvhFVgq45/AoS5kLJdgKF46eLhpIP9mHHjBtHJETARYsqHJSiCIPnc0U+wTeEGkLSIMQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758865794; c=relaxed/simple;
	bh=Gt1HOMmdArYGZsbxODJsivXu9ONZtXF8iC2lvT1mbjE=;
	h=To:Subject:From:Message-Id:Date; b=XZmLqDLaOEqMsMgU5a2xf4iXP85R57kN6WDY4arFoy/KgqfvIqs6/wOrcmRX54CQkGtbDVyZ7squ47myrL5oVvCfiEmkeQbzRF/GvZ5dUdcM2nDHdYFDLHcps3/Y261JnKj7lOzIK2o3gPctXt5KDNtm8/ULDvRy0nlHJQZWQjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noqYm3eH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noqYm3eH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1278C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758865793;
	bh=Gt1HOMmdArYGZsbxODJsivXu9ONZtXF8iC2lvT1mbjE=;
	h=To:Subject:From:Date:From;
	b=noqYm3eHB1HPKM7hqn5Lr0HfeXdb7R+3xnWttH6w3ouVlvfdw3NCz7hKflrJWv/Kj
	 QEOWzJrVKC/750mC6yqEcQzN18qzPJdUTozh4Cp2V6wvZRtvmvm4v4BY7yF9ik5hjz
	 9g+Q5Y7wfwY+PaJwIehkVU8NFj2V2VieNezyQnTI0GA+P3CYT8QaPcODKu1+d2acAg
	 lSRztWAXKxjtcRX8mQs83/RavKnKUQ8PCaXVqbeWPR+ph0Ej+XtCjpnbH0ZJVgPv79
	 Zpc2zPaB3tJZbEvUqnCCqqFzsu/FiFbxJ5He2SLFL77PH7NcoxHx3KEDWOK/KqAp0+
	 sWzqf1ScHuMVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFB7CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886579362.29898.664592764879059306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337e04da9cfd781c9957cc79893897299288dad5c2801e330e9b3820903ecbe1
Date: Fri, 26 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758865793
