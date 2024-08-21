Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559E71C6A3
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724219154; cv=none; b=HZ8t2JTuRbadRAIzRqqHNjCZSeWFMbN5Pv9puCxWpb2vEC9Ly2y8TiVGUZDXPNk95ompj5W/7hd+DXS4zeZ3G2KCf6rEEH7F5IuQf7w+JaTyMbzBTi+v3iha8SsUnBTqX9+3PICutRtKNCM9otBe3X1wjWMoNJHslFHeKVGLxt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724219154; c=relaxed/simple;
	bh=0mttSp9k7mMsxpwpyrokCZ83lkmQfPs9I27ianLkdVk=;
	h=To:Subject:From:Message-Id:Date; b=kfyIs9eVFh3nQ6kEI+2EfD39EG9u8XbdVO2kF9gr9oeR3Nf+AiVeH8N3bRFOpeZVIqOpu/TsStRGjLy7xP/Nx5u2j6GLBGrAKye45cNQLt9bXJwBHawcweg9MLO67e9ZNv72KD2eWxeRYfDFur0yP0mvzNrVkWPKItLgLtVpxII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+lmzT28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+lmzT28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DDBC32786
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724219153;
	bh=0mttSp9k7mMsxpwpyrokCZ83lkmQfPs9I27ianLkdVk=;
	h=To:Subject:From:Date:From;
	b=S+lmzT28huSiIJNp4EIsk4Ncra68ygmncoqNJv12iLVunZavwRjroqwbINCTzQavO
	 G2YssdfEyBcmuMbO7okxEFwFVmX0dco/v6GAfJLeCjBcJpJkY7SJVe9gMF25vKxiGr
	 TPuF9nZpfjTZuzCUCZ95GsJjh0+FigsSTGS5BiY68nb5oBU/Xk/i7uMdWXexIwH8Jm
	 Tvuub2VYXrHtI8KuRErWtzANH0Wkywg6q5bOh5wXaL1UIDotKPwqtorPL4icDzPIFA
	 Xyfx4wUdW4DySFu/4xPpsKL2etWRLYEQ+0XUVScNSSOANiFOivuKYuDn/u9TFYJkrg
	 HZ4bFCEVQKkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2A5C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172421915367.12750.10818410851846786065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaa34f10f74210d43c7541ebdc62656dea55e0937615bce0fc839f98557fae0
Date: Wed, 21 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724219153
