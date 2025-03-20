Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D485224228
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742479794; cv=none; b=kG1hUpHYs6e9BRCUb8A0jPoR/J2BL+fjuVpSn5W7K4pUIUi3GRa2hlei8fz+02W2gsQTGMwLYxt8NUawQ3zVN+Q9zU66pf67qV8vQ1QySZ+a3GXKPg1rLRuKSfVoWR/ZHbPX9Pc2K2EAPnurqQ73kUDyazfjqRny4d5+bh0gLhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742479794; c=relaxed/simple;
	bh=OL+s1KFARNnk0lruR+quYt36nzGd+g5j63t97TX5JEo=;
	h=To:Subject:From:Message-Id:Date; b=KJuF4eW5fqXRNvLzZITIlSypokETrGf4upkt2/cKp6fSiaATJwszIJTfPJygPoR/E1+zoFBjTFimptaDEtjt0PwzEHzSx8HUyVhgLL6+8Ng4utBzcu7+PzbITTQjK0EfXV3CMLn5rISX+1U7Z2tbr+6kVRz8x73KzyQdg44ch4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgdCK+1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgdCK+1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEBAC4CEEC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742479793;
	bh=OL+s1KFARNnk0lruR+quYt36nzGd+g5j63t97TX5JEo=;
	h=To:Subject:From:Date:From;
	b=TgdCK+1vDQMHKnhIQ6ThqBdqq2D77z5KwwzgJ/YJ81rED8XmpVPZkN7pWCPIAZhl2
	 Cfmh72Xe/I/cjrzX7ZAowHZwP5jSd5w+zdi2FoGbeZ7gW7kB69BrJkSZk5julwjOTm
	 3OuH1wJG4ycdutAmbJhaPtGbLHd9yF1bPpLxhgIaGn7azXvKcNFQu/VvFStrblm4My
	 BOe6fcilyh6XbxYnITA1es7N6bmq59MArfF5m02hNAJBCHbH5VsG5N0Xg6brgaDn1Z
	 /MvTe5yOcdJDLeZFg25yJnDiA6e6YWYvh0jssesJkAFCCxf3e4eePGTmScZ08hZkCg
	 zBn+r4T2qstzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974BBC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174247979360.29611.6400058609887446713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0f7dc804337db23c50c11fb6c0a6ac608f4ab6a4bd1d9e9d9b3977b77aa18c
Date: Thu, 20 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742479793
