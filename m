Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3EC26F2B6
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764042174; cv=none; b=exwUh9Jh01clMyN6WgC2ODeSWIF9uPfyBlLeyYulYz7HuMVpdEnvkIJeF6Zi7ZWyV/+K7Tf5k7i26nWpK7KZ/4TLaAJJQH9a7SbNMv0CzX7Tnog+1Qy6vO1T8VAPX6/mO3Jl3c0oU6UCnlPDZaxNWmnXfj4NsimI2EYD/klSG5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764042174; c=relaxed/simple;
	bh=auQ9ExSvQsnwlo6fmic32W6OQqUaEHG+rNlGUH1JnKo=;
	h=To:Subject:From:Message-Id:Date; b=LMGbs9yv837seyV/RFI0LnJDnPF9t5kupIcpyWcinnKPLiMAit2xvYQdwblq7V67U/vx/SthZ31DDMLEa+j3ZtZIdyYIagYbxRi5toZJRNygZSt+QA7YegWh/i7wP92gThk1N+wCr+RyyJ0d0/o9UJsBZnSDXGLam5DWGyRvhpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOubY9Ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOubY9Ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF08BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764042173;
	bh=auQ9ExSvQsnwlo6fmic32W6OQqUaEHG+rNlGUH1JnKo=;
	h=To:Subject:From:Date:From;
	b=rOubY9IhMe2qdI3YMHAL/RtSvsCFPt1hHdr58Ol7eeVvxcopJIcoqzMoALRT/UEvd
	 lj+WXYso26A1YO0mrxU/Wh1N4j8kHj7C4qllqch4tKHlSUcdtwuEkrj2rx7bMIFaiw
	 RmQDjz1WCNnHODdnbJXrRN3L+lyyAR2v2rgyqk5nltnPtGz7dKK8XdmRozA4Mzj0FJ
	 yVG0bQo81rcGp4bYlNBO+OAfs+nusxYhqfzRP8o0Kr635xzOgpgrRyOgIMkHpuKYjx
	 thhlsp+ijz18pLPQMwadbIaLfNHmfYhomIrVoXXOcjDS7I+7zF+olOf5z2snPe0qlq
	 alkMEkCKyCBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9946BCFD376
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404217361.7798.12577270190996392532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8883e2fca0ecbf132d734c3e0f00e4fac81c3bdd0dd6beac2ddecf4b42a5135
Date: Tue, 25 Nov 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764042173
