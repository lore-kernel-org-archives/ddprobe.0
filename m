Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EEF0372ED6
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778220454; cv=none; b=gFcnwI9pqz4aV3MmJgYrCYzSbM9VnZPdppYIuxS34vN0buk3U/oNQ3FB9AfBaLoHgkLhnRUTYEzGOWGCXPlSHXXFh3Ci2ASSGyZ+b4cdBVNstau+KxndqY95dqOxBx8kRRaNl7yYS+XGIirhWhmBgcrJm6X3dbuIjl5O2hMDrU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778220454; c=relaxed/simple;
	bh=9XtTa943gZj4FRvh3WqcrvZOrzGY87ZcM13JTNbkzI8=;
	h=To:Subject:From:Message-Id:Date; b=K3NqeOs5StyS+QQ/1LrabIuJmKt0K9T/4AxdD/zQx1D+fsh75N2X6kwx6EdSx7kvizzA2bzlMS0JKb7E+K5gquUpkTYjL7kXZOAJmoW44v01i0RiL7ysLKcYg39u0ZTPl8NlZrb0m51w96V6LA6t7bD71Z2RJJ3044uPnDVFhcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HC4R36Dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HC4R36Dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE149C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778220453;
	bh=9XtTa943gZj4FRvh3WqcrvZOrzGY87ZcM13JTNbkzI8=;
	h=To:Subject:From:Date:From;
	b=HC4R36Dn18mr+OSD3/5IsQF05/FNcjn/hT+G3u+mMF8oyrfETBOdS3aWkp0i7dfqo
	 L4HdPFr/EC1NzaGtU8XVNlTBCoXzpeqhUUTu2xgM0ZY8GiQzM0GjaZsVxoulbMXXgL
	 JMHoH5Mi6DCgFjDrye78ekFS41qtOgXkXFuObhVMhviK1aaA+fExphDq6wk05oVPwn
	 GVHmdMAu8RiZMyqlw3nAcIXfs595Zdgd3Ny6gN7BaZK0RLbLyWNWVkOwTaR89nQS4+
	 PFl+Wc7rJ3X66h/D2/4VXEzq+yDbr4ZEG2bdSVvmBhs8lJtPQJQRA+zgTWbopw/vnR
	 SGUdyqScNP6og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83EBCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822045371.26656.2504248687473343278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47948c4f346b582df6e64965ad592d171f11afa382a7dac9c0f3f8515f9896c8
Date: Fri, 08 May 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778220453
