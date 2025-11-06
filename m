Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4C63002C5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762416594; cv=none; b=eDfeweiSKT3xJt+yWU5Ve2RcA9C8PEG1cI4NXrq4D4SXZQNCsktuvOWH9xNTSp/Gpt20PpkyhDka/zMwphtwOWp7Km4Ktkkd8IAHlkeduK5ZfD35YYrWNN3Z3PBZDr08IPlRl6b/Hk5eIQ6DPDyD6l2zM31QrSnWPWekSkGRJ+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762416594; c=relaxed/simple;
	bh=1euLRuVoQ9KPU/O0NfLclIrtmPEvS3rVVg8jNcWaZBk=;
	h=To:Subject:From:Message-Id:Date; b=pkgW5SVE2bAp1DSyCqATWOTe2FLBT53YgQ2IydSBvBHtdwli6UnrcGwQL2NYUL5Fb+NIGqi2H6piLAmnyJPm2TVKRIm1gLFQ7wGoLPwVSpOF4WuD9USlW+YZ7yzQU+jplB7hgZBUmR5NIk8vKv9QC0ZQQss8NP2IPCzppL7FpF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyAmWE7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyAmWE7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6E8C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762416593;
	bh=1euLRuVoQ9KPU/O0NfLclIrtmPEvS3rVVg8jNcWaZBk=;
	h=To:Subject:From:Date:From;
	b=XyAmWE7O2qZpI3cW6MlHDvEIeFPExAoNfM8ydAOQZTWQGbdXLrLAgNbn47iIyVx4E
	 8Y8DPLa8AVHOddL+9Y8z6Q07503DceMLPpiE1HavCopIxcv4eCeMePkPn8rSZPfXjp
	 c473VZ0V5/Nd4WPfoGK1GmD9fI3oKvfenVc66u8cWYmjTYu1dSk5loFWSg23uXZizk
	 Wg01sFyVAXKGFgYmfDbbnEA22ceoNRzJC245dDzBFGK9WKkwWu6MrUQrR5CQVNB2cf
	 oZKAv59EqJsNTHAgZFb3D4gejPKvhCkm3FBZ1MVi/pbBWsmnqWvUoWsHimqZOaZJzU
	 eDneth183RC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BEFCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176241659358.8458.12151244557207550808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad1cea2fffc02c565e3a7a4e5223d2fe44d5aed14507bc176572948419adba3
Date: Thu, 06 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762416593
