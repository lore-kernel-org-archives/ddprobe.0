Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335B916F8EB
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730496954; cv=none; b=AKcuQ8mPXpT1j2C7t8gTp/4hYX8Lxsm51QMPZQbjIEVH/oOIORxE4BVBhXKgwSpA2h2rT2Et4mJgjIQgYbEVhJ1pJu1XiFrQqImaccOZ6HtxoC7y9Q3xlrADosNdjiA5OljcMZeo9hWcpPhC8beN15hcWsjZs6I+R0/vSM9H6A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730496954; c=relaxed/simple;
	bh=i4cS3OGhQS7Ltjros9VTRlzYXA5YQwLqhUCBhsYen3I=;
	h=To:Subject:From:Message-Id:Date; b=dCuB7KIPSkyt81gn0vVzE+mqpQunwCPj8osCdXTHO+VFZ6bd9Fy68OownJ5pgbiphRkrfAV/CPLO5ZRz+e0Z8YjPOCmQaNa2daC5aH6Y3w7d82QRaOBFE3bgzcxPns2eyjfWhJflhc+pODtdFSPcMbySQCy5D6dxTaRhCYz5Nuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7otBReV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7otBReV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EC3C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730496953;
	bh=i4cS3OGhQS7Ltjros9VTRlzYXA5YQwLqhUCBhsYen3I=;
	h=To:Subject:From:Date:From;
	b=A7otBReVgBTXMNTfRig+MuVEXwjN+t/iy7RNNuuogdr/83iqruzLyYawErUGEL5EP
	 Nad7Mz+ALPbRBtgBG4d3BhgoOjGhLB+4uOULYrSZkES7HQBCH1v8Pq5ApTJv2nkQPf
	 VK1UNoRqqcjEa88tvB383ejIK31xctdMeW80dGb+l8bSRkzzGLi36qlSx65sKac0mO
	 io81/fbEZ8KMkCivkN7I439i9noewD4sElkWXnr+Y4qQBKpIalnQbJ8q7mCTePlfRI
	 F18tpPxLyfREU7WM9ELcgLI9ZokStT8Jc/8on6Dwvjm2eozefIPtwk7PmDCAamXLJW
	 6BPez3a5dwFiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABB4E6F091
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173049695358.28054.15935908573750655620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb363e28a1fbd0cd835da2c5f499b815c788c425de45087a053685891b83c2ed
Date: Fri, 01 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730496953
