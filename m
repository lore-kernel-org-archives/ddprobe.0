Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5F13112DA
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767015834; cv=none; b=Uuzcuq3+avFeAtz9OxrvVpHYN7dT/hVQuxxU49Q8FTL8ZZiAPE2JsUehQbG+KJ3nRzN4vX77E/HIF+xgPIOIEmSmyTG2Ckq/wfrkKNZMog/uvIcUkr0A5dmvVRmIyYrDlk1Kj8u4nYY1i+tjURWMR1W7CbhtXYl8MRQPVpPFbEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767015834; c=relaxed/simple;
	bh=6q0j7ReuzrVCz7lxyUVyJSxxp6dlaHz4BxnzxUmvU7I=;
	h=To:Subject:From:Message-Id:Date; b=mNWVAtkA6+ekZjxCd7VDyLldGMLLeM22hvAS9stJ20t81YzzmLuZwZpWsdXtkDRJJfOfgAsA3dFZg1c/NhuicYc+tp8aKwx2Z6Vu3M3WHoCqeVojrUcydGx/5E6CXXWkdCTSKWnAd8A+fAD2QPc+FmLfrWWfeEjvo4mdWmq9C8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgJ4Hcog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgJ4Hcog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0755C116C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767015833;
	bh=6q0j7ReuzrVCz7lxyUVyJSxxp6dlaHz4BxnzxUmvU7I=;
	h=To:Subject:From:Date:From;
	b=XgJ4Hcogpugq/O1e0N2zgLn2D94OaNm/AO9UOLBCQq2S0mA0npQvBuVH972XLpNuY
	 sUVTg5gbB7Eo5i0xKlimy3v4Fi56lQWSWcJvSOnXl+CsWioL0fC6kAkNSNhQN4PAPn
	 Ye3Rsiu13cXBaD++WJ2ZPFufvi7kMKo5UDR1bFFGzIzBNHo8qP8QrISn1OZoSoxAWd
	 iFyRIkQmjOv5paX5zu6sAkV6DxpfCmAIr2hbqeU6PbkYiaZlnouxvQgxRgGCori/63
	 48S5F/yG+BICPMhPQr8ubsOW67p+fJgZ4je192KKsdf6bozDlVGIkM0UuRhUChe6Ab
	 0jjREgrIn+1KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B499E92724
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701583362.10897.12436417794493681584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c043866b34100d48e52c98338e9d64d6db88b2d50f7843ad0c2a74d3e52be50
Date: Mon, 29 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767015833
