Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D033A7F54
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789027834; cv=none; b=T2kjIGMznDq8rEnuMCR8owS3hseOUstY34vkwxiWzrt55B4Y/vNGubAW2HGIXqr1ks/zKa8hM4DcVd8ee4tBgj+a059+fTnegS4+vjtNrtx0kLEEaonnsDXNUj5f2rvToP6IjXwQmgRlnRV/FnYhD/OmnGwJxg1JnlIuiEsWVqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789027834; c=relaxed/simple;
	bh=v3t+k3ECg65ERRCJyyvftgiF5RyO73RhSgwaKQjnSlo=;
	h=To:Subject:From:Message-Id:Date; b=RD3DPZJIm+wMjrlutZtF7V0NjQDROsBov3m+I9Xg+u/JItomiyprIyOFKPfTYKdi8f29Ci3y39gja1QyYpA+4M1/4egikhUIge4VpwFfV2olElNozlmsaN3tGzY4SoB4RKBilZvDLY/oTCeJ01W0mZ8ZfjjmoPUhEE67EjGOXUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3u7tyoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3u7tyoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2CFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789027833;
	bh=v3t+k3ECg65ERRCJyyvftgiF5RyO73RhSgwaKQjnSlo=;
	h=To:Subject:From:Date:From;
	b=C3u7tyojUlKxUs6PhBht4CJI+TmTfzKJwz1ZvPXn5mL+/cfM8aoZVk/tC8QMmJ8tE
	 4B1k7PwPB6tgPt4J1qGY1UzHXd6dezvW3lMPSnvnzKE7xGEPXu+QdQt/lH7PB6owqu
	 g0polTYgP0S3SAZDMo3PTPK1BHVJ3CU9owMjdua+bqWEZzQPYrxo48BojurtFTZ7x7
	 hglDfPjM5fbiy6+bVYd6JFY6SwaRpN3OSFOOJtg+3P8i05zBBPI/qo9EzI/k7gtf+E
	 lxhT9zb49cEhhyOV3D+RHO4eMKJyGHrsNEAboKE/QTikbSQ7ru+vd33dUMYal6/eUI
	 XaKdVfai7kflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA703C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902783368.16194.9657982784998451160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27554b50d0f356339528511a3071955627e31d31adae17e61b8071189f72f0d
Date: Thu, 10 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789027833
