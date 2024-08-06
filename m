Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B0913B2AC
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722943554; cv=none; b=DRIsBT+vhSVPKDx77ZxpETxKqzL3qS2+DtqNx7LVl5R2e49e4gFXf+8tTF23fnlwiKEsywuiUOyFdd63xk1M1J+a48PkQrVYmTJrQjbLCNVR/ickyYZmgbPCuB48t3XeLGOh8sQitDyEv/O2jH4dCJyO3LaGt5KdmC6QBM2/KDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722943554; c=relaxed/simple;
	bh=qy+g+TqIKaStZcretWy6k4HRj9XxAupNN42bsEs/oas=;
	h=To:Subject:From:Message-Id:Date; b=hzg+eMcbSA+A4pAI5ZsJn1N/LtXnRo8k/iTypNVpPlzXPZs80cMtz31HKoIkNQGCboln5vdbWbU2GF1/DFRvdOaYuaAlLuJEk9I4yAXA0xcRcYKoiY+lWtr3Aeh61QpBa/VIe32uXr3wPU9qt7l6hsYx4y84vuFSYVPTg02KedA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsjGNkEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsjGNkEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59FFC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722943553;
	bh=qy+g+TqIKaStZcretWy6k4HRj9XxAupNN42bsEs/oas=;
	h=To:Subject:From:Date:From;
	b=qsjGNkEP6t1lcT0u5rCqcs0w0h1ygiDu41DV2IW7gg4QBLt1FMrfBHLtrTY/xZeup
	 YZ0Psqslpr7BN3o2nbkGbZ5UgWImNtNgv5kWpQswpPWpqPgZ/lC7hXG4B5fWpc8Lv9
	 2T7Cw5PNm7Lwxaz9337C+UKXjWkB0f/U734maORLsBuIeLAj8jMWlbwgA6pFVY24Hp
	 akEpWi6NcCv1DKcDxFsX8Ld6ZRTMVla2iPxo4D67kHO6FFLw5obsdW0Anrmxc0NgS7
	 S8BPEW8SP0lhiDALmWt59E1nnj30oAFYAz+TvKNtFuh9e6TgEhcxwEsC8GEa8WpBEj
	 3n+/xTEtqrchw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5C1C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172294355359.30589.14140750027360740199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474c0ad47939d90bb4e9cff26283efc53be89660e447c2b57a7c5627252d551a
Date: Tue, 06 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722943553
