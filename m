Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DA2212D7C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766162034; cv=none; b=EOnQ4+e97uqqFbbs1uDQb7zMp8a1Ml/6DtHua5EBCa99bTCG5Bg1fexS4F+7HLRFDxcHyNtNekm3zX/alcSSYF54JvRu1gSXUTylh1zRHUJqq9Tj/C/ml3C39EemOP9eX8z1zMTGXywub3nVt4Z76LQht2bGjos2I9kFfN45L5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766162034; c=relaxed/simple;
	bh=VgapHrlh6YBIgvl9oHrnctDrIAEIEGRDvuPPgSGI59M=;
	h=To:Subject:From:Message-Id:Date; b=eZK8xFaiHLXg8BgvTRAZHytr4XnS87vly7vHLP0FJqe/khJH4YBBpLHVuuujKyGXEumlJxEVffRp5ZQ2VFcA6jpV7ch39V9lxqUv/hqMcWdxWqFo4GrNWhiR0SYlV/DuURNfjt8AkYk9KtdjmW/baRW1+g5o8EqgfY07vjp6eZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvZbC59L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvZbC59L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C6EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766162033;
	bh=VgapHrlh6YBIgvl9oHrnctDrIAEIEGRDvuPPgSGI59M=;
	h=To:Subject:From:Date:From;
	b=uvZbC59Lwm4gG8zDev9kv9ykDpGccTDjTufwAkBrQXXZn4ffObZKI8GdM1nMUyLYV
	 BysmYPjuItNuSdVHyBA4Qtt6Nw0E3/uZLKK1tABadzXH6P6F+NOWKmU3gl2FHnP9BX
	 fivf7HJJLsEjQGd0Y+U0iTas2Ft3zNAMRq20C4DraSBI8M08gc11rfoT3AYMrGC3T8
	 kWiMLa0SbWTwOThr8eF2N1UPWOgefo3o7PDTjKPqpJ6PuBBv3jyf9QlwATQCBh0N2k
	 gR81qDJJ2tl3PMaSE44mv41Z4kqUWxY2YMOgyurWgd7mC9WQmq15tYTUhhsE5rqNuA
	 DTDXf0vWk7prA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F3D7497F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616203358.23192.488438869674046276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39a2bfe0082edb62eda2a5a3b43a22109ec9db260957214a5a08ddcd82bed33
Date: Fri, 19 Dec 2025 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766162033
