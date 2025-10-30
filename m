Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D02B277C96
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761835794; cv=none; b=co/1+6oCq681BMq+mGrB/NTKn2+4bo2RsDecg0r3OMU6IRi9IXGlY+401sM/ll2qzLEMKc3a85zrRD6Iw1n0bwceFqkOfR+a1cakN68gB02/WBVxqLXae8TqIKV9qKMszQ6an6zig6T0kkyZ3+NKB38OBzy5bSkAJqyfbe79XH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761835794; c=relaxed/simple;
	bh=j36GBFaluNqWg2ozbJT5D0hyjPNcMDj3Tsafd8jCs5I=;
	h=To:Subject:From:Message-Id:Date; b=H0bKjVWcYf5tcfxVH2htXW3iPCRRq1HRGIbEqVwnJrduwjKnbfmBEDsrltl4b3vk+0MDiUBkpZPSRDmiTdDfD18dflfIk590m0gOz6FbKNgDGjIeGOS68lFEfTu2+JcGWcBl6CJwKMgGo3dWVMHrXmvh0nOqNHInpv3TIR0e+x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7KNIlBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7KNIlBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761835793;
	bh=j36GBFaluNqWg2ozbJT5D0hyjPNcMDj3Tsafd8jCs5I=;
	h=To:Subject:From:Date:From;
	b=k7KNIlBeL34tT0gWlFSjrS5RVSo8xnE4EAM4Ob2VgbfWMtL8m4jO2g7lpSUwfXujj
	 2BaDSX9lA0A9iG5MUaDS/bt1UOeaE9mdaeqMIavSKmlSQEZ48lqkqAA9dLs0f70cvk
	 PKRFzdrZp5wdhyP7xVgL+dt1pygdyTy8MTfkLVkIwwIUzEwkJlSwwD6S8i4pZuCObJ
	 rI1q8Ih+mb+hiXm2YaC3vi62xyt/g5eNKAyjO2eSTx/hKxlpXnOzWyFyv4EoS/67Kc
	 /f1IG31CodNETPx4wesdGFAE+cJC4RjcbKFpVmsiH8VBmGGMSNYyt9cBKr+1nmylRW
	 m06XpK0+XlAEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93598CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183579359.18622.13314534257690796157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91cdd9537e4288827746fea6457f16ed8ced3246c52bfb35f2b89320ddcff977
Date: Thu, 30 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761835793
