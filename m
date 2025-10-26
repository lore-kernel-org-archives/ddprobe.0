Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3512B1A0BD0
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761449994; cv=none; b=IRN0nS3e6poyIYvnRJK8tOhvpLVLn+Mi9JPYQynNz5wPjHwGWKakLSyhwotDIgZ/8vrGxgrpvIcdzWdtjobj17CgYtPfFrpTEduUw+eXBzpCOBRECGhEe8t244mfC3bOg6JauU/AqUdTc+Xe/8WlwygX3Uy0dF9xV5Y8DGFmWUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761449994; c=relaxed/simple;
	bh=U/FtbaJReBF6zb+j3YYdaNLRP7VXciBd5LoCfEyaHno=;
	h=To:Subject:From:Message-Id:Date; b=m9eccoh7a6mFNvAoGwz+ddes8rqNuBgzWeShQ9JVyb1a7NzNq4tyDiVJSknnT9ntkOEy4lkEiOT/gsPMmx1BO6T4ov9iqMwIR0tgewkio7xnVVTZmjIHv6gCIEsE1ZpiBHHm20LSW7PcJQF7erBrAkdOjZN3Q6tg89TXGhA0LFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOE6SUxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOE6SUxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A0AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761449993;
	bh=U/FtbaJReBF6zb+j3YYdaNLRP7VXciBd5LoCfEyaHno=;
	h=To:Subject:From:Date:From;
	b=HOE6SUxzGKw1t/9yQCHrfmnOF/9bEZUZHZmu6vnOlXv9zpjdPIhCWDztqJsRM6AQ7
	 MUuukxRCRvgJwAv0zuba/N6L9nJGUJsGerj65ce4k+TH6VHScMNg/bwZ/k+zOIlK4Q
	 4vZHQcT+NeY6feJvf24pOahjR16CK5Tof+Rx0siOZZpstCMYlQPPFral9IwzKNT/kP
	 sYJVBH/M0/THfyK7lt+7GwarBgCAQ2CHtPpvnzQlNMUZF1DQweJ3TxYCeF22xdjAjv
	 O28wc6bavlk88DFttZ19qJiUIvlJpn9+t6P1i1DsFIUBVK9CMrBFonGFo6EECdatxf
	 2GWQBDEfaZasQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED05CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144999357.28215.5611683420871858170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3da262627c281d799a5853b1f2e2ce8bd3710acb8a8e76b31354bab7001a764
Date: Sun, 26 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761449993
