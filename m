Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CB717D2
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716698063; cv=none; b=sfZu3MYjbfmHkin+Ee/Afr0qqpFQRvNGS8R2Ko+PTl4H2OzNdB7kLXlpEEKRqCglQVdMrQ8+AKV1L6lUGDbsyW3hjmCSLS7tfY0osqjcHHFz2yhV9g08o+Ipo/3sgzabL2+1gt6jTgTKQQGYybuOgB6LHgGG4rHbKwO4hkwtunY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716698063; c=relaxed/simple;
	bh=M72WBuF7Czr2Vrs/NmPmAIJb3rnsyKQgx8Zr7Au5pmY=;
	h=To:Subject:From:Message-Id:Date; b=Jl/Xt5D2ljpuaV5CPcklHyTdtd8wHImiIuoZZo2L6ERBaBptfXr15JeDbWt/xW0mxqyo9GEhWlUSaOr9BtbMIjhTYYoq1x5vJ1wyzwCObOEXTyrwXHTQs+Xjh+rIB7GQ0gueVt+fYTDYFsFn6Z9XaLLyO9q+Q/HjUEu1hWvvfvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yes6fU18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yes6fU18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF9A5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716698063;
	bh=M72WBuF7Czr2Vrs/NmPmAIJb3rnsyKQgx8Zr7Au5pmY=;
	h=To:Subject:From:Date:From;
	b=Yes6fU18TD6lkdkxbZowONKjk57Pba2KeDlyvHX7Jn+VO3RRv1UyhY4aPgKH2JMGJ
	 6ckVeK0ei1KUAQ+6aEWHYRVpgrWcFJCcJ5enokOO/+O+T0vW2JhcYxEhwxLhDo0cSy
	 1uL5V2BmYIzBGhMEmKwGV3LGyUYD1EuYS3YSRaWUDmYVBVX+D7WZcztRNj/wkSibbx
	 nFPH+3MuKcfOBbRKlODVcvC1O4clkSsJ03UV7XmtSZIzHy//Ev+aWyN0nXqGUb9wl5
	 CPoyb4OejpZus1DXUQmJPEoe6BpwJu1B97sEQt18DROT6IB2nZHfUI3BZ7L7FGRheX
	 a1T0wPXTZssJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D97FCC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669806283.4519.1014842098959705516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22b5fa22c4e399bd87dde062c45e6bca09c45474406ebf60c95d7678b88492d
Date: Sun, 26 May 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716698062
