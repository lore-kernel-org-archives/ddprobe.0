Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A1B232785
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763836914; cv=none; b=tNB3L5ZLq2vyB0bXlW8/8BPsjA7a1n4zyDRVuzytm4IJcE+mvROzsQChFzCuheN3baz0JJmlxfpEd8/mm5jwOJf31QPsTb162B/Amr1l5hqATPx92GK1qaLQch90txbrQpdP+m7GUVrpxtfP76P7J3BUL56fyG6IjRnQVCbrwYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763836914; c=relaxed/simple;
	bh=putAMDV2GQLXO3Ay4c1QtX6YD3X/+hHCCyKsihDwhws=;
	h=To:Subject:From:Message-Id:Date; b=EImewpe501xrBVv5U/DxUrYidHTUpHJI1HerbURR2N/c+bhU2sjdkvAcxtd47EcbUgzev/RmJ6VUup+TT32LsK2YF1ErUFg5oUSkSDTRQho+WpF2zP7BaBYC5UyChKxVPSG37ld71ZHx2HIkwD5C1uOIfOBsSI/30+qCAoqZ/oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZcgEuCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZcgEuCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E5EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763836913;
	bh=putAMDV2GQLXO3Ay4c1QtX6YD3X/+hHCCyKsihDwhws=;
	h=To:Subject:From:Date:From;
	b=jZcgEuCDiMDj5sH1RkqJVN9OPj9YoXTf5Ay+f3fE5aE3EHLawZwSpbxuJHLekVgtp
	 vkJlR84qpNfyJj15zpa71+jnJ1Sc0I0awa5aXt+7LSIfev0nMCuoHcVayXc84RwKSq
	 Xv/dhSmS8+OQp//y1pNAeDYtjjiysmMbwfMrnYq7E0vibtnBDYBP5eatrxCn4QLkdt
	 QGEja6CgNhXYn/5WIxO/hySSI0jEutEGKP5AY451RvUV0YVAvXpkaFvoASseNLujfb
	 FXpL/5CVRD6yAJZJDUC9Vfjj5hSeh+mxH8XrjfogP9vBZZwRhCJi1ap8wp1WSN5SoC
	 q7enwCj6OrOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9138CCFD2E4
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383691358.16994.12373759023774101075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdaa8c4044de94232d6fc4554ce8d794b43125404daadb7a58ad319e47521f86
Date: Sat, 22 Nov 2025 18:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763836913
