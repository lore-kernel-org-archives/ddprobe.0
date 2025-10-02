Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1116C22157B
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759438795; cv=none; b=rkZVaXDAeD+JREi1DXUKYvf/oJ/Ane4LBrHxSnDjxHJxa1rWGJgFLOS1xHofPgAittfxqi9yB+77pEwg9v1K6Jn1sOYa5Gos2+p80J/FDu+pP+5wkQXIADAVH4VSCEl7FrwF+CAZv254yVq/jpqoCNqECGLL+8bs9co8ZqjxbO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759438795; c=relaxed/simple;
	bh=YjaejcU7GtXZgtEmsUWIwaCqTxKE2A/8Pdf5bxKTpm0=;
	h=To:Subject:From:Message-Id:Date; b=iQ51a3MYCMq4E/fDp35GcBFl5TWYIRMfB/YNlhFWIxj4+MiF4MIWDU1dlOzOuEMqw5tRspE+snaCvTkMr+mjBfOux5MRXgzh+7JfUFbPMDX37J6/Xr0HpRAUhdWZfPa3lSFjtXISB53AZ/QTTwk3mUjAGnWk6V1XDdOe78CPD/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hl5jkvut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hl5jkvut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2399C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759438793;
	bh=YjaejcU7GtXZgtEmsUWIwaCqTxKE2A/8Pdf5bxKTpm0=;
	h=To:Subject:From:Date:From;
	b=hl5jkvutJ1Omx+mIEHmGxhdeXiO8CmV++y7nrnJqOe0RavT48gxUexQls/jafYlF/
	 NbXHOKdIcbjc97C6t4j8HSO/apyiPfc8IyfhsE2gdtbeoHq8IUco/+ksoX/vmN+D4k
	 Jxd3lFXeKQBcptzW8XwP/RjEAHMYOzwWavjTxPWptvNd4rhNoW1aoVJiumxMU1LMgC
	 gMvh36J99XDyqODiHPsM05a8+h1TMG9GSFkbU3vF6VSoGEP1rq4RWJsl9TbM8YR/dt
	 /RE3D6a8UBTnO+e31A9laAWq+JU1QwPW7ZHYzkA1YqgHvqU7os/vlhhnsT0XmBya2E
	 3S5ZkZ5EggMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9191BCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943879358.2009.7867726254473931175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50a8524aa714b69abc22230f97cfa7aac845e98353c03e20c6e89cccdd4ff36
Date: Thu, 02 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759438793
