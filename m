Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F89D29AB03
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761379194; cv=none; b=oi9Vm/6oROaMuCCAtcgCIYJq4Sx18pKSyp6VNnOTYsf8qVlhbMB0DHyzVacXRax2UPu/WmZSP2DymgVjvQEDaVsDLy5kJ2AaT1qoc/k3P5EvHmM7LuojmToHKun3x9b461IkUh44/0mdopVYDz0dKX4+oAz7Af57XryW6zIXFAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761379194; c=relaxed/simple;
	bh=nOPE5dv7oWfLfr/F5cXeWq/OUWbS1zhoTtEjt7z9Jws=;
	h=To:Subject:From:Message-Id:Date; b=ZKnxMMsbgUtas6iqykXzvRghXbdGnC9Gkxk1Xh5z4RWePv543idazdo7UsddOQq+zf4OhST18vCXbjUZ9OBpOPOLF9McHQVdMHTFR1Am5e7jxCmX2qoVtDENHxLmbM34HtCZSnbrQQczKTddMDX1hys0dGq5G798iXFsjk51CRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL2xFBJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL2xFBJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761379193;
	bh=nOPE5dv7oWfLfr/F5cXeWq/OUWbS1zhoTtEjt7z9Jws=;
	h=To:Subject:From:Date:From;
	b=XL2xFBJberYTtcD9yfqoXEF42It6IpMUhY/m2lzXEYS0hxXPHxCFDJGLyavxZRtcD
	 QQdtWvsBTklf2s35hegwvM2p41eORKZKY98Eqv6wCglubH6cVdNVQk5gjioIHfLuBA
	 /RV/S35iNEZ5Drm9xMxijf8RNQZfXuvDlY3dlsguScJD10HpS+w69NP6O0dwnZoLVq
	 PpUdO8s1UG1jtYD0OifyWMC8cUF0VQ+IbhnZE7AVKcAlwM7zKZDcSd+PDjpzgeI1ar
	 5pecnu+W7H0BZIl3naZmWy4xLbLyAJyWHN0YC82Lkml+YQ6gdRcRBk8LK6M9+9Vxol
	 4xOULsI2URRSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98397CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137919359.18609.6225870015154343341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7796052b32cabab89203eb995a828fe2c8f97d64f127dfd8cdffb5bac59e7fcb
Date: Sat, 25 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761379193
