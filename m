Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7828BEC
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736478954; cv=none; b=m27z8GyNgy/5+f+tzuVsMEzN8Jo1bbGebjPBXev3Hubii2/u3aIQ2nTR8zTN1tf4CfXSZmGEd19N87qVhMVNxfdO61/R4+iQFxenySCCGxgf/wIqxL+E6jwfQFq4AkDNPjlT3kleOCoTPzo7k8AXpjwwlbYeVOva6AcMhj54g/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736478954; c=relaxed/simple;
	bh=KkgIVMQT17lnZZdOLqRaSDPZhBvkr53YtFzb/MfJsU0=;
	h=To:Subject:From:Message-Id:Date; b=RlD8MDuHV1OEyTAuC8xsCUDw2UcdC8IA58IQtFMQVRQu5qf6qMgrA/nAIilAzLiS6/18Z2cs0WxjHRBATsm/Es87MJd7Iyj+5R4M0DFa/bn46zfNGLzKXpIkryGbJI4TuJ3N1+rDN4p7tMw49SLzg588p1P+qgnNIqD81aU7vgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRDXw0Lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRDXw0Lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A837FC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736478953;
	bh=KkgIVMQT17lnZZdOLqRaSDPZhBvkr53YtFzb/MfJsU0=;
	h=To:Subject:From:Date:From;
	b=GRDXw0LwvmE/5zgEv2KLxdBS01tV65ri9JxJ1mz51Bd9Df54kn1SHpivRLeV+7uFY
	 DJsRwv0z7KRdXmo7VrF0Rz1+TqqkcMwkAUXFl6CbarkSreci3vaV9a2A5unEUXxhdb
	 5s5wHFpWfD1NuzQ/cg1+yO/sjxp+BWhBhlWm0J/2r/Hr/e11fD/8KErZcwrURHccdq
	 rB0WL+rsHTPGvVHNE0XnekTyuKJWkg3mvlEAoE4kqExaEE8r6ONRSLvT71MuqT9fIC
	 CJnHl9asu/VImvI+3EewtBAob2/hsCcp9X++xCsSs7oP0o2cT141Ca5EuSAGkLHa3F
	 /5sytN/4Zgspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94835E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647895359.13882.1267052897445083674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725e6f2ae9ac0d866dc9bf54f5824dd593d3dc46a3872d4af149f547a2eec3c7
Date: Fri, 10 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736478953
