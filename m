Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264741A262A
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779153634; cv=none; b=ZMdHgAkf4jO49hE+mcYfn1pSOuiWJoN9E3LG5ah+tKqfIkDSt/sS8NRFOEfykFhuOxtXtO5b4mDPTIfJHJM0iaZc1gAvFu9jSmYWgqyJ/V7GkNUElyBZQC/s9xtHC8W/GaY15tn9qVhdNvmgqupFa47e18M447pd/oDPw/Vfimo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779153634; c=relaxed/simple;
	bh=JGWvN81jb49AS1xbVCJY3EyVKgXPVWd7kY+LbVlQZTo=;
	h=To:Subject:From:Message-Id:Date; b=Bsb5HJ3wSXf6msCBRiyXqdxladhVRhngUn9w1uoqkIqda+xjn9LdUzTwnqmrvrsHeArHcLHuc0vk4qql+n2d+5Ub791mqnHvy4JMCP0Z0ubsZ8Jy6G91qLdMtyVm8/r9njH8dYEdyBJuHIC8F87xyZDj9/DZg3ayC3O81mBjXi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tG9XbS3z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tG9XbS3z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A60C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779153633;
	bh=JGWvN81jb49AS1xbVCJY3EyVKgXPVWd7kY+LbVlQZTo=;
	h=To:Subject:From:Date:From;
	b=tG9XbS3zGIoxsfPb3hperF1xJixOnuqjyEkfwSmX6lCLrfp0ISx9OR4+iDDcJShIk
	 HhG3URnLwW5FwX722/ZYrRqnNdP1cPrceEs21ckETURaWjp/u1xEXorQVgWvtZSEYk
	 T/CpQdU0smU2dU38LdIsq8OlA8e9F1z1YUjgHHtxPbR71B9+3+o0uUVqYdxVPv4dXL
	 5qn2MHGNItp6lR7zauO5I9d1F/CFSI5zuvQZeyIb8ZhwENlj7bSHSbdD0IkSulMJyn
	 1KoecpFIanOwrlg1Kgo7anRYlFXij2dJK2W6qOvkuo1p6b5NJw86lcquLkwqMZriN4
	 Ov1A8q6q5w1pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1272CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915363368.12950.13939551229756372553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ef4c64dd9c182f4736b77d29f8334503d9ede77c8897fe9f82df621d3e4aae
Date: Tue, 19 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779153633
