Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577C819FA93
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743026394; cv=none; b=qiLQjBqdZTr7Xz0MN6a1/WSv9aE4Mu+QjNsfYnyQhLNd5xX4XrgHe23lYSkMQfZ6rXLoV309DoD4SQVeNAOQDGKgB7guuoeFKKxLEhtJe6Po7SDbNFFhY7hF7a+cAGRJngnj2rha5TSCtF/9sitttkK2NRjgj0uJkKr4SyJCFwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743026394; c=relaxed/simple;
	bh=Ve4c5L0CtIFTlskFk1t3BQstI5RL2gaprGsZ/BW50kY=;
	h=To:Subject:From:Message-Id:Date; b=K6ZGzFKCqrnN8IR4GrRIQ2m5H57BWxgk3E09GOL5JIGkqDaoP+vGQbEkO9bEYANIKcroBxYIax5TaEK3X6uOfTS/zhEfEAQpAFx0DqwZncPa0Ltvuc5lay89PnC6JlhPhCYbEjaLOW7VT+R4d7CsAoJ72sKUrMQ8UU6a9Cr6MN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpMD3i4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpMD3i4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBF0C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743026393;
	bh=Ve4c5L0CtIFTlskFk1t3BQstI5RL2gaprGsZ/BW50kY=;
	h=To:Subject:From:Date:From;
	b=cpMD3i4FVHshWMUVmudC82N25NKja3OJrG5DKirELX/QUVdiZob23HuCR208AAFpu
	 Y2NWy4lvhTRhGa/MiRoycJmJ487s3lEorFwVlDqlO+mPF9xBagrP/ve4W+/aqT5eyy
	 clGa9nu24FtFp10SuUY2oB6Nr96Ev6WaQ55iCLEyO1JAtOgGjW2nTbejl7DxPWIaK0
	 Shgd6qAtc3y6fyCKocdsbqVrUsDspp8t7wi1WLFPjzr7vF6ijZH4ocOG4RsODRpXqW
	 KUdCaXu6OFrkajIkEltFy0I2AAsq7xRozcrDQI5gmoS+jeMzUwhStBmZ7s122B1e6M
	 hxCPTlcc26IBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68FCC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302639365.7935.17634249223635629805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93eb4fcd8eca7e0e70228953f54eb119591337f26fac766821a685beb2bdd98c
Date: Wed, 26 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743026393
