Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA732500C2
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732486554; cv=none; b=G+gu/vBJ4zO9XsiujSaJMtaEUThwJUoNlPI2EOQLlB1xDxFrhW9185jJot8rkm6Ee6gy0DhITFd0u4CwBCjqtDbSJxe0oguSBpgPPa4faVC8Qz9rweF6m1babYa+RzinWNYojtt+Lpzd10JCo08m2Plfozw/7i5cOmP3X888kdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732486554; c=relaxed/simple;
	bh=pbZpsVlzPA7bbHsP2YF81rkoqGP5y75ObVj71YJBfIE=;
	h=To:Subject:From:Message-Id:Date; b=MkMcB8PsyaCawYo5M1RIjzpKaoOyRD1Y2X3kKziT5IQkBv4xjOGtACS21e+GKCHcozFfYWnT+5WXTKC74Qp/LzOTkBWjT+F+dpVzVgbzDD0pe7FQ8Y3r1BJjx5EBbTFYeNJrJIn5SLnrNgUJ4jyF69s3WVm47LRrQxipICuKGek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBj2bsQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBj2bsQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A3C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732486553;
	bh=pbZpsVlzPA7bbHsP2YF81rkoqGP5y75ObVj71YJBfIE=;
	h=To:Subject:From:Date:From;
	b=IBj2bsQGl/ayJ8Cdi+pADWtOBBOIA0yu3aoc+Wg5En/1DAG7ITVRJnKDAJiqIliXS
	 2uKCa34vp4t7ekP3m0VAudGxevn5IAZkpdnDI6T3KxKPkRpMTUTrZ7rIv1taZt7kzG
	 +Lxy8pJ3wrBZ60fa5ZmC0Hj5TlNbD6KegXX27YqRAptKxCcNqVi7zD8M96MD6wTDyP
	 L3LngbjmXhcEmyKSQlTVG940nG+zOn5I773ImEWtpx7dv1rnFBSltW8em7DraE7yhj
	 8sTbofV/v+dzA1zLg+0RQ6mABMRUKFyPL4L2lN6N8WJy2iZlcPgHH94YBSni8wpYyi
	 Ssco8zoBRuEsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F234E69187
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173248655357.12973.5126923162207835779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42409a7012d8f1aff1d9d65d15d4c0677c7ca0317a8d4f49e6ebb19255238c4
Date: Sun, 24 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732486553
