Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1AD15AAA3
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715023943; cv=none; b=ZLbS7awO3Q8YO3sYqVbSaNBBRogsCDcn3n6usrtkJyOPpztuPAUK5zXn/LdN7Y5Pr4NHwvg8dlM85jtZckOGjBUlRvda2AqZ1PnM+pM2q+zD7KfJ3phb4y0oKhA2+sFlGyEb/TA9eZDocEuGJf+lFqc3Tky8xxq++uN2nEV35wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715023943; c=relaxed/simple;
	bh=Yay1H07xx4dHYqX0LN66i33X4Vk95lfF9r4XpNeb+Ng=;
	h=To:Subject:From:Message-Id:Date; b=p675451KQepPuygD8kryXUUatWy+eJ6QPjyluNthRTURymObWJtRDxKlmwetuGq5IN/ja5zOuBEiLHTYAz+byl9DvV9T3H72cv2Hd1vuJ3Cm0IxRJtjaxGNJqRStnP+HkLBZFygnxnNwaMU1I+g9o59kxsjtv4bvREqBtrsyfTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxLSC38l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxLSC38l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B32C4AF18
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715023942;
	bh=Yay1H07xx4dHYqX0LN66i33X4Vk95lfF9r4XpNeb+Ng=;
	h=To:Subject:From:Date:From;
	b=DxLSC38l3z6eKxIbIRJ0FEhWzc10YrdmWKMf3VNfig+MeWJj2pLeTasIrtFCMfs2K
	 IqihaYAdgs/yBvA5+aEQMWOTeKjSuGGG6xk4v7NeUG1IQbK7Mg1DMGPIul+YpHDOLu
	 w5IJyL6uZNs4wkjG2g/tFMHKap0I7OLBZuFRWDcuSRW7BOY4vNnpHHU4FXHDI35Y7J
	 FVFUTILANT2DjAeYYiOJL4LQrTjEEz3mlofDcc+xbgj8s+wpUxKYQaEAIZCeT7XZu2
	 wS7rrxiFDHDPnkhVsWnCbAai1uRR5igoT2qfZFidbVft+S6sXu6sy8aEyTUZGuRZHE
	 E1Hq6HjGASNJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12F0C25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502394278.16279.7586150553463270831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628c0ae5e91036c6b6699fda76fd6df1f60f6ee583b71d80c60c8a49171daecf
Date: Mon, 06 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715023942
