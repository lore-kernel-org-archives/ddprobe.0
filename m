Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DF6233149
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779671554; cv=none; b=OTpg/Dvlefy6TzuNneCMiIqLFDZTW5rBRbJmNL8XARzJcRl47/b9EqqFWO3n6u9nE/2tVB1wTMgYGJoQnxwdntZZvFXXaoK0eB3wrRXibzKxyDu08Lum0oR8gKc1JeRQFvNrDsCnlqyhdYmHR7v+rMI1g0gZRBMTREknZ9V+jdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779671554; c=relaxed/simple;
	bh=t23LlIzT3Jk3Le2ex2q1lte+P3eLnihRHPUKK6FhA+w=;
	h=To:Subject:From:Message-Id:Date; b=V0pqOM2W+bcyOAzRCueXzxBROKDInAES391+Y3lF204BM573p+fae0LEj8p7mipOk5zDPwMjB9xKWo55WjsjGfbOQTpzTqbu3Egn8+ttpNIzL06P+i1Uc30PAfallXKhoRe26UKRf2mhgSb29CmZKJmnmcuG7P8jZj3qDaFgZpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjoLjtqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjoLjtqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D84C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779671553;
	bh=t23LlIzT3Jk3Le2ex2q1lte+P3eLnihRHPUKK6FhA+w=;
	h=To:Subject:From:Date:From;
	b=YjoLjtqBhgkOfH5Owg1gHuM4nXTMg1hCGnM70PGeo1EZBf4SLd5xrkqww+XJNjIbz
	 POL/uutQso80afaSK1IVCKgw0CJ/yGfUwl8cDHNNCSB3I2OERsHl3Is3X27VWGd9CE
	 tctkb/Z5nhPFlS+f3PhyYeIyCv7AWJvw4aGjcIzlH8rf1WcgqZxyZn/iHgn5kwtoip
	 OG3zeckinADPbWFZeN0sySyMAykVAFRYH7J6XFM1n9BzD3/1cGIYe8iEWw1Ty5JBy5
	 Y7juIvGs1Lp8QQKHSTT7bp6Aqto4ENnS7siwAEZAzbuXgqql44YooXOmXX8xsBYQN7
	 bJtncUp+/dEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD867CD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967155368.22740.1262323695920793460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a6b1e56004d07521b7ae6a3d246ad80e71dc31c95be911368e84ac90e1cdf1
Date: Mon, 25 May 2026 01:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779671553
