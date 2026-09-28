Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8B344E673
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790581834; cv=none; b=lRvEdOVn/auSlduDueLlZXpwo5TnT7vTzl6utqA/h6Mi9sN7+yvMNA2w0K/H0I1snoDZlCZuPNzgZa70m6ZFq41mjp9G+wAJ/lTg32haOsywHba9eyDRjoUOu5vxLgviRJFLEoQosIp6XjhlViRcbZ8DFAPAFW7PYKs94UWZmlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790581834; c=relaxed/simple;
	bh=OfchfxUXrPWF27XcXpVRoL2NwR4OvWzXYAtyR9X7Sp4=;
	h=To:Subject:From:Message-Id:Date; b=arbQu748siOVHFGFfMtTZfKBXA6k9ZdeP9u9xIacgci2K1yGg1NvHA9kVxbPSro6ZUMUyYZBjYZfTDxKx+yFI8ZbVZaPLdrvgeaNlCCfVPJ4Xe9/X0PAfeb6nCLMTNzJTCTT+1NSHUIMaUoW/aWOgLn9yYbrpbI9+2Sqm360kfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehSbQ+/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehSbQ+/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFC8C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790581833;
	bh=OfchfxUXrPWF27XcXpVRoL2NwR4OvWzXYAtyR9X7Sp4=;
	h=To:Subject:From:Date:From;
	b=ehSbQ+/zkQpV2hNlTgkA3PeHEb8QB6jPA9WKIVjBQjBmECfo4Bt4Sq3Ec4QkZP3fE
	 WUaToWwl+OYd0o8nnfuvgCSpikI8D+yjX/xmvbXTq57HEhjeAdTdEJMkFcxSLGS7GB
	 snoM9AIfa3WrMQTmYrClZOtL16C3SDPH2FVKisq2smlbJ/S07TLNnjS0dM3Epcvr2s
	 MpTP6U2sOI8hV3mkn5kk2Q7ADwjAatyE8nl/CWs22T63k4Cn27m0CeEC+oaRPhshjY
	 tb1VjFq+AYfl+nAA3wy70Deo8+HgnjfU50lQotBKmWv7Jjgp2HZZ5rtb009rS8RiPn
	 bh+0tVQPGfZlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B58C9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058183373.2416.13606496746447191665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecbcb7f7a8d6a978783f3b019680af82fbcdb1a5e8f5868becdbcbc562072b9
Date: Mon, 28 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790581833
