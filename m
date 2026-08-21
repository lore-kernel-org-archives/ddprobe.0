Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C2A3769F8
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787349634; cv=none; b=Zj/prjzrP4rJun1/3iq9DGRWtk7CXq3SGPwmgLqbxZVBm+fDpZVXkUiyk6g2rji+7SfxBYjXFqCeQkka5zoQ639ladQqAqGmMIgbTJASlH/ZxADKB7AY4i1J3/6+Gz+LODBUAY+UpfJIqeg0zPEE0/tsjLfY7OMzFXv8h6CX57w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787349634; c=relaxed/simple;
	bh=5xItUKS+xUnilXn8j6bDTLleIwl3SCd7Q+O234IsXos=;
	h=To:Subject:From:Message-Id:Date; b=V4KJ8sAVL++diEic8JkqwfwCqKgPdX2lpNI3GNi8TCPlp6DX3WpwNAaNS04QVTuXY+aoLsMmE2vFy3lDOGKyoO1uGD6/ME8QAdKCDQO4Zs3vUSERloHcMcjM8gnk5rTTNsZL1LLP4BcBI9bzTK8y6x74tBGMhqy1+iKz4pSuMh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRh7TgiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRh7TgiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FA5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787349633;
	bh=5xItUKS+xUnilXn8j6bDTLleIwl3SCd7Q+O234IsXos=;
	h=To:Subject:From:Date:From;
	b=PRh7TgiOREHbzi4Xa6Gm4FvXcCCMw5U1fsfPrpg/XOXY22x9kzqW50QmNtomQRgjk
	 JGy6Dg16VglgH70/nvvjjKtEaN/4werbPsiuqGKBhEo4J6LbXP1vxXDKWuR7w12bBJ
	 qJn5h5on9EUdbEFfKkI4K0OFhpoy4kLXEwV0yNuFX4RZClkUc34vAK37j2u6L1ax/j
	 qkMUa0uXaJw2Ecj4NY518O6z4ZUqs1XfHfGQ3G99C+s23QltL8LjSfeuNqC8bWWsxq
	 qo1uggR1RlAJE9mCyIJkT6ay9/TZCVce9PF7WT4n0jcLC8SD8j542D9wR1ryiPNXNr
	 cLnEBK9HJh5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEDCC5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734963369.18304.8654251260185777663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849c78c3449ec9c415ab2bd198d2b6ecd8514b442ff176042b9544f0e7c1b99b
Date: Fri, 21 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787349633
