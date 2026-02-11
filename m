Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A79D34EF1B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770796494; cv=none; b=W+XFYdS7mOPXtErTh1vQz6UUyau9aMpd73Cy94Yt9nwzq0r57fRINqVl0oh+DYDUAm3DCRDo+AJZaddqf46wQ7rWV1Yva5KPtPaI3eSnzAmr/2HFQkDklRfGcpqG1CGLQCDOof/Fv2Ff0N43qrgdE4zah5k8DwFktPX1a/gmNPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770796494; c=relaxed/simple;
	bh=wiXW109IHlU0F8jZXzfrEgV5g1x4lyEfDLaCosC3SVI=;
	h=To:Subject:From:Message-Id:Date; b=m4ONx7zz5ucFOvEq7WXIf7jnAUJxVcwjaLi4eUOfKWOAozVcfPq5II9xZXdTdAHE3HtacaI31XHgLPuV+NgIxk3TGhWZApCe6uzyEN2a1fPlCdxD2DqF1b4SdKZ+pcchnbkyW5OWIQnFTYyRuAiJhyUxqI2dO3Sy2z8lVkdTAAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V18ilHex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V18ilHex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BE3C19425
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770796493;
	bh=wiXW109IHlU0F8jZXzfrEgV5g1x4lyEfDLaCosC3SVI=;
	h=To:Subject:From:Date:From;
	b=V18ilHexihkl0wezhI9pCnjaKvRD/9Ylarae7r2zEJB8g/au4R7Uqgu/Vl7Ir8XEZ
	 ovWh0HcRnsu1WvYcXKe2yo9V/N7o9EsXIMUD5uXNYWT+1qpABut6ip6FxIs1OFlvPP
	 2qNJzY1tWipycmvsEYACTqDV72Cb90K862OOCIuy/o28GmTendpcT2haDlpSuGxgqY
	 RPjtN/jAVqjmB3IlqIIPYXTmhHmpkDwhwt5kxLTSAzmMyY64Ww4c9PZVxZyhx+xxr3
	 R9QX6BjjsgGEOxcguA5/yjI/ZK7BS9yYREbTqSBJcJglc5x6A7jjTn3icP0/qftKOl
	 nod21oe/j1tug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9394BEB5979
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079649359.16406.16474372547381747793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100367e9c1df4ba9077e2f7ac3025b33fe2366018753cfb4e26f235a7117881e
Date: Wed, 11 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770796493
