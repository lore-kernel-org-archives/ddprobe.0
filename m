Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BC51A3178
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751310594; cv=none; b=FB4zst1+eVc4CO28St+BetLX/bBVnolMoGPasH8n/75h4T6IocEpUfTnr7/b7CpkebMAnXWzj3e37VZtOyYKMBvfgRh2GijAqkTc/aMf3NG7RaS7BaOTXfHHq/LwxgSdZxsasNvK9qK66Tjy0yZNnEfn0fbr+4wGoyQmcyCGs8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751310594; c=relaxed/simple;
	bh=VnXrnPeNYU1dzfS47LD7bJvWZvawtnDPbooZa4e1IQQ=;
	h=To:Subject:From:Message-Id:Date; b=RFM7uhrysaEhTKpIvQuBXG55fPWJIZQqHaxqA/A8r5WukI8nmz5U0BJKoS2YSi6KE+yTtIc1x3cnIcmdR6JUsqqBVM4UJtNqgAsaNRDH7XqdAd4HMINujuapiQqBEouv2CADv1R2BD63GHik3cA/Wgl4SEfTwSbEUONZ4maQ7UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fk0/0V0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fk0/0V0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEFCC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751310593;
	bh=VnXrnPeNYU1dzfS47LD7bJvWZvawtnDPbooZa4e1IQQ=;
	h=To:Subject:From:Date:From;
	b=Fk0/0V0dsyzi85zS1WuSOYkviZGfvNcSMkWH7wXvisLg8V7pia+2sLsTdgU7V4bjt
	 t/zMIGay2yS9XowH0xOe6eYzO0+buuIteFk67OojZr08DLzhhV1YsfQmTG4uc2Og+l
	 K+plbqXJEkU0ySL1OMyLP1ZbfZ7t5Kkdf5GnoBZ8+KROXGPeeLAwCm7LuV0EwIMRmo
	 08aMXmYuwGbvd7Ig6xBUf7CNk04aUG6K/y89hEKIUx3m6oO9Oe1Qj0kskszN0JCQpq
	 /OrqmQ9de472h7OgoDrPn4Z9uT/SBBb2gHP5ehUj53zauKAabE+1SQGhrnhjzNy2lI
	 L+WZng4DW8o3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C1C83038
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131059357.623.9704962001396051983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c1caed4bb9567201480c391f053e0130999c0c6230295c64864d41621da08a
Date: Mon, 30 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751310593
