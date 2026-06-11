Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B56A279DAF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781154394; cv=none; b=WCvPOUCuwlkDNvOY0yJazHG3mC6B8SBnBjCuVMfBpGCLewFXgjqWNCOBNhLFWqq+AyX3qLknBSSVU6fdclvO2NvH8+iFn1tDSuIpW/qFZ+nu2PkIvFTBOakytXmSW5bWyhYIhiLCB8oncyYPFXom2vWE0RxZpr5vOMHO76/djJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781154394; c=relaxed/simple;
	bh=s0Aipo4PJ214+8lrFmrKHmFqNtfU/ZIcU8up9UWhHdk=;
	h=To:Subject:From:Message-Id:Date; b=rq+O6De70xBiqXulJp/Xf8jvOZU3W3rBu7hztbxc0nlEOFF+4jQTWJ2+VjMOXnwj9DBjCkcmgedQmuAWoZ8uwU5s4kOuytQaSx+XWm1/nIqs4QvN9Aow9XTKLed0LC8UIEmy8TwVWq+z/cWeCVq5/razOFRdJ7ry/h6L5n+NaJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYxs9lzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYxs9lzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3402C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781154393;
	bh=s0Aipo4PJ214+8lrFmrKHmFqNtfU/ZIcU8up9UWhHdk=;
	h=To:Subject:From:Date:From;
	b=eYxs9lzf/VXePwhaqGQsPJMCglOAJMpimvZNOG3AAsfmgKpYDORjfzwbdArUFlsTz
	 n14uSiX7cruPXpAqmsPS14+ksZS3FAFuAgjhhLvP3j2U//SM393O7T80Zh6qi6XL/3
	 evzsb/TnepZHdh2ZjusZlGpblffuzkjqj1txLmSKiMqZa4TS10RVuRYbjlpTZsTVFZ
	 8e4VfkE3Xcic3cA8PdshN+S+ZMbnfPs054P1rZdoIA1l07OKRsdr8cObId5H49Q7hw
	 M67WMFczQsd3rkcesxY70jqT2UaKa3fEW0UJbBLB9DDAhpKIcIBuxjenDX0m4yq53y
	 UYGFhuWo+u/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A911DCD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115439368.29767.8964521690443122606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c06df9b1438b06b3811bb471a8a19d1794c87c39ea01818ef0ec1aa8cc916d8
Date: Thu, 11 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781154393
