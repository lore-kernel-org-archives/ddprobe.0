Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC75388397
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783243714; cv=none; b=RWsX0fCCZq3KwwdZWlAXxhn9z0gB2+USk1/c7tYFtREYERol8UK7S6/D76Xs8zf4xOQYAK/lsEM0R22tgnWP6bBczfHyq4SGFea4oAJnTYRqBEjPneTxBgE0eOdvkfxLD3yMjOUyHm4IoVxuPHrNXy02WecbQF8bCILgymTvcCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783243714; c=relaxed/simple;
	bh=mJLKZpazH892yZGeL1pRDGHm6AHfLdoXfUHBaSsbni0=;
	h=To:Subject:From:Message-Id:Date; b=f3eePEBPKXzE8wiyuu39aCLoYHgwWSCbGUdxzitxiVD5FDm558H6Mnd1maN8NJwTo8wtvihvqzKbyCXqzpKUmDUGf4/0hjVqTBHVNuLcOwVOcWCGr4BQLWzZ7dkiQjwlZ/BbQSBTFVENGEQ11FZD4tuavKHyI5KyV2n2juEcZAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9lnmfC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9lnmfC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE09FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783243713;
	bh=mJLKZpazH892yZGeL1pRDGHm6AHfLdoXfUHBaSsbni0=;
	h=To:Subject:From:Date:From;
	b=P9lnmfC29c7QoX5eRQZHoALtIIL7Og1YN5+mP0JT8d8Rbw4SwqPzF9uhCP81PFgsp
	 JMDi54Y+l1E7ng1mY2joougxhv9Oa41b/dM2qELZcK1aypdW/hxEnAH52X/0EZLX7Y
	 OAKa4fm+NWMNddfAW5f+97o6elGf+ON18WcCjGy3mZkgqU0NFK4VfxFMRFG1GyjdTe
	 aDN06DObibWSmpPiBHjumxUtmQbb877GQiOIWSsRIlXupSTvh4xU9H2Du15b5Y9gfG
	 DTz7dywb9FY8aRf3o/M193tv7Qu2mnU8IJ2V254mbR27ooEdBg8VFhJmpGKqk0ZCax
	 vogLx1lYmEIIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE988C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324371368.30900.10864236640998417720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6f488810e299cb65b9cbfc3209ccac87cc3bdbfa2ddb7fe869422c18a2df23
Date: Sun, 05 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783243713
