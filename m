Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A05546BF
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755220194; cv=none; b=S24PYOMKWL8xvbFXRTTAbg3zh0Vi/e735eQuK748tLFZRUCPskyt6AtPoIS2XWAZO4/8mWJXCMJ+qHD5EMuzQqWKah3SnefCu/k90YyBBqt/YfHVUIbz05D+7HLhaecFTYW1LEPEKjmXPDcy1c/UvnBd/+jagfIiIYqs8uT3rmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755220194; c=relaxed/simple;
	bh=NFv+enJYQ95oCf5z36aSs1DMzwR7nZY3wJd5p9Rp+6M=;
	h=To:Subject:From:Message-Id:Date; b=Q7cSCTsQaPEIm3ZYEZwchGEgPFFTYgzXPUlPd61MpQ+Kcu9+CX2l/noDtLKlXbzyBaddtgSWWUaT8ZNYRxIqHAmQIMtcylvuIqgYaCmidxkEa8VUDwD8WD13QzyIA+gFGKtizh1RQjjLEqrp2S3F66wyqApZPEZGY97evZdCazE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+GQr+GJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+GQr+GJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECFFC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755220193;
	bh=NFv+enJYQ95oCf5z36aSs1DMzwR7nZY3wJd5p9Rp+6M=;
	h=To:Subject:From:Date:From;
	b=R+GQr+GJP42iRMYPPvi+KUYE0UlFm8iAg3C8CIUb1JQqk7vTFeLnOm5B2mjw6eMV2
	 qevv+3+qtikx+x85rYJOP92DeroG8QY6bBVmmnPbxvw1PEfb6WQauie1ZCxLxJh4G7
	 4+uYvNk+A+7tj7CibIt63TuMKwlDcxnfk+gNJuFPMN5xfWFAG8lE3/9pGs61XON5qz
	 BevY0RvvHyNDC+Ui9sAm9yYcgMOhTASo9hWaPgzTSIqWGV4MLBw7HzaLwflEE0I/wu
	 MYlfmVpvDoTqrdIKNrhp/kmk8C78JY++C3vANVDIPjoiA5utG+wdFk3XucoZVMQiqV
	 3PA8c/nvlSY0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B7CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522019358.17762.7390822838064667125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e2e84344ffeee8a3e446de0bd9357c3880ac9fe3924d09caf4640afd177f0d
Date: Fri, 15 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755220193
