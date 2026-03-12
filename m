Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185F935B658
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773279894; cv=none; b=FoX0397VFmdjucXvJjeytqQToVJqgq2lO4xFPKxGjk9G4Yuuy53dYh2lxw38+m7ZpRl+NfoL9gBB/L7q7LaOJNjhlhfpGPmkre0GhEpomFtymjbWigam+O6FaRFrpGx4gfgL+6agNJ/+kdxEFRNw7dJ4a/1zE3ryJZrSI1ZWMS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773279894; c=relaxed/simple;
	bh=D6FQPfJIY9WazhGs23FsOEm13d0Mle+QkY9P4fJquD4=;
	h=To:Subject:From:Message-Id:Date; b=byJPYBASCmhkMu4H6WZhdmg99soCO/AemDCtKg4OCUzf0WGq2k/2UJn6h64i/f2/bWZRHiPG/UzgCERTLfMPTTNPui2+KwXmAo44XvEamofjQv5E8K8WTGhVGv4nV5TzhbzsQkUudpv0obin9nAH1iVuWf4X6zv8qzWUcAov8ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4X7CxXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4X7CxXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EEDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773279893;
	bh=D6FQPfJIY9WazhGs23FsOEm13d0Mle+QkY9P4fJquD4=;
	h=To:Subject:From:Date:From;
	b=M4X7CxXBvP/xTpNYrPlQle//KJLoNcdZOwqou3Xl73Lmdooa06xAW1LOj/8NMrG3a
	 9RmqhdtzuNkJYU0WXU5IMIW2qSlwzZivo08SRZ4iYJhr/HuCszU1kROO3/jGBgbLq3
	 x4tAdMDwnSsL7SB186WLuLoNggdc7cukOL6YmeXPZWBtaTCDTX/XyEk8S8h//lh48p
	 kBmCCb4ODiRLuU6FRswUuCDvh8n/pAMF3ETSz3lp9KYAr+KAWz8Fx7ewwLDM5/v6qB
	 cwY6tODW0Gbpt14gwldVubXZJ5bG8T7UeOYwDvEN4F2ENL/VPsldOr/Q45O03qR6dC
	 l0JX7qo1Q89Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58F103E2FB
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327989357.14824.15869960132023504272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782b30ae14f1480ee66b3975f949ce51d7a8ed36d9be0e16fa89f08c79f28fb0
Date: Thu, 12 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773279893
