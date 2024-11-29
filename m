Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5C92C18C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732899954; cv=none; b=NF+q/Uk6CoD1xcoF5mT5vX6WRBr+8XK1y3Sy0bve1D/ypqmdDfVGIQEDYc9/43MAqjAUHVSBjhfrckEKlOtK3u3H6acFy6zGBxwtrDrvwAHRII8aC+ma7y1RxH0gVgzVqViVVlouhXJJT4gtSt+1bf3utCWwg2cZUv3Qv6oIrhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732899954; c=relaxed/simple;
	bh=UwT875awcq7I0D41oOPDE/IeOJlQTjcLWHZUVkaLR+Y=;
	h=To:Subject:From:Message-Id:Date; b=rVQzZ0BUApVlHmJqz7swLJJmLNWRycdnPqkzWI5QhqI+SZodIJTJvdQbal0da4mdJXH2pk0rIDRTQ0qtDM0jdis8OhZWHj62uFcQWmCUYlpKmRN1C40GsBlxz4mieLvAOMmdCx1iJonA4KmAMMdBaNkShBjkKpgYcZfpB7y+I84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3SyO+Um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3SyO+Um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4704C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732899953;
	bh=UwT875awcq7I0D41oOPDE/IeOJlQTjcLWHZUVkaLR+Y=;
	h=To:Subject:From:Date:From;
	b=S3SyO+UmHECa7XmOzK0NuYlzugK9GhSAmdqPJddfvwUsCBntCmo3k0wiEcOH7FKF8
	 zHmlmsa0cZC3ebtjaVfEKOJj69kIFcnE4VfDlLgsBYVJ7Wv4YTmKkGpAZXu1qJ3NGL
	 vHUbRV6LERIlt42YSRg90gWoE+hzsUJiYpfYyW1ekqhzCB3aA3fOjaSKxh+mDg6cUc
	 ORJG7KwCul8QRXs6/Hqeqo0v0EQlD5iDnHPNaeWwPNp83+pVKG/1AqRYsx8to+Ii7p
	 WVT4zQPlmcA39cxRoo3Dk6PHLkYYDsZxmEiCVFJ3UmM5Cpl2Ws9Q+LS+ld4cf5GJer
	 kwejVcr2Av4hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92148D729EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289995358.5099.12949073393945632021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c196ac370c950e1dc8433f23651f30fdf3ed9a3c8dfba096724b1fcc198f49
Date: Fri, 29 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732899953
