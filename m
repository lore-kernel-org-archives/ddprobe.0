Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3475D2E371A
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751754594; cv=none; b=QYPPlnIS6VrL3zGdvx4D7/pVkeAK7qAif9V9G06VmY0/XNFRU4r5a5x274y0qS0DjuiyH5PXM42MvRCTLQ5GIvF7qKPju/vqv+52LvclVSVwnIHUceihkMaKhCE6Hplpd6wlmtFJ4+1teHxdmTODnpbjDtANDARS8YxdR0UDY08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751754594; c=relaxed/simple;
	bh=eLEFVfdAeV1K1zb80Ej1gfU+35uujUj2aPVUFix+hAQ=;
	h=To:Subject:From:Message-Id:Date; b=gz0ZyVNcGHAGQp11AhsvSam/0a9W6lJexHlbih9oyiX+N6JT0TV6vf46NRd/OHbb/IKuTc//TpASIaGIWv3yGgg0hKeWwrr24nmAM9lSG4+gUywhkdkX2LMu0iqfFfwyKJlecZ3bIyDcvP+Bj0yWeQoUPHQhS1/yPvmdOXW6b9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdgG5+gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdgG5+gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81CAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751754593;
	bh=eLEFVfdAeV1K1zb80Ej1gfU+35uujUj2aPVUFix+hAQ=;
	h=To:Subject:From:Date:From;
	b=sdgG5+gbhMwwb9wNefn9c5dkZNgP2BnwZ5TiOxK8CvDZvCo83MGuXEQBsb73E9xhT
	 WSgwbBh6VGHubZgo+8vcKe0l32lEE3HLiBFPCCf6zGuXiPilnMXwDydR+03dae4ekD
	 9yp/aCnTLB2uihuuFUad5dbIyMqPzIZE7icaqlyV2upyPfQr+h88aYq4VLWRaTfQaJ
	 ChaMGCo6sbx07yMNsE5+k73/y9vDeSUgZhRf2lEPPINmvSssUJ0wZ5tEAPIHk3iwmb
	 TgkzxpHVlbCpkabZZWbFdEcBFDQ4use4rIGlwj6lOmjng9O5GPHdvoObyf7TOsyLGk
	 qK/wkeTSgA4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F2C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175459357.1436.16135398758626948879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d841425b566e016cec9ce51670c3bd594be9ee5fdf504563a2faa65850c8e1
Date: Sat, 05 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751754593
