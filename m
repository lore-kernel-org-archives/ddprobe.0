Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BDB3C1F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736686554; cv=none; b=KSpvC57n8jQNy6z4etzG9b18UHs9eNA/5jUNNDHFb7Cf/PEVB6FtknH5VS7pBhpXHdZFehyMhB5dqyy5Cbh5wVOFdnxuFySo4HgoL9ExuLR4Z1H66V6bbSWFksJUDVo/x9WDJq86A0lFeeWMuHjMB7N2JVgLzC2vvCL9+PAQ4lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736686554; c=relaxed/simple;
	bh=y+0EFmp+5nvge2obGCoUZqF9H7xgSlQsScs01diMQJY=;
	h=To:Subject:From:Message-Id:Date; b=JBJmzwv9B4G5+rAOZLCg02NKkZp4Rb1+L22XuyNczA2YimNkgcuVcVj7WKeWuXshxL7qZmM1LHR3FBFofWQj1Ulavztf8BNO6F4WVf8XCnpHgdWdzBYi2xtYXWMReu/LIit5j8pljlZcqU0NlbjjaA9M7wlX3Zkgd91Addhsh34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti8hDbHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti8hDbHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0B8C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736686553;
	bh=y+0EFmp+5nvge2obGCoUZqF9H7xgSlQsScs01diMQJY=;
	h=To:Subject:From:Date:From;
	b=ti8hDbHiVMtZaQEXk7blnwhUJxjP0AZEycpmd5A32qnxzWLUT5ZVCCh9/q+H6D6ox
	 LAnOb4CqpTMbBrcH5cCG2YEGgm33h0ReF7fk4BuY+ubkSe2wqBJ1l7UXAd61EuagLs
	 F8aKSZLBYh0F3JTOBA9jn367YafyOeExNxQX2HAZBFYKDoZSkgyZVivwtJQUShZF2j
	 +6blNWalGQqXFKlNKS/AB2+wVQah2Ats7CTwFZDPwzqG9QgkmrsDxA5wI5Na4uRFEe
	 8LhP/TXWKNVqQek+FHeCjkC2H1ejz5bKTg+fXJOLtvQ/I0ZfSkGLA9ug5bU95i7c+b
	 DFMwIk5kP21kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD37E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668655360.2676.15381702980196190599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bb1f4e61d5b6ff2215ca0d4fcb2eae4d6a86f4df1950d65b1fb201c7e44e0e
Date: Sun, 12 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736686553
