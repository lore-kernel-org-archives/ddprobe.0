Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441C521257F
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765192974; cv=none; b=OQDEBS6RRQIPEyiUyym4RZlGyKRyhpj5zYqk3vHEVAVwo3igGpJdpMRH+9HIwxhAE2kjb5013Y1pRoQnMm+G1WEn4czTA2HAEP98n0Z8MJHGA6zH/h3dWF/OyVpWjpP5Z694E7BC05jsKJTKESlyImjNZqAQFP1x/Bjj1o1OF+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765192974; c=relaxed/simple;
	bh=U2O+0/9mxe/vOhFm7z1XelaS6mFNJpoEkSu5MXUXh6U=;
	h=To:Subject:From:Message-Id:Date; b=AxEHJ4VAcR4Zzzw1JbUcLuGVvSsDoc+FEoYRL5wLX4EYk0MXY4S6sezMyIJ8UU1DzPMQp/hupRlNqarqnsJDUOxYxJ8Lv9JSlR1izb6zDRqNbFBMHVkcf5xNiA4dtuZfvt07XL10Csa1tklqwuI7upFgXEcddrWHdiVmk8JVMGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQM+GQO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQM+GQO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBA4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765192973;
	bh=U2O+0/9mxe/vOhFm7z1XelaS6mFNJpoEkSu5MXUXh6U=;
	h=To:Subject:From:Date:From;
	b=OQM+GQO0b9WbGQg2FgDUW1zAMkCtylCgoKivKnbd44+vDahYAHRyKVM8warFA+mEp
	 tTMQ2E1/rGLgLmv9aqAF/PE1SR0QbfSII+JkxAj6OJNWFzyQrnc2vNVOVeCL0SDbCY
	 7o9seE5eLOLB77D5Dr4XfXu98UmJLpZ20cbCH69GQV9rAKui/ExjnHZyD9jxhvoI26
	 KfE07Zrih7vtyskLBWm/jKd47ZzL/B+Jk0EI2koJTdfcGa0asFQ8BqEVZXh2I/L7FE
	 3g4QMlP3FHIHaGgGJjOQPeZ/6PNmFFNFKJ+MYPnDE5Ap2/quEng0Jt9R2CZuvCYnES
	 6SEQwO5im6T/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991FAD3B7DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519297359.2563.4993492676194108008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1cccd96a725566a41c9b82f3a00265224a774e318bab7fb327a790b1e0cba5
Date: Mon, 08 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765192973
