Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311AF39DBD4
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789627234; cv=none; b=R++2r5wB58swdz4KcdKE2W3bnz79RoKOw25+C0HnO1nfVeZ05QMhDfmoCcXcfhBWqtulnm5+S+QSnbL7IHIzLQxv9DeBNL6TFwhV0xo1Rk5lZfnbaNWd4i8+KfXdOayln0ldeprNV/C4Vljddbc7ol2WwaIt/Lb0IGuVsA3DG6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789627234; c=relaxed/simple;
	bh=WzEyEoW3ANE3TqSze9VTLAhHJHtfBVtMxD9uV0wvMAg=;
	h=To:Subject:From:Message-Id:Date; b=snp/hfOa/kIY98cpKP8TD10GWFPztqbAaE9lRCPzPhKZe+rXsiPAdHX44wyJPDn5CWreEnl8bfZ93wFk6u78016P9G4DvMDjqP7K3IGhQBnnfS0gLIssR1i6O0mplHhuaybgbHqfoa4rQNMlDXTeH/wm3azZq/czJR4y6TV8dyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHq0eesp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHq0eesp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF083C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789627233;
	bh=WzEyEoW3ANE3TqSze9VTLAhHJHtfBVtMxD9uV0wvMAg=;
	h=To:Subject:From:Date:From;
	b=GHq0eesp4U3okOnDR7TvqbevxqiGsMWiCbiV5Rfe4zrvM7+5rl+sFoTWlILn0uN6B
	 0C0QNDXqNs4lnHePLd10eVU0O1Ryevd9gofXBEE5NEPqmE7laMzS7zbchOHCv7000c
	 2OIt/PKRdRYRa26l0IBjTpo7zeC3H7ZsGluGaoz33pxetr0nVNeyNYbyFrZom1qqIb
	 p0NGnzpXx9Do5Bnc8gBaFpF4xa6k3ZN46QuBj3cEBHPxwgWjAqgjDikIJs8y9JBDNT
	 zwa3QbaA75o83PFgHqnGVoK8TYb+0QsK+FlkTWvnji8e9TzW/cw6vIpWrOGSEP9sGr
	 wxrWsyLft1LbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E9AC982CD
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962723374.12064.15109828882849155361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb31b99cbb6095b52bd0e884508549ab6de3c838738e32ebf12b0eae8a0a9928
Date: Thu, 17 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789627233
