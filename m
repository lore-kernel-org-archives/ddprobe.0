Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBC7D529
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730161554; cv=none; b=HpnvhkPotQ8E7TYVH1w5RBxpu3b4TDmIbu78Ngsuv+dTlUHMFx+54X7pQ6kg1SiAvZkvtDu9XBUAOZd/qTXhyzJB1/S7DF86drt5VFWmMgjf+u6z1ABPFmL1K3x8uAn0YAsRtyGJnGnH5YCeRwnOf1U0Q2eD5LYXfFy7Pn4rfCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730161554; c=relaxed/simple;
	bh=ND9ouDS7RzIpb1D0R3VXsO/j0TPNqKHm3NuEn/dNz/k=;
	h=To:Subject:From:Message-Id:Date; b=JIULCMArIE7Os+zuSNxlDpDvL4zthxGgGeqVfPcvK5Am4Jq0zXKY5WPlZ1URYqaWFExzRP50l/G0idgkH/zgJSW9Ox2KMJAGI3PDDoDQ84lcLgqh+qM3YGnNJDhnoizCi8Sl3sje3QJf3VDlVt5jAtBwKtRhqiuMjuQ7fCaZfCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVLHjpun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVLHjpun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A385FC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730161553;
	bh=ND9ouDS7RzIpb1D0R3VXsO/j0TPNqKHm3NuEn/dNz/k=;
	h=To:Subject:From:Date:From;
	b=RVLHjpunNGB6ZfeKvKX3z+btlaM+AFQzZFqWlBQYvPCkQi/2t8+tbLimxerZJ0DaK
	 SKMwVQkA/S8iEM1flufewEHr0Vs8Q/fGTmi2CSxjiFXKNs6GPfsoefG9zX5oT+toP1
	 FGuPtphchfjijxhdqVNcOnqxM9yACVi4ELznrkJ/fD2zX5bEk+lHZUaVwz0uTL9fAF
	 4Q9+R/mAsKWS7yLIxdF/A64MUbGdPRIrk2qk/YiePOLG7uWrUnH2yZyDStTiQm0ldY
	 yleg68m28i49/vkOcvMQxaiNXaxdCMZ3Fspfs2Eld/1oikQZSVbZ1OFhSepbB5doSJ
	 iT21KQl4mxCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92634D5B851
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173016155359.6287.6840450896636895476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67da72a7fa06246c3cf026bc25db81b82fc8ca2e7097400250351cc1ed46a53
Date: Tue, 29 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730161553
