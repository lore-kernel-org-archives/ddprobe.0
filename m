Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEE828F4
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742116794; cv=none; b=TE1xpN0EfvRDXOYvUX1Sbz3uhfv816Asnqa0/cfP4gsYgdl4kMbTNM74J+tJ/vJQvjigyUCIDi0/w6m1DKjCVIayf8mzrBE70Bific6sG92FoXVaRr9ihFcUn4JpUGFYbEQtOwevQXYVK0p2ucRX/EjHO/cPboUo/C14PFT0dv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742116794; c=relaxed/simple;
	bh=61Qz07kbHPs2PgZjWshaT77UoZrahvlWzgtw/MgV69A=;
	h=To:Subject:From:Message-Id:Date; b=Mxk23LDR/f8kn7b1zKjOyycANOkqqGFE7ZRaUzeC9kyJCXfJebuT8s7WQsXS+WKUZqdT+GJ768WyjiWObbOyu2h12GwzVDk2d3i8ra4NacFNWc4xabuPvhk599lCZs4oYFT2dUvYEH9YSXtlht6OMbrBQgC5WMg8atMHhuPtD1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efBM0xUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efBM0xUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB938C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742116793;
	bh=61Qz07kbHPs2PgZjWshaT77UoZrahvlWzgtw/MgV69A=;
	h=To:Subject:From:Date:From;
	b=efBM0xUdDhHV7V7k2MrCFI9S1Pas50io4N0h+i34YmBihZVO7GyDJEVHuVKtxKuey
	 IKMw4hn+kG4eRqI7jRNp/RAGOSAewp8famGybY83j9miBpb9JgraPLecIEpCaO7mzR
	 TZLLcQv7iR7by9jqUJD6ABstJOr+8pJmpr/GCwGbJp99ZC8YJtqUSyZx5zE8WFbjj1
	 sPQiHh53v4zjGitsMKJDVrFFMw/yIaDV/DT7k1oihn+u83fjxKPy3xYR8HBxTDNNjo
	 oAJQnOtQkQNgryu/Ly0Hc1/+lrgY16QA1PlN+29EKJhNWqlLV0dgjI/Dka5IPHUdvN
	 fmYHfShy0L4ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6273C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174211679363.21948.6084792084195051231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b230f9f3d21e9de3364e4d2d515d70d936e91fecc45faf09e739328049d77620
Date: Sun, 16 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742116793
