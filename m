Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB561A0AFF
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 15:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726758354; cv=none; b=cuvTOQDADHzByFRtj7Mji7+/a5W5MYhTVFAzXcB5Tjucq15awKZHvvX3VFv6M/HCOK2yTEbLe80OumZA1GKcx8D8ADtlFV3vms3/F6w3cTwhJo/W24U4eiMEt5lzhYjSp8CBjQ+bYJE/vk8opiqs8CCUCTn5z5AyiSA8rbmh90Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726758354; c=relaxed/simple;
	bh=gbHCuRng4hN3slvhfVO+F5dvgO4B0yNH1a3Ig1XVfRg=;
	h=To:Subject:From:Message-Id:Date; b=qnvGvkyWCw5UaBdOGoMKdsr6HzyxzRS4l/6f68m5GaYi4onqcwU17b8MdYgDJoH4D/W9DGjrEWj/OcAeH1K3RwJ/nQkC8BJr4VTCqeGDy4PsDf5ugxBUTiLRe/MH75uQHem4taxGTlR5Tckbo1O3KeRg+PKh9o4ngQia7ZSqXBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnTc2+ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnTc2+ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA0AC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726758353;
	bh=gbHCuRng4hN3slvhfVO+F5dvgO4B0yNH1a3Ig1XVfRg=;
	h=To:Subject:From:Date:From;
	b=GnTc2+nyFrcjx4uPvywh1us0H5ra6znwmqZnrPqzCjrGR5PnvFubY+ia6tx3vkNc9
	 O6haH85gRZoQktYvZVJQwdl64x0l5VHDGZtp4nHG5waUi+BAqM7Tp6MZCvSCzCQyZv
	 nL8rnZ60l7yi/BTeRifDhKu8cWUM+eDKzX+y5c+jwsukfaRnZ040jGYfhkhKi6lhjh
	 OquswiOkWNfdKe0VOz/aN/LL4Hb+B4g64R3drJe70Nxi6HeaOtPEFdhiMW63Xy0riM
	 rUA4cUhw/eFl/7+HIAYGFL5r+LoVHjQjSnVYpzMtMmR4cJymewIJUE7cmvq9pifNH7
	 SNW/FJfuK93cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5D8CF3959
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172675835363.30683.5274444918100828049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12293d845760eeeb56b6887ac1b2ae0e02d8370e6f6f1651ca5c35f8529f21db
Date: Thu, 19 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726758353
