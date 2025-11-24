Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B8ADDA9
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763954514; cv=none; b=RAp+XyE9W25y4zxHpcguLiziiAEXJ2mBoDSV+XeATpzXscKbJrSEoA1hczOINVpZKEMzLiKivebD3M5RZdCpKjql7L1OX6qTZGImxEUGyx0ytsIOCi5Wcu802SHIkznGPiVTRX15EPoGtbmBn+z559MtXIfmMHEzrP8Q3MU0T24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763954514; c=relaxed/simple;
	bh=3O0VPULZgyCzVtsQs721KrX8pmy2iMI7bQh3pizsJoo=;
	h=To:Subject:From:Message-Id:Date; b=hU1+Dewe3tAuMZLzabASoP++tpScSzWuNhm/usIcszJQT5ZWlb7HBlVqeuXpzkk+JQY8Mjf5nv84wVZIuCgquH51Z3lIYDdeIYnia/wezBL1gLAFc78ktmYj2UbEXwJdFM9SHsXABRUf6O/VLW5Y1T/7APapu5c/kEz/y7n4GL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMTyNbLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMTyNbLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA353C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763954513;
	bh=3O0VPULZgyCzVtsQs721KrX8pmy2iMI7bQh3pizsJoo=;
	h=To:Subject:From:Date:From;
	b=MMTyNbLhUk09OKPOzCTA2l0eyyVGEonq70zDFdGFSntO+rWOYLGIyZkFVmCyZcAh2
	 ZRZ7HTWVyhshCZQlq+oPNTf7DZWWLgFXmo50tUaB0R/BxhNtd8yRUcgdB8RUS7akoI
	 kxAjAEtsHonzhTRm2WLVkWop5QpScCvT3ytOeOgkR33MbNNjwDyhryNgQ0y06Ei/JD
	 3CPfh8gk6JfWpaVuXrJ82AfMeZxEHuORWdq6hRb3tRmolfk9bQrk4yDqMTld0040V6
	 UtbN9l69nN0DR0Mr1RF6nz1rtf17db1+2rMCxHdlk+A9nyaclhAlgO9r9MZ9erKtvH
	 2LAi1YuwmX7JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B03CFD316
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395451359.13757.1341728619233117685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fef958ef3355979ff090f7bae7b4515b44e33c843d2539a126c3bc12e46b03d
Date: Mon, 24 Nov 2025 03:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763954513
