Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F58838DF9
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735219554; cv=none; b=DTRB5dzuZtQfIqisoUE8wXhbycqEF14lhkA2LJGE+XS4KzflTpF21hS6yI7d69PqnqdVn9gWvYcIoW1VIQ7M9pchAm1BSLAqTcQABnY7aHURtcPFfqDsEVW8UMrJi3JvEtkeCGBhrqduvzyOKLPAuoQXW3qXzy+ruJWIwcFFg3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735219554; c=relaxed/simple;
	bh=pI3lbXZveDGYkHALSOaPtdBaHG7d9pE/cdyWwf6TeWc=;
	h=To:Subject:From:Message-Id:Date; b=Js/zkdOaZ+I00mU/jsbXAiTQ+jH+ayz3j1Mb5Ol0u5uED2LfE6cIjUytCm9OVT2eEL5PTdZVFoNXzJURFvNpAza45rihrzDVafIGbJKF047VcW5hy7OmVmDtlDlMtqiWTuHpanG7+OUcj8rB4HFv6nsxec/fRlwCrv4tPMID3GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ow1VLo6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ow1VLo6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE25C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735219553;
	bh=pI3lbXZveDGYkHALSOaPtdBaHG7d9pE/cdyWwf6TeWc=;
	h=To:Subject:From:Date:From;
	b=Ow1VLo6lZN+wt2p5PlBy/AS3xzbSxIFhA9yO8SFiXHfuLfoNfUwh9nwMtcVlzzzsA
	 WfKlnt/F+L5CkG4CeKcwQL0kxyMTL90LPzSFK+KPCdPYSN9NMCQOhF7+qEU+nnpnkT
	 HcMaHstZ6OOoaFNdV/Ffa0rDH30c/7bqFB+rt+qW3AMd/Vn/Vxcy9l2z8wRiLqYgHY
	 Ps8rwI4CAC/JbuLSEyPKl2kmZWcCcLz7UA7IHWzhbxcS88tGWydz7XTNtPRmhOgSsf
	 iFbIBwfOci3HqKlefJkODju2Zto7pRboSrE21yq1zmgGJCNGNUYpn+R2SN7p0m9IGq
	 N73mFarm503Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96294E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173521955360.21932.1841643813225387827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c5f36b6b376a6f9c59cfc3469f29c83068ea2c98e992ad4aea1a6f02fc7c1f
Date: Thu, 26 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735219553
