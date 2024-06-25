Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D521095B
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719313403; cv=none; b=tRWSAfbx+HHUo1ZRZShlbA/1LUy1ENt4aHw8g60tRu+obI/Phonw7lGLZmGD6d42hKHOU/0/bhNN3xbKXl4GS8sj6zVUiObio36lwuXsAxQlueR4Nz3gctvPHYZBQay7Mp2XcwBxdsQcA0AQwwjZrmX8yL6MI1sA4pMGQQI1m1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719313403; c=relaxed/simple;
	bh=grUykd6rjabIUMozX6P5qTiL6TiVasBoWwsQc/j64fE=;
	h=To:Subject:From:Message-Id:Date; b=Hfxj1OK5hG6J7nun0HxNrSKyVcfV/6Jc2FnhgdgP0x7DW54jYIpb3L4SvnTX73qJ9lmasQsiUP7HFY449RD66BjfyYhwfdHH8eqGt1vlwSijvr8sGyAItvXTpGRIGiArNMweDaavxfxT3UyQKq4/zLkhxE3Jke7eCdhkpnqtp/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdA0kyhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdA0kyhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0FDC32789
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719313402;
	bh=grUykd6rjabIUMozX6P5qTiL6TiVasBoWwsQc/j64fE=;
	h=To:Subject:From:Date:From;
	b=bdA0kyhl2aG6R8UwVPTO9ws2cAkcFjd2xjNpuiR8+dL+Mji83wgxuUh4wEMS9cpGY
	 tI68h2lSc7PB7bSsl9UWG7v95OX7plmGmfOW75hiVZyOdBOZEQB0sOzMB1crnfHwX5
	 YpoteakT3Dn+lpnuQowUvuzR9p7C8mAuZI2j1Cefyay/cTITZWbpj3yURAaWdd7im7
	 K1mZJXW68Cr5EhEECPA52NaG1iVWl/2hk7mxf3H2uiF5jehXrnUMSByHCmPomkUHS/
	 5UVLYXwZkOFDnXT5ZMYc6jfA9sa+kmtSlpaJ0g3CcNwfon1o+wBUAJQ0hkgPhH1pGK
	 w8xohohl4fQEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C406EC30653
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 11:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931340279.29245.7319894160141553885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d73cc529f5d2eecfc58dbbee9278912f9c2d6447b0f868cb92d31d8afe387da
Date: Tue, 25 Jun 2024 11:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719313402
