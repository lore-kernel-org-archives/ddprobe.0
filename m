Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EEA3783C9
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779475954; cv=none; b=IQ4XrfPsDphucQ7+bYkuCa0RAS20w3dDbFP0pPnKs8p/+Dj1p9iEmeoX+2usseVTf1ccsrdaYpVy2OnHH+vSadF5fUS4nL/OGc8kn7tlhZRG9MqvzfYSc7ZLEFdWfK5bntvU5vhuXWxbTTroU/pSA28VaWSlK646Y89Q5f+RGRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779475954; c=relaxed/simple;
	bh=Gj0mae/Q4ri2/8LPtZFq/+II7f58d/qU8sQKM0YCSgg=;
	h=To:Subject:From:Message-Id:Date; b=knCPZVk7O3JVHF3UnQB4cRf/WfJtr0yMDgY/CNVqMnqX7IviSrO8eGGb5DZdOi/4Fi1CgPtncXTrLPqFoNsLDfYqzNkB5h3g2eHNgPgucBu6H7jpd75mkHl11zqB3xMbT4ClcNvjmTFfbeggZLj8g8YkHppbKB8gTgflz/x/Q6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOmQSF6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOmQSF6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3A3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779475953;
	bh=Gj0mae/Q4ri2/8LPtZFq/+II7f58d/qU8sQKM0YCSgg=;
	h=To:Subject:From:Date:From;
	b=kOmQSF6yhEsda6sTMF8InT0zI8ckp5VV5uvM+jnmso2sGrOaCryMhM6zlzVIlbgA8
	 FIukklUi29khucjezpnSWOh9/xhGGyChILBOdY1K5jxKW9/wBUNpOvN9uANzXBeX4v
	 TE3Q/HvpYA33kbmWIargHGR3U/dJIt9wf3jbRLTer0ymTScIf16IHgc8ni48mJuwWB
	 CjUw9ZBMVzU99h5JVJ4iA+ZM5BaXKRZjLL4wk5rR9oJpPs6DX0Y1YMJIrZxr9XyvWy
	 XhpHCOMG+kQbhqIFSDPnpgWCy1/iOFFGDWpBZ2PyKjkr0PtFFRTTUcbkMzlefBoN3/
	 G1yN46rk4PZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C57CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 18:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947595371.31249.8924712532388670317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312a185c9be4b3d9a1464fb7515b2e52f4ba589e3db43524b901fc87f45ea291
Date: Fri, 22 May 2026 18:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779475953
