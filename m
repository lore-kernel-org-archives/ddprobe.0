Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCE52E2F08
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761421794; cv=none; b=pJZSwDwFKNdgmF+2ELkOIZ0uAM1U8yvifCE3Rn4vI6EibrUWIXTP4zdimiNP/+/ln4z0u9kA0/eNqgXs/+R+bLfINWD7WE4zXycqiB8ahDrXIsNuZgrHw+whvkPOAOtlFrBg+ECocuz846oF5TPHZnljpGqqLTqz1hEIYEwMGMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761421794; c=relaxed/simple;
	bh=f8jnW3b/yEMqWTJkpyjsdleGOSSK7airj7mSuvKsFLU=;
	h=To:Subject:From:Message-Id:Date; b=mOOOrN62T7fJJOo3ouC0zbsBzQxd49n9HmMOHaps1CrvERt+clOkcFDWIBQX5+tIbDUaiJ/COai+PhGqjgGYIVQozoJf2uSMEUwDKsE7qgQmZ+aU92Bxcm+cSPB838w8cE9BIhQDVKKUPgWcj44kRTaRIp/rW2xP64pPHtNg0TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/8hkUV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/8hkUV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DBCC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761421793;
	bh=f8jnW3b/yEMqWTJkpyjsdleGOSSK7airj7mSuvKsFLU=;
	h=To:Subject:From:Date:From;
	b=K/8hkUV5f8gAQKY874c6zShTJEvcRvvReDZG5o2wMxOq2XsRQUKzPnZzCXrP+9VNR
	 DYeR5rz4nuAua5JauRlrMHAxNfTOO4KCWNVpouDaIgqupd1/3xncsU5NQM6nkKKF4T
	 qetZfqy5SNoR9Ped/I/83FTlsRVP73vNBKCraEDSlQc8Zbfw0Gn5T4N1rPxhjxVSVc
	 2w2Q9fnDN1BQ4+LWNZVsRtpvNMSzXC+js24awab84IXXt2uV5G+g3+Oaix2zWZ2g5I
	 muktgfhrkn7eVCwueg3dufCtBvHQGKpO7DSy/oT+kw1m7lB6FiEbnaz/pfcd7wjrxN
	 b/ahBUjWX+YRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2FCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142179357.27771.2873361247934457723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645ffe0b1d4b8ad1ac3f9e25af3cbab97ede7f28691a39b4b5a82cf1612c38bd
Date: Sat, 25 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761421793
