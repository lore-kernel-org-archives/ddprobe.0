Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6D63A4513
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791880834; cv=none; b=PcRxDThMPitw1igStMwlgXYwSH5dc8a5UV8FCElEXTscuIOGh77EVhh+bgPHVihQnzn4ab0pbA7dVKInRBmNiVlPWr3xJ9YM9VI6hWn0AC12rD/MkvHiX/vG0Vs4eZeqdLVjmtzqzPYvVaf5WPyAOvU4WzMPSG2i8kEnR1yDXKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791880834; c=relaxed/simple;
	bh=zC7up6ITittS1V/itM/DLPkIMTTVOKVjrCLlNPq/xQ0=;
	h=To:Subject:From:Message-Id:Date; b=U3pk368cBJCIVFRTqKSDh7uU7ICsRODopDBcFuWdx+IfHhPwrIj7y4XUb4tBbUx1IwSjbvZT9/tO4Kc3T3evk2ImhQspIugQyZpgEyIkc9PMs0h4lgnegF1DKOEFmHhyBpl5drJmhLcPAE0ECohiggfTbF2vK3HFXhzs4AOMP0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPLCG+cH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPLCG+cH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E1BC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791880833;
	bh=zC7up6ITittS1V/itM/DLPkIMTTVOKVjrCLlNPq/xQ0=;
	h=To:Subject:From:Date:From;
	b=bPLCG+cHg3oCR7/TPRBYVg3kgNvtXQL1LGAYTD7tqbTXdGHrHn1oa5gylRbDAoRFl
	 GreV4pf5DLVNGzBD8DPNpSYBLTdX7nSl3mtqkVXHkv3MzVHnfD71vA/P8Y2r+jtcAs
	 pfXgk1hTrQ0lzb222fhKr7zXQ3hv1Orx1uNovy3CAfmMtjYlSuWil/za0FpsLpW9k8
	 OHo+3oFPrDHEedTYjDr9guTdzH51e30mBah18jMI+aCLm07OkJLC6MSnmKgJUJ1BTr
	 zEtODUlW9q798e1agiogI2NqnGp+FWwPNaDRIV5bl8O8WlzJByVtlrFzdH1rdR4KMi
	 Mj5VCzUpOWnXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2DCCA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188083370.6919.579022366149880210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a547073a0e94d7061e19c3a8765d297831e208a704a6ab5aeeb422a5b99db5
Date: Tue, 13 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791880833
