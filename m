Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F961C1F05
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746427194; cv=none; b=kxcaEA7CaBg+M3IGwAIAeVcW5l9C+HZ13CKHrUOTKtCA957IfkMS8gq5rbcNTrjSzTXFxOS/1Tl2zSBVRRvSfYULS1Qo/hAnOnjBJX0D6yQzfQxE0dTS/wFDNpO6TL82LVj4BwTPRMVp+VGG7phmDpUKi6J5T3n5735+1FWVjeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746427194; c=relaxed/simple;
	bh=3bemVy+U9/or+AKEBdQ7CaC5150Bt104ASSNkC1YpWY=;
	h=To:Subject:From:Message-Id:Date; b=GRUO4YdqGJcVtqLCAWz5NU0ZclynAc4RtBMAIjOL3IFTEVNkq4ItpCoEKiN1E+6/6JsTNwT6Jz0Q4+TOwnPn5/N3+X0URnQ+SakMTrVuU3jRTBCdQ8RlcebG4uqGDV2Ek5VwDGj3V7Waj29BCjGU3f4MHkWugCQiP1R9kVz/lW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHSY5DSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHSY5DSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF1BC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746427193;
	bh=3bemVy+U9/or+AKEBdQ7CaC5150Bt104ASSNkC1YpWY=;
	h=To:Subject:From:Date:From;
	b=CHSY5DSnem7OAPX/ygSSUsv5rTH6R0xylJoMJKdBlWSttEZCCRW7IOaa6TRMgaVlP
	 zCAFIxzMKOgIYjBYyr7wycyI84xvc5IlCun/Brc/1owrTasMcs1RJ1KacfbGpBptZw
	 /nplen4aPc6AgmH7rfJQxfibNuF7+63CEe4anWn4pzF6bmhmxEgqzpzI1WeqiNdDer
	 GBQA1Dxz5090cvSkmizJRRGXUqRnU/WXjVrhbnm7jeqwA0WuCb9V0GFNG8RcWmshcF
	 0JCjFPwXuEt1eKpzExCfJUUydhmWBNxVoHZA7OQjYSLk8LPpZX9dYjAGk6sDBiCO86
	 MzKP86NJlpLqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4EC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642719357.23629.3248683511466565966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6116a4da7beb6730f4f362e9325e21b0f905ca935aa2a721e06d2814bf5872
Date: Mon, 05 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746427193
