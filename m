Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FD2322774
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756282794; cv=none; b=WB2dEwK7ijuWRtiscoKchKTJyQDig75HYTNx2dGjaP3bNJ3znpviNpmsR6Q2p/M8/Dnrdd/8XeCYkFjoPefpVX8XYf2wkyJbB/QfXL1XaeRXFmyO+Dc8obmHeC/c4xI3PbKOTeaQZ2zopfSLXDvUt7onkKOMoC33yrZRf/fF/Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756282794; c=relaxed/simple;
	bh=sUSS1t5DSno5hh6BFbOpWMvnrjHPG6e3QrM1K2B2EP8=;
	h=To:Subject:From:Message-Id:Date; b=kaIavpzXzI94v3+XnBL6LYQkvpWCYWAgSz0u24iq2MZ237vs2muJpkOYRzSWObJV3hPqbA8odZAK+yeBv1B4M/9pS/x6DxYkrRI6TR0Li0NNUCGoUUsLrc7jTDjK6mwtWCAhI6r1azaPZuD8cfgXtl90ov9mhF5QueGfOC3Fl9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRt6xseS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRt6xseS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A173DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756282793;
	bh=sUSS1t5DSno5hh6BFbOpWMvnrjHPG6e3QrM1K2B2EP8=;
	h=To:Subject:From:Date:From;
	b=mRt6xseSdCOSsnz2FPeUWbq8SoMajXGrdCkELdjoENEqU2zjxD8UVmJOX9Kjs7K1G
	 vaIDuKOQelatm19k/RG/OaDxg+ihtVVgOXbDZQ6k3JoOrN7IK5Xg4r0o6S+bf2I+8P
	 2LQkJd4rehmGoaT4CnBdHlb/mKOlWpKZeP1h4+LqzJruDnI/oMeGRObJWN5V/bM5WC
	 eWArGR5mqSgaePXzO3K4+ADCpvFbim09oaJ9X7XeIKUCK8ILDMThPe0tQzX3nEbkxv
	 n1k+WGR+6/ijx/ar/RprcUgw30fXp6wtFcasjKXDEhBgMgD0vLAPybTB6A49/8LWYV
	 0KAMN/1SUKApw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17DCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628279357.12385.3202669406419794286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e900f182383f897bcb9a5c394ce46c61489cc16616619e24046765e13fe27515
Date: Wed, 27 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756282793
