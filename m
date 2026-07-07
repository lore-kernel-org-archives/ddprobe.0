Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F4D2609DC
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783445314; cv=none; b=C4vpT5wgV52IR/Eq/UNcdn+7VHpviSkaQLlK3zCRhvhXUNWAhZ32DEvHdR9rIEWPrv2ET9V4tv/oM3S1v7r7FUIxyMDgpu07ngJiYjGTzZvzNzx3BuRujwS9L5Hie7nltkFYWWmPi1O/LHbezVqDnPSZRPPPs0l33hIv2zJoRpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783445314; c=relaxed/simple;
	bh=h0iHPEYdnRRntFZkpnf8BZjDJkpkgm3GzAOajSwymvA=;
	h=To:Subject:From:Message-Id:Date; b=jt2nFMLl5v7ff8x1IvXEkWu37ewXmrvQhOHl7jM5eA3aznFzI7vuL0vO2pgkpHL1yA7chyrHO84tT83LWq3KRXz6kBAOcPRB0Gi9JAT9m0vI0FVS0Bf3z4dXU2Ttqgs6xbhTlLCUS1lVBHnUkoJJYFK4sV2s9DYYU2aRthQ6Q4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc04pLWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc04pLWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB42C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783445313;
	bh=h0iHPEYdnRRntFZkpnf8BZjDJkpkgm3GzAOajSwymvA=;
	h=To:Subject:From:Date:From;
	b=Nc04pLWBIPtxcywz9KWl8GPKzMIjw448Dd87G1W3vNRYw/KHcdMAfoji4zPQj1Ie8
	 DzRAnhRNhGYpZAJsVpIy55Xvgw0LyuANL24nE1umZIxNftXWg5PdBIBTx4pT3pL/VF
	 +nJ65u8C3mgPNdCEX0LU8qgHv2nlW+x6RGTXcewJLXyP7ql2+BxeMfr3xh4iCf407n
	 C/YeV8s7Z7hEwtx/DjJMcBEzwG8yB+Qq+772RybybVZAxJU/xG4QABbqEFq2UdD+sM
	 ElAN+lXJAJvMbFRwEAqXrpkKsY8GathWGHScarbQpG9iLDBdjFgauZVEfw07q1mBDL
	 A0MILd9ATKUEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C40C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344531368.5993.18327422946887968949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68a658406f10187962f3fa5a7fbf8e6dad94b13e7da90a30f5971456915282f
Date: Tue, 07 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783445313
