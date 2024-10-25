Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3763A4436A
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729899954; cv=none; b=YuUvv6hahv940h2ECPPDC7EVgWWAYguEryvzO+kBBmvdzEai5FK3YDPbc1HXiVzWhS41tm4S76F6inqm07dPMgMUqrn66ptlmse718kWZzbfI0cSXGC/2fsXa0ABLiZgvj7A4NxvInGaHEQqh7rlYiBfrxLI3qY/oJpP6CkxPMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729899954; c=relaxed/simple;
	bh=Zbn1xyoWWoDz5dWGBgOxobtqmEMYQwiiFd1y6n/Nlaw=;
	h=To:Subject:From:Message-Id:Date; b=uf/u7Q/C3KUgoV8kp53LhyNNwI1IaHHHKd2CS8cJvSEQYMxbHcLPfrqnEmbxDOunhVbJY2o8Z4fnJE2gilkxhSH90Lf0yqAt0K8ygmkwfS2aYdIapLENapKyf6SUCfJkNj1mi95RnQ7V+qUvd5LnjXhjDO+PHm0pJBgoiLIKX4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/VUleMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/VUleMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69BAC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729899953;
	bh=Zbn1xyoWWoDz5dWGBgOxobtqmEMYQwiiFd1y6n/Nlaw=;
	h=To:Subject:From:Date:From;
	b=H/VUleMUTWIx5FtYcH0UcDm0sEdk/6zFCV+8oWeyYFrJzgr+QNAngQqBjpJ/gDaxR
	 MIFLaFw2SwNHv7hYQ0uvxffyN4wl+z9uAobvovO4slQjNDdOztqK/vu8dZNbILmuqp
	 +6nOo0m8ZlRolM4acCfOJZLxJxAfa7iiN7ZdpjXHYJyo4rc0FuUTA4hthmx32wVLsf
	 pSvu/2FiFrnlBHvuyeGF7jiPEWwHWmnmGrB2QfFLwx2A0BYnu2mDIRmRxbhgEUTXMH
	 789W51pxViCugbhDh7uuuKyY9CmyLUTKoTEoOUDEs9A79JzLS0h9M4pecAlOmJo7DU
	 UiJXg1KO/w7Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBA6D149F6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172989995360.5293.13121462492513551396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fddeac4c6010b74e5ebe0aa6e710f4a8fc81bcd297b62440c8451bf6b9eac197
Date: Fri, 25 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729899953
