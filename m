Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEE81B81DC
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744270794; cv=none; b=X3gsburxcNcZY9TnTbIYB+K+2sFinF11g6s6Y44Dj3ELDTgR8m2iheK+UgONHaqo+oMNkgt+28fM43BWkalQvQBlxXFb4H3DOH+c6MBQDTFF2wOiFjkvBlgJ6okSa0DqOeZh7BiVOdcKGBNsV35b/8A6PYEcedXxy836laZ8HxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744270794; c=relaxed/simple;
	bh=h4i2W8F39nHvqwBtXUl0J9hbJs4qNWM/VmyglDdhGQA=;
	h=To:Subject:From:Message-Id:Date; b=g9pYuAzd1m75XTvnWHe0b00YXFI4WfTvS/LbFEwop1euh5BZW0UgWgwab/q+3OCcxTMEwOSo7MdqRtSOAsd/hvJL/Fq/ss+PwGEs1JS4coM0mVTba0xdqdVz6omFBFJggA67OgMvsvTOYttQuQw+2rpO02pIiGtKZjqLqYPqvDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBGxuVJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBGxuVJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70BDC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744270793;
	bh=h4i2W8F39nHvqwBtXUl0J9hbJs4qNWM/VmyglDdhGQA=;
	h=To:Subject:From:Date:From;
	b=dBGxuVJG6//ZYVdkw6FhGUdB3B/Q9unUNFbyTIc5xvhKIPnxxxmIrpDbdPAEx/mhQ
	 5D/tTVcFu1XcoPI2YPQqHPV6kVS63fm6SIEIAsOBAK6028FOymdjgW646LrqY5C6iS
	 3P4CK12uP/3mcLBpPXL1HcFipWzsFv8P0u1KhQukq6fLzJerhgFQDMDGzbHDKaLYcP
	 K/z9xR2Mp/tShYZqu0mdcR78cENCFC2dbs7+8MR5zpT3EPA1nOvh1yW4fs84NZBuzh
	 1qp0Uf96Zz2sOvyT7JVzS8seP4UouHMAxkztCpDYgpOHCuWtJa3M8YgDndtvhOjwkY
	 +3PvPQKeqtH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92971C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427079358.4212.7819934619372627404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08859b29feb67aabec1efe858eb5af740676cee30044283e8b33b7298c047b8f
Date: Thu, 10 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744270793
