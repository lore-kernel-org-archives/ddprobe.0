Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D0D218AA0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760766594; cv=none; b=JDveBQbYmAakQ0b+iEWB+WFmJBtd3wsMV5Evmvg2YSu666V/Ds3bxI6wUHMnUFjzYih/TirXKhja+JJwuvVAsxMvzmSQth/giqdPzU7CfQh9E8uZY2RbphUboR1LDGnVvJkNHwsIZVIGK+tSWrTtylWGl1sXbTN1BSDxFXajfBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760766594; c=relaxed/simple;
	bh=JXSUrv1z0IUVouzpCwPTzczlDy/JjPGfikk9R6gl3+E=;
	h=To:Subject:From:Message-Id:Date; b=pbqHSTIh68SE6qcUmhlQSwxLXJ2SUYaEOrWiErjh5vcxwodbwPuSW566vxj0Y7FovU81bRU7vhI0rjIgB+GO2hWY0NEZoJsyb4SdlDxYSMdEBxlA2fgBQo544askl/RxJCq6bkMlUNk0WL7CSLNJabmwIzypse6YQd/Q0xRdB5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehCr4D0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehCr4D0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA016C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760766593;
	bh=JXSUrv1z0IUVouzpCwPTzczlDy/JjPGfikk9R6gl3+E=;
	h=To:Subject:From:Date:From;
	b=ehCr4D0lJVBfLd5yDb34SI7YeyZDtcriiWyO9nxYHAeeiyV7UHzsepUZaPjDyn4tS
	 TIt8E6hxqbqEEdx+4tG2VHxWGexHcGqAmlghAyQhfhIDrIqLyn2gLY64NCLPfZhVcb
	 XYVDmCr1SvycjfWAOV/n40PyCgER3RkMH1Q7UUbkGVKpRfSJwkqOxqIAcbZJt9ZSSd
	 V0pOnIHfP2U9B+FndaIip9aT559sbPXoLiheyqBpImIGdzAAi1rX0kEKzr7vvadeZe
	 +BlnL3+LNcmTHTyvuAKyTiuY4/QrlGmWxF4MiDtexXR8KowgWSRyoTB252GGYYNCY1
	 jXNI4p6AbnaAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFD7CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076659360.24812.295496281877302355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d416ab7074db96a80efdc1ae74b9b6cd61426aaa99b8619fc7251f72efe1f044
Date: Sat, 18 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760766593
