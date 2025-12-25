Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9C28F48
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766690034; cv=none; b=AXyStEaPBtXJt1Fq4bW8d3O4jVytqXssu2Jx/CRShnrpSsHR+CTuO8CuUcKhfbGVDSsT5Yk/PMXrmq74+gVigpTR/cNsVJPI4Viuwh0B0eo2MBiubFhFCJDns9LjXs7gRzFLHgxWHMcVEbVAHn8OccXAcnjPZcu9SN6CG3tcmZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766690034; c=relaxed/simple;
	bh=sssGfAqNzfEX6hISuSQyyNsaM9QfStlcrw0Fsk2tXYs=;
	h=To:Subject:From:Message-Id:Date; b=VvyBBjUxWcLLW9iiiRK+AqnFEphrlI3OC/4XffJ7PsBwyGnxmnkvc4hQjr4aemZdtB77K+kRIbLkyPyprrlrVz2QVHqM+hbO+fF6OLagvE2BxPlR1ZROvoyD3jAB2FbqYUF+yBfpREYiH/4Q1g6+mRsoXEy8pJ0upTRwwi3AF7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeRrZo8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeRrZo8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADCDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766690033;
	bh=sssGfAqNzfEX6hISuSQyyNsaM9QfStlcrw0Fsk2tXYs=;
	h=To:Subject:From:Date:From;
	b=KeRrZo8JW420kHJEVjvbBeSEpn9ljfyPfaCRCOe8WHWVvg6xZ+Zbcmq14NOqo6Qyr
	 ZdzLYd3b0bi5vt+GGzYRMfcHEXFFc4EQggXb7SsntTYJ6M1wSymvMsPPP0/QYcYSOs
	 myvXfLOs86nTivKg0ONp+FgJhSEG5e0W4IALsTZUaktQnAye8o2mdKrEejfIQkqki3
	 yUu3NMBt3JDXSz89jJZyXngPO4IdDTdruK1+gPS/efb4K383cTJfWSbm2zuzecjijs
	 bkmrafyYlGMJZ0y66VRvMQXmEDtWw1U8TP4INZvZ1QtBec+397nDHqAfSHAXGiDL8p
	 tHuuZmu26Onqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F2E7AD4A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669003358.27858.2276629638053966811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0cb25c05b1102cc8e0666617e9ec6bf9d2fd62a8ffce4729c04c887cab7cd5
Date: Thu, 25 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766690033
