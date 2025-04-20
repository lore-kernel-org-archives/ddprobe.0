Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351C21547F5
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745161194; cv=none; b=bmcyi4Jqh+wBvLKzzMofJIRj3LF+L+6m3cnQngD9dkuVji5fywqcDIu3Y66AAeObdlabKS7tuyAgAG+4rCOFbjh19MNroE/ATTNiomdEG/grtdDE9PRT9US4WXnqFk2SdvzEV1Vom562D7hMs++mdVgkow9Ph+UonnYxNjgp8tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745161194; c=relaxed/simple;
	bh=lt6CUI0H1SV4uGVzChGpL3W2d59VIeQpQRBDfo46cE4=;
	h=To:Subject:From:Message-Id:Date; b=j67gDnJ4V2r4DUNacolxwoNbfFjujaeyqPCu1apKZAoMSUY3Jz1e7ux68vxGBrIUMOZo1Z1ZpW5tKJZ9CxwkI8WpYNMBigcxbcqCnqYBvbzXrlr0PQ4dIy9hyKnF/yCc4qbdJTo01dLtoHQtu8uJrHXx8H2f1vlzoSz7uFM+7Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+jviT09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+jviT09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F9CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745161193;
	bh=lt6CUI0H1SV4uGVzChGpL3W2d59VIeQpQRBDfo46cE4=;
	h=To:Subject:From:Date:From;
	b=Z+jviT090DFkGXeX1EgFeYOdo1Uxcg0/UDK8WqoHtHtq2ltjf4tyXQTzJb8gXr069
	 x9zlzktPqkWm6iSW5a5ux2ImPtNd1Oc40yBtoTXS8GWIQOYd5XAh0F93P/xmwHtfiO
	 hARSP4EtxG834DwwGNljffsVa3a9tGExJXYJYE6MA68yzyg6altZ5xMDMOnOVdPzYP
	 ouT+iy4u5K0TwaPsjcWNzzS/v6ehBEF1l02xNfAAGA6pgzCpZmVcakVpi8hjtdJH+Z
	 nU3kvQwUwm2iH/QkpKSeAtgulI5uzVmonUFiDYUQZuZRqHxB5g0EhTLaTOo6QPtIus
	 j6tmA0gcySRBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B48BC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516119359.21664.2800883747077891794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d808e04e5598435a6f2ed4ed024405b442be1dce0ddf7a5d13fc6c91fdd8df
Date: Sun, 20 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745161193
