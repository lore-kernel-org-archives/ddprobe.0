Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A83C4963B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717575383; cv=none; b=HQPufg5ixv4SQu/on2ILuhndxMc3+O9V5eEH6O2cwD5S3cMDfhvO4IK5P3eqnuZVAeSIAs+AUmZqcLQAmnM+cf5nTV+bth58Em7FJu3//z2q59yV1swFMbIpBvhzxwvYkjrVR6c7/5LMkR7mdC/ECbA91njFPtCwmg26EFIwMpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717575383; c=relaxed/simple;
	bh=K+KN1Aw+2WBP7P8Y3CwbbnZEqqsYZ9CgnsCxHBqxP2o=;
	h=To:Subject:From:Message-Id:Date; b=XfqHVzl4RPZNukkOfL7FMo/8BUBHS+w7QQZWskxVI0Rzdx3UOTeEWMPeAgKsC7hxsMKAMdqt70rRo1UeF3ZKPZlov0aB9/luCedFmc4OR3XsMcEdlSZQAVswNc2clhL7VCoA4z1OC89NRWxIR+xV55qoq7yt4q1WTXbaLSM1078=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx3m01Dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx3m01Dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA680C4AF07
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717575382;
	bh=K+KN1Aw+2WBP7P8Y3CwbbnZEqqsYZ9CgnsCxHBqxP2o=;
	h=To:Subject:From:Date:From;
	b=Jx3m01Drw0V0/Rja1+dHeYX+L8bA7OoNLmO+MNsDv4RGVaF/hz+bM3gh1W27zUyVL
	 qY6SNq3d3wOYwJRw+HGryd7JCDCSIeBXoYGGlVeeAG+j3XC0w2wwrRopn8YmPP5S+e
	 QJCpMWhZg7sVvn7bTpNcAFIFiSkD+89UFgx5ExNdhDUFpmdY9XF/gaO7K2eZBNAMqp
	 /Q/AmrmLQ64/Vx2P9ld9T0bHCPobZIQvMdQphdnoR1ivM09WVKVNzi2bHU98dv/295
	 +yNsyI5qSkC/9iBpjHsB1COrbj/hi5MzXBdmcgLRlPx8lbfJm+WEnhcSuynJFCqm7Q
	 WGZDm3TMZt/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6590C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757538280.29928.4090536212515326754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6945ccc836c1832972f2a653c258372fc1a1e90c5ced1956893266b88d29a88
Date: Wed, 05 Jun 2024 08:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717575382
