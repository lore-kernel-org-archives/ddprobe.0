Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249F7328B47
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765299774; cv=none; b=eKWy4IHeordzSiOIrFC3ypaSS1FGUMWLbGSMCd+9A6q28bIpY7mFARHhTcYVt0p138Vca02xUDXbfra7n+1BGLm8MO93BGkHbzbBXRkzyNVJh6FHSPDo3DqKRiaOuLQcsR6Yj0WLg91Tfixp28zZkHvDshBJQc8idbWsD69pfRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765299774; c=relaxed/simple;
	bh=cE/g815hFDWHXDlx9ixfgolGQiBT+wPhbxuEEFSVVDM=;
	h=To:Subject:From:Message-Id:Date; b=KXgSAFQ5IbeWcVYHyCPnsQF2k8hEdwj1s/jnQMd4xm1/Q/NHcYwuCY3HyUs4xYo2pQOQO9oeE9nGRa33+PCZgPVYCkwSwo39yJVdT2E6XjFSuJXcdlrbuwZkjKYHNuxy6CVwO/NVk72DvfxSJV/Bi+Yl+kj+imIpDbokR2ZpA+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXVgOZLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXVgOZLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6720C4CEFB
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765299773;
	bh=cE/g815hFDWHXDlx9ixfgolGQiBT+wPhbxuEEFSVVDM=;
	h=To:Subject:From:Date:From;
	b=rXVgOZLWl6QN2Pn9+xmXhW7RQqo2IT4O7lADWtuCQRQNdjNFhNz+mBv9VrGBQS2Sq
	 MvXbtSmKCobkmaTNzJmYvFQuBKR3OBlm7GOsqe0wLgbRQjV5Jwsy0Pke4DMukr3PvV
	 8ze++XcEUiFUWK+bK2xzEAY+SsM98NiIrWi+ZnBj9lcRMjBSBBL7uNYfR8x35N6pKE
	 fb5LxIqvFim7DINqB9Ye1PIbk5QwFMm56g9CaGCrpEesFXmwvqU9K2dXyvG4+0YG9A
	 4peeRqxn6WSuW6rvHkVog0MwfUkMyKEVWTtFuOM1iK8ZCbG60ud3+OP5E33kne1fEK
	 CZTZEzTM7XXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD7D3B981
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529977358.24853.13847869443758755826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30806b767d68a4f843c61afbe003a11b0f394b6374f06b3d180cf7df65653988
Date: Tue, 09 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765299773
