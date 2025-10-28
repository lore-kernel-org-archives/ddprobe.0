Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BBA199FAC
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761618594; cv=none; b=JuqvOpFMhBrMUcr2484pBB/2lfcVszo55vASQJeMWjXQnVN03OKpTCqriIVCrZkmduq2DkHySSFhZ+8vByzf6I7UMaPNWYoNEjeMw+qPzd/u+jeQZS+ag4XMPE+M7cjKXM0joUkyqypRJHK/FgEzJRU9HDvXBSr4gmgDRoT2z4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761618594; c=relaxed/simple;
	bh=LB3zK1tnZ+0X5R+wIt9+XefImvyIaAFTl6xzd3f9TMQ=;
	h=To:Subject:From:Message-Id:Date; b=dli5m+fMac4vOxO0qi2cguhUA4gKmuZ/eGlokBuKLLPNLEjBlrjqlBpszfJw4r8CAWEu4j2niE1pz/vB3604YYPWe3sSQ79CdIpHFjSwvUc66mjF3aGYmXd4rykBTGWdXRlJCFzHKkiWd2kwh4YSuqiE03wWNuc6xmXWL2kt95U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lj6adk0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lj6adk0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB8C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761618593;
	bh=LB3zK1tnZ+0X5R+wIt9+XefImvyIaAFTl6xzd3f9TMQ=;
	h=To:Subject:From:Date:From;
	b=lj6adk0yVMWz8ZQVETqTbRLg+wBcHIeukVoI3dO5EeN4RQLj9WjPi4UTfWqKy6XNC
	 B9y1WImm3IhOBNFkTpwpC7BoUS53FGKCKMvtq3SwsqJXwlwkr4x8v8sOgYkOZ/UzC/
	 Q4iL5GOm2IiaJfajeMITJHErwADzICLMP3OkVUAwNzigLfV1RKeaCg2x52qD8CGes7
	 yRckcPMPgIrtNfSX0seSrDFzfVg7AXn2yKfSHs7CImCDz8pWhYVhL0eLWCik3lZYyz
	 YPBYeXF/tfbhZglaP2x6I8fv5Ki3AbneICO7BaDqut/QJ0FPzP57wUiU/2CVuTeP45
	 mmuTKEgL2RovA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D4BCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161859358.27117.2186774932165607152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80daead378f335339283ff3895e596df198106a5ba593ec79a8422a4feca8586
Date: Tue, 28 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761618593
