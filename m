Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8A326158B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 20:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739306455; cv=none; b=ExJSFtG+bydyVqvWXyNDR/bduUcX6Ko1krJKGoR7as3dihxt06dwTcJCeTBQMc1YZDq39ZTKU9cIMRv60qrC8rrx69g7tswBjTsBvwck+ZFZ0/5Q003OJ8bAsCykPSuiSAhDtN/jaWNwgxHtArss3Q1S51w4Xlw+GgQIguO3gCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739306455; c=relaxed/simple;
	bh=la2JTvbdVbeRuAsHbCfCfQTmo0xPL2nlVXIh9ND20ic=;
	h=To:Subject:From:Message-Id:Date; b=u6lxzur1j3pfOY4k0LYcO4w93mymVa6OTn6cXS7l7VTgFcg1JpaUhWKgYl+Aju2tKpp0SuhFWhf+UHjR/S4BU67VfoQT9Gt1ICBuInVuyFkM9TgivDWB0MX+VA9oqFVJr9+3kPDG95YZ58p0C0ESx2vfMvS5SEPCfDgD1SnlWs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxxxpYEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxxxpYEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA726C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739306453;
	bh=la2JTvbdVbeRuAsHbCfCfQTmo0xPL2nlVXIh9ND20ic=;
	h=To:Subject:From:Date:From;
	b=mxxxpYEV1p9rEN4bcRsde4lg57xpFVqn3sEjx61OJYvfKxQno45JR7JYf7r8T8bY7
	 sQ6CcJ0ijWdKg0vqgpTORoe2WWXEGI/EWkyqgccsO+dmTHYQBraBwHJPnCTv7xWJGa
	 NzkU5ulTqPyDEdboySP9fqHXXA2Q0CG7+ui3kBdA3MWu9vqzJbZZEhmEU2CDS925ou
	 vW9o3IaIDULsMp3P5qPpHU4A2u7LRepLGBEKYGo0axxRp6ha6xGx7Y+MtPRnioHnLh
	 zRVOiV0yvef484koHb/RCyH+u+Y/peN2Ksrd2yg6gC5TQF2CZn89Bt6gxyO1FHRKit
	 nUt1lCzSGl0oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9653AC0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173930645359.21156.11148276530159752779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a96432e48bf2b02ab99918217656578bd9b28046ff6f198ccbc95db226809f
Date: Tue, 11 Feb 2025 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739306453
