Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2737572624
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746700194; cv=none; b=PpwlcAH2eRS1BSkV8TQ272m4m82/Yx+xdUELERHSBnA7iHYHSUboLJOcl5EmFHQQmO92P4m/rGFkqABPtWzfgUQNFp/EweKeRfTlAZSXjpJxcrgrP6l9+3w4Y47blliS7q/KUI1tDlWp46/Ds6OaE4rZWV0WDXzi+PfPdu0PVDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746700194; c=relaxed/simple;
	bh=jl0U51Dc3l+MkMQHQqtChpZ1s9H1jeKO6NuNgR+gV6w=;
	h=To:Subject:From:Message-Id:Date; b=kbxjKpjtLFA30cn/dYj3gZOJlGvG2k62q/OjylSuvixI0ri491y0Jw3M7u2mOQ5ELlRil8z9Et8vu/cGJ99LZUTl4PO6ZyUnZFpOykrBIiINltY3m93WGKg0TGXTedMdTiLvB3Qzc7BVHX0NoTnG6pweEseWYpiMimpEp79CrfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9Etivno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9Etivno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746700193;
	bh=jl0U51Dc3l+MkMQHQqtChpZ1s9H1jeKO6NuNgR+gV6w=;
	h=To:Subject:From:Date:From;
	b=S9EtivnoVlrE0D69xKJqcgKcz1W40qtX+vI3nhUVZE6RopaFfybn82RynSnS9T2H6
	 055RcK8B2s44nyX5s+rdHgSzLBNhSBXt1GBQNHfdd0tvl3ztrgF3oZSS+2Oh7oCRZ9
	 iOfAUYavweFPNvVCbTR61n/NsFy/OiAD2jmyOpr3ODzIeAJSsLLFETUTBlalHoc0vW
	 cZtr8bEndLWmfBqAEMwQHbwNGHQO9Jxyvh5GjSfQyQ3aT2mcwexP2BazPPXOETGm5x
	 GHSTeWYZ/V3zgMKGGZtlLSjd1zZ9TKULFCTcdyTOSWqc2vsroXXiOix0XmGcLFPiFK
	 as2DRl7vCWmCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91941C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670019358.3026.6488103056968278250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97270d1990f0a2892baaa803a740a2d5ad1fe77e024144cabceb98e42819bc4f
Date: Thu, 08 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746700193
