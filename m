Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3993F1BEF8C
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746307195; cv=none; b=j/FbIosS2aywumxrcvW7w9TzMGJLxn2Ul/lTOgfSMuzt7r7h54ys1cJsHncO41Vk7Y39kNFUX2D7fRiDp0M4lRNHEijbOg/K8DpRLal6/D272fAK/5i+RcZNqh49tCoNiIlSprj1wR2GnusgXIJ/6qVHgAoIXlVM200wCNnDh20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746307195; c=relaxed/simple;
	bh=pfPty+N2BNntLUP+Ylre9+cpYoxeWqStE4UxjUY2LNA=;
	h=To:Subject:From:Message-Id:Date; b=RSRqxPmiVMAFZ2/4vc/FHki0sNkejaMU4jxaWf3K2REusiTUQkgMcZ7WOMU8swNNrM16UK8reDtNNnzqIi/dvCfgTS66NMlw6j0X0Cu7Njb+I8zaih1wUmydk+suu/HZQAHgkQbn66D+6uS/n4aBh1Txo9DRPwNkwlzWtsgzCEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AllHryIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AllHryIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEE8C4CEE9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746307193;
	bh=pfPty+N2BNntLUP+Ylre9+cpYoxeWqStE4UxjUY2LNA=;
	h=To:Subject:From:Date:From;
	b=AllHryInfh3kH8bAMxzwgq+weK/IqzLVeliziQKr19aY4ifMD/BRkNjQScN7N3jQb
	 uCv22O0bgxw5CdXWNHCfAKuzsmpydFwG5CoY1enMoyhxqftvedt78/K+JduI/HXf7T
	 SrfukuYkMb95CjjrwtZrfkunBqf2F4emgCFHQl4FmrLiui4BbwlZrrmZasItfx/Tny
	 T2r4KhsLV3uc4EuChZdJejml/iWjjG6vaorUySB/Xu0FWqNOTazYHxmpd6Elkg0oSv
	 7c/vfa4OwhFlYhHeY3CTRwvY1No4N7fa2M4okP6QjRkCMuwm2QnXL67UH8/78fnjMi
	 IYu8e3wEGAZcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E329C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630719357.19140.632919296042170941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6b4a4d172d2dcd16f27364ee9fffd568641053e6e150151099a14a674cf659
Date: Sat, 03 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746307193
