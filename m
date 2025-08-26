Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3409A78F29
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756219794; cv=none; b=sOYcUahnz7zJJlu6Ea28PIwUuEhe3tGKIsSCakUrkVWlDbEq4s/OPwFlgwi7d3XHvAexB4tuaBOZxT1+HrTd8/zg3H0t74sBPNS4BA03E7vqEZkIh1q+LfOm4Ns9cv+9CFmCSwjSkdw3DGvbWjej4ZTti1X7KtaynavN7IWihhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756219794; c=relaxed/simple;
	bh=hROCKk/oLycr4eKWpCweA9+MdGEVx9imsxkK09n3FCY=;
	h=To:Subject:From:Message-Id:Date; b=pWqO5Fl/z3yravrAcV0ouuMdAI5Q3pjXJep6oITXYuJ5AwQanwCHsV6/dK1w1piCZVFv9pkS9w74vrigeddhXzNnO/MiBoPQunaAKjcXATcSUFywrVZrG3RTbHtn0FtdX9LouGPLifReFqTKCmzMG4JH+wx02wzrvVoOfuuM8DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rbrnr2iQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rbrnr2iQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E161C113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756219793;
	bh=hROCKk/oLycr4eKWpCweA9+MdGEVx9imsxkK09n3FCY=;
	h=To:Subject:From:Date:From;
	b=Rbrnr2iQEtJ1F/Cuy9FMdFSUbz8LbB7kFybPyvW4IGuCwrZO0TwXI0SYx8ilGR4HC
	 flSc4+9FFBjxY57SFXv4O5CFUIVo0G4gbuXMnP3MAaSZpHtY4QzVA3RgEu+U3Ne2iF
	 IR9tzQL015WebtMygSG3OevCSwREM4evrMFKOG5bZhSvlKEZpu+uc7ghtyp66rQvuK
	 UnUEep59NqM3PhNi40SQdb8FyRv2xEDVmyB7VJ8XlC8hrcZ3Ef1v0zU6IaEgdTo7Kn
	 /0exktfgMzEncrHzeRY7JL5X3Yy/LEEFScBZCXKQCAN2OOH0t/cW1WpecaX5ApwoEa
	 PTE0lp+uUogog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FDCA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621979357.23289.5278795720435685067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26caaac2f449a0ec9dc4c2398649531abe95b7034e6e0cc5a1a12243e851d927
Date: Tue, 26 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756219793
