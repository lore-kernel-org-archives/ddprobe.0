Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682923A5E7A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790851234; cv=none; b=G1nCO1kDqNEag/GqqrMmr1JgiSVs3LMoWBmXFAClGuEC3WaqCyFtazumU2kFQqjLWhHj2Yb4qHrvLGVK/okOACMcQgupUZZ49i11vwXG0QNP/Bch8kbpKTu7fYm1iBFQj7oVIAjNgwd//m86R+9cxzSgbHqN74IU1aPVgh0FWqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790851234; c=relaxed/simple;
	bh=U/BpADAyEcjhAYpEju4lYEGUZtR6BcrytvW8/Hopd+A=;
	h=To:Subject:From:Message-Id:Date; b=E9MxmE9es1gLjTEeM4VbS00MAW4yCsfhh1LHkWdfDfO8rSjvgDDpFIKv8V7Ymhlwh5YyzERPJHJXBUhGnPDmSQnDpo+irN8jOiGcouh462QXrcvyJBlZrQBLflsjJm/Wo3GRh1NzhaWhY03mD6X5BTFIbzpvKJmVuI7Ss6uPNN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkH+SN6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkH+SN6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1014C4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790851233;
	bh=U/BpADAyEcjhAYpEju4lYEGUZtR6BcrytvW8/Hopd+A=;
	h=To:Subject:From:Date:From;
	b=OkH+SN6IIcY19qHkEPUQ0CFxb5CGOx6g46RBCFYIVE4Q5R6fEvL4il9meYTg/A65j
	 AaCtHcnAGo9MYg1Xm4/cHPmitC2NkDtZ/rQZFZVSsqc0OqyXJJOw2nIYx384wiDAOG
	 Eo85H7iV5MRWUJAOwpbymVQ72nhv3QFp6mqJwPJFj4+3h8BrcNONIBnimANLzq/Cnu
	 CH3UUJQCMtkamXadTLB+zRX23LzD+03G556E579pctUydBceorHZQK88ZBXTiMWdP8
	 7FVQJQ6zbttlBe3Mmoj9TLtvb37OXVR8HDEo9+PvSdqhD47AhCp+LhYUvnFEAU6S1w
	 jz0mIt5S6a2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD253CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085123369.1684.9093148140576345535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9a34ba40db7c2c04ce1c7dd9917d3e9b90974508562351e4a3f53341a888de
Date: Thu, 01 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790851233
