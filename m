Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D55C2EA
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766927034; cv=none; b=gGR/g5euFAo4DeAElzfoR/9Cs2oBChVGxY54llt15+wA6z7WDJ2fiCNha5FeNY5ZvPE4hqEmAUZ65oWwhoV66Q9Wa/Yw2NN1N5RE06L/roXzds74vmGw4sVWbfP/zViK81OgTjqqt5/bbXa/4CrL3L+3iXS8BJDPxKFAEYiZGTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766927034; c=relaxed/simple;
	bh=B1IVGECdNeDBeIei/yTeqB/3U2Ndu2mjDR+TXx5eLHE=;
	h=To:Subject:From:Message-Id:Date; b=GrQSX1jQWYuNb9qT2/OnP1/mxUXAhTqHaq1jJrSX9zzVMhxiKJbd9ti6dYTSGwOmLY/JonXcN7MYrageWB8LSnRSGVeNlR3NOnkHHJ48DvR+L2F+NKeLW05xm8Uv6umWq8Uy8iuwLPYK4W1qhAoHjA4dk5MTdNQzk95EtlvJ6mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXwk8kVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXwk8kVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF07C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766927033;
	bh=B1IVGECdNeDBeIei/yTeqB/3U2Ndu2mjDR+TXx5eLHE=;
	h=To:Subject:From:Date:From;
	b=BXwk8kVtkJJtejT8Edndvtsz5zpRzwBmOCY9DDbRBEC27Tf35a5Vq0U6NjsOqihSE
	 2di083iFjrIHPVMEfUvnUvxc77pqfG2HwMOn8wvlZ6p7kKuoKCQ3lbtSokJi4toGRH
	 je+JXdqk6GUa2X+Li0pD7Y27sPNMTCmPvhi6AnSNuE/Ke9NJNd3Xri4RdkNrEuT3Om
	 i/fi+Un6/3tj2WuRZyAnq2LJ62ClRqRArLkMFWSjrd9kGMCn6BA0JT04++4YuS4495
	 tjV1tY6MWeA99TlHO+AT00JWLA5nMZeqoygCBUxib6LaYBTVAa09z2sRIeQiF6PvTb
	 IT7536tj3J5gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965ACD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692703358.12024.7890430749916693555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f5e5420f9771f4e9d590c8cd103ec134e4d91735ab925d009233e534233e09
Date: Sun, 28 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766927033
