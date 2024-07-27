Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3585E2868D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722120354; cv=none; b=A8ABfNN7VmBycmN7f+8r5l0XIkDCt8yU2DijqQzmx2SCtMYwtbg1pd06jBCVbMONmx+wSNH1Ceue6PpL70WeUW5cWKX9dqhJZ7zRfKsWlQq5XHZBEeTwtpUCKZ4CO9Ud4j+3nzbIoZ0xM3HwNI2buVBBTlSSByoqezb5qoSHIvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722120354; c=relaxed/simple;
	bh=SFHiRDO1UC7dkgHZED2/n3QbdhiDhqsTIR+5ZzwsQHU=;
	h=To:Subject:From:Message-Id:Date; b=YdE/o0vR+0LY6u8wXGZ8r6L8NT0UAQrViuye3nnCM+jXw1FMHYFWx2CcRVy5V0NskBTJJgkWlKFcCEL3JvxPAol49cCBg64Teq3sOuFDNn88Xdb1U2cvvRL7v8Vu04gLsvWngYo7vdpgz1MaPSW64W2yvmy8I7krvA/3GpCB3Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLvMFR6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLvMFR6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90CEC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722120353;
	bh=SFHiRDO1UC7dkgHZED2/n3QbdhiDhqsTIR+5ZzwsQHU=;
	h=To:Subject:From:Date:From;
	b=DLvMFR6qNDCyOr9YDg5z0aQujcBupStzctP2LGyximCqpu8YsM+xmOi9vWuO4Y5VR
	 WFuZ55Po5kW2nrhbMsQmrNMTzqsK0tT3w1BHg5KpXbxLjdX63PIynwjWfbI3WpmcOD
	 rEP1VLVpbD2G8/0IIE15cEPpItYDxVV/lVfNTW+rjpTfdCY557O3d6RpXNi6dT1W78
	 lbxojFShuSYi+GoCzG4vybYMoaPTSa3QbSVlMj304t++ulvEgeponj4G6TAEA3QrJQ
	 /s8Dwl+PocYPIZd/ehq2W/u3eZK6z55oczeivFBulqXnd3HcFlzuS4vcjqvaZmjenj
	 9JCoa0nzF/qSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A87C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212035359.4093.7722065042970927395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0201556ba48a12a5bd9bf1dbd049ffeacfdaf86db6f66c2f14cb76f3b771f0d5
Date: Sat, 27 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722120353
