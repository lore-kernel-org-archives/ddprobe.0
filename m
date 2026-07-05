Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429781C6FF5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783229314; cv=none; b=Oe8Mc+Sff1f4BO/MlHJZfoQ26b57q5aoTOoGlyLn3/9wykU9Wg+onPVhHyKrd6oj4kRB8U6Y9iArVwed1tt1PIvQHEegCZJy68vtNiuTOxo160dP/uFB7FRPg1Na0gqtj36Hkr8QRR00C3RfHMbgHZhAZErYDYKOrqo7dxSuJyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783229314; c=relaxed/simple;
	bh=MKb/SK+6saIPeQ4ZaSkzfn07D4YVktGFIkJGDM5L/2s=;
	h=To:Subject:From:Message-Id:Date; b=SLUhZLcZKBOsC1LZbmMjnCK/xYoigXqk37Z/b+PHPeAgvlLVx73WTd4CUnFuD+MuBV8bIPkqQIfy6lDh3Vq7KMORinh3mPvUR5Oe48XDzKOGJo4B7AKMVr5SIlH3atpnUa7kToLJXgIRZMIQQjwCKscJPFc3GRKJSvKuX9NtCBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhvU9evf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhvU9evf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8C9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783229313;
	bh=MKb/SK+6saIPeQ4ZaSkzfn07D4YVktGFIkJGDM5L/2s=;
	h=To:Subject:From:Date:From;
	b=XhvU9evfCqbUwSyMwxjXpuFi72EqCAaRSCfVJZPLLAflWfTSY2pcCp8UZXQyxIZLp
	 VTmFL2AYZZWZ6KqThyygc2YcYaxFA8L3vlqDfi5ERT1fsBqWtlcfPxN+bd7vN/WGlZ
	 wB3rM4zplJe//b+J3Hhuv+24yrC72MDKiK51LHveL4OumvJWEf8FCDOvCM+fmabq9t
	 l1xIZ4HYhewyiKaU6+mJqs8AibVD+p1mqHR7Tum0FNfLmRwgg02sMVphI7lv+9EHLz
	 BGveCVCLnYL/h2Boa1HWvlue/3tAwE8snECq7kCcsS+CE6oDT1QKemmU9GPX38y8WD
	 XpEaPQv+VjH/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B7FC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322931368.10251.12590964345610057571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b34f818ae2a51584d31d213ed5e481d3a0498c85d62cdb5fbdc142666ac61b
Date: Sun, 05 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783229313
