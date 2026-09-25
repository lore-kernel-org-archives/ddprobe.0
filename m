Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6338A3C988D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790364034; cv=none; b=Ke7LD77qjKdWMZ/kBjPHxgedMIHiNOeFNMSOMeNxp3Xwx6+33W+s6WgR32C4vly5CYytnXFGGCifozACCLYgM86qov6VXL2/UgyuPsLg2LVjic12z5Ts4pB+HgmlSw3W/jb7ZyfMwHvD9T19p7Pyis57/GCF/OTnmSVy0ab5sbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790364034; c=relaxed/simple;
	bh=aiGawvc49UfQbM5ydc10wIjyKA/b8zWKOF4bIKi4v2c=;
	h=To:Subject:From:Message-Id:Date; b=HapMlQz+iMCDdHNmpn0J4r8PXiFn+d27lBStVvVNcngMxHBVH7Lh4gJIN7vv6LxLMxcRVxVNqMS38RfrbizXHBgQBkIMQUJuT8KeN0SObke/Zr8dtkb8kZzZvOdDejB//IxbucBRJdYelZWVOpSAMnIvg8ylZoNmO36+w0lru/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBV47kR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBV47kR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC1EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790364033;
	bh=aiGawvc49UfQbM5ydc10wIjyKA/b8zWKOF4bIKi4v2c=;
	h=To:Subject:From:Date:From;
	b=JBV47kR4/j/87QTXs4uqmdyCun/6uxUYZO0zHbxEZR9d7StdXU7oFfW390H3SHxTl
	 PU+1Ut/ZMrS3Dw63DN/mNCrivCyQ4QJuzY7zC5BK8jHKXiN+IBhp66zpufHVYWwOVm
	 iLlvqd2wKJnoAO7hrTfQEcqfwUkhHOq7pbJ0c+HSb8SsA40Dc1vp3SSCIScREboAzB
	 MHU3KolZslLQTJ4Ay47vjypgYcvMFgwpZ2+4ztHq8hdIhvYMxDj2G8xR5AGVyLXnei
	 fPE/Qp/yC01tKCR744tcNgP6SOYQWlX3zXoHmfcYujbc0p1eP6jCizm+DhrwK0fIRp
	 jZqsLEdg0x0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA25BC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036403368.32725.5476460984871261298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b567e3c69b8789389f0116b6de5d05fc4306ab949c2914ccbc217f238be97fc0
Date: Fri, 25 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790364033
