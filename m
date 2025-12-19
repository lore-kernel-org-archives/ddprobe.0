Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312F319539F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766114634; cv=none; b=qkZ6GXE9yCRXFBpg+bB7DP+jv054EcgkGdabU2yQaakcS8CeqRZ+OgM5uC/yErJr3e8yY/YBB9++LPLl15y8guIo9WTs0m7hs5mCZx4K9hafd8XJxQx0BIrEq4L326BnQmHw5fTjSiyQgGui8BJM6oAzjUxjpe4KeSC7KeZS/hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766114634; c=relaxed/simple;
	bh=O0rr35U4WiZmC58dPHKJCI5nw57E5ODsFLDldLXc/E4=;
	h=To:Subject:From:Message-Id:Date; b=O4CoEZKGcP8yjpmBqjO9BHtt3kbiye/LrmOxppCCDfsd2H4d83dt2nDGFCPdRJ+AMcpNfvGgfjQBtAeRqzbAexNvro8JcmM+pDncY6FKazZ6XDipfbrRYtES7r/+0juqP0jHy3sPWpzYNW4vEUt44+FIa97m/j91lTSK5kf1WLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCXP70iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCXP70iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4771C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766114633;
	bh=O0rr35U4WiZmC58dPHKJCI5nw57E5ODsFLDldLXc/E4=;
	h=To:Subject:From:Date:From;
	b=cCXP70iNofFcsE0IBFHOxmHzyaxzmyKQtWI9UlZ1sr8IgAU+F75AqOUGRu+IN26Yi
	 ArFtyin8stb/PsiaImTKvA6dX0pNwfn+yz8+WYEbHk+2sn2NoAspsspaT944PExJR7
	 FRIiP0V7XzmA//iBKcjNvscokm0C+DD6CZE7p8jXIIPVCaSTcW+2/muLuZ5sz/9q8V
	 /E4Oz5bju8zLW+rkE2QAiDOTemtI1HtYYcQgWWvYyi/zxZ0BqbwMmyQDusz5mRouPk
	 CBMpysZ7w22E3RQgSlZ4uaVqPvMgeHxioU6KK8TvxaIAHefjoGnfrA3Q7kVW4+0loB
	 pD2WkwFUrqAVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913FDD7494F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611463358.16052.9097290605366279533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a14f3795e35a299af0a2df29bb7fac825b78351e486c3d3f8a2bd6c6a06fe9
Date: Fri, 19 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766114633
