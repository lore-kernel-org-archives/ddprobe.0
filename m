Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E9744C8F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765555374; cv=none; b=PivovMfSVD5vSDPSDBnjjt40ql2Kcj5FEe3Feb1gqKezre4RKoc+Qir540t/IW0WYv/j+X96KYY6AzhEZHjrEIlOruLRhG2s7GY4NikV8rrJg5yfhkCf3xaB9rQ6R7aULtGiD5w8yw/8QBll/zoDUFbAW6Ma1tHgmHHqgnApXkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765555374; c=relaxed/simple;
	bh=wGPL3uRDFgxeylh2hG7VcZU35Iq75FYuWrhZqkfPMfo=;
	h=To:Subject:From:Message-Id:Date; b=XKdDOeY8i1p9/PRN4mzrPhQMh8maNjE2tQl43RBlLzly7IBwT7c6j18viXFybLRG6kFLXJmafRM+vWoOFU4P4fM8Gi3S+eMC0mYrF+2TpXQX4GXHDTzuCBSqKeIT9QWBQOtWCNWOA15FZffk5ZLYhgCP93FD/C0z57Xwa73ieqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ5Rz+8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ5Rz+8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C13C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765555373;
	bh=wGPL3uRDFgxeylh2hG7VcZU35Iq75FYuWrhZqkfPMfo=;
	h=To:Subject:From:Date:From;
	b=XZ5Rz+8i3AbDPxwx78CAfaKYdMq6Z7VsxXZQ3LvhTFjvobEhTLDRJbTPKI5uBJTrd
	 BLqzboVWMcWAbW3YoL21POxy49dQF4ZI5IUmRx9K6ynbCygLa9XPlP2xdD3BBTNl+2
	 So5tFCpkK9bxm+nMC0pj+mKk2+DiY0NiIlbOg2TNfMfj05sNitLOsecsFCR1G1KXdZ
	 sAPGlCDu1FCOWneWNOm9JCkmiYfyVD8JBVivXjeLirCLvA86rNIxqAz16qcpp4Cpny
	 f5WG06QSNyPAXO9N7om381YAYd7foCp76hcrh7BQmL0BAYdkOInGJYJn4LGOWjygPt
	 HR3tiJgwJmNTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A7AD59D6F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555537359.14889.1434240744031983128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a340aafdef23fc6ecb357b5bb9481cf48d1ef3297c4a2de5026fde591114d08
Date: Fri, 12 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765555373
