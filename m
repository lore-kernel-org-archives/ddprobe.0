Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAC21F80AF
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731497154; cv=none; b=NDLnnBWfoiS9c74Ik0QtPWCZXxwXHHlMlKCdPfd54mqJdz+8aZ39rDnSn5WR8RfviwN2hrhuYRSz9sX+dHqckKv31u3wicHhRjF/j8rbhrAkEN/4jgX59PHK421SBenJohjeAE6h0cs+wk+SyuCm8h8uCzEB0Mj5ARPddtbsl6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731497154; c=relaxed/simple;
	bh=I7VHcFWe6F9I+Cr1kFoUQgU6U16VQCGVpNseu8hrBR8=;
	h=To:Subject:From:Message-Id:Date; b=sCgi2//XlR7fbXGKK+cmMwJKa2aOEy6+rKnj7Yzwz3pcgDxhI4QvOEHDS+C7acAIpJ1id57Vhbz8y9oI121C8ygbFxL2flTeGWWVfwrb10MziLjZCsa3wapmRapUBeRaNd6fQzY4gGFl66IwkcUaEuLVvQe7nceZCzNQZqPsnsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIyt64Zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIyt64Zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8611C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731497153;
	bh=I7VHcFWe6F9I+Cr1kFoUQgU6U16VQCGVpNseu8hrBR8=;
	h=To:Subject:From:Date:From;
	b=cIyt64ZcenfWSOAipW47by2udMp9ZhEslnZ7qsgUmXp1Nyx9KV/pJjXH+J500buXY
	 kMEizs9JadSpJjTKjo7dVPIpTIgyUI82O5h8Su0SvBagXqVEgU30Sndl0FTRM8BBhN
	 HzGftEjKyZF8ewn0o4tph14/nG6Lltw5XMiJrxcyUPCieK30UcOIu8urRfidH380+f
	 wjoqcplORdpReqUlc1G00hMtL7nhzrXwnWSFj+b+GYMgR5QFOvAs6QdITwBVC/yPNi
	 PGmufj/KB2q84Tj7x7yqZWN7+Rb+cczuYG396WzEds8TXTYdit8O+MkJwg5MlIfhDA
	 208n5x09aq9Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0545D41C38
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173149715371.16000.17478923012049160675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa0381b705bd5aca18a3e586eebfde5d19bca1ef17c9de1246ec066edfc8191
Date: Wed, 13 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731497153
