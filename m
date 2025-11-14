Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400602F5A22
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763106594; cv=none; b=uIwvesEKQvorpCEQa7kbnqYz43YvUJmp8OTySAF8/b76qDWl97w5n3PaZOhhKfZ1MctojXbfSi+X7Bsle1bCskGq0lGkdjtMlB4E2j9H6GAMrq/LtbwA+57TtiyIorKn6U4KrknUas4St6O7snTb4zQgqiw+2fknsKhqkj2Mdy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763106594; c=relaxed/simple;
	bh=kRy2G3RdBvfEr8zohdaBlb4NhH9feYDZeqXnqzi1ojQ=;
	h=To:Subject:From:Message-Id:Date; b=T6Q2qpjmKW+Et4yIPUvcE99W14QHbuK2VhFt+GaSAz7eniWS4OVDVJ+zv8tyerZQG9+7fFKQeD9EOYiKNn/KfqsTNwDNGk4iRIcIXzv5evOxDQqXTzD5uuAQ2pNheBfNihBkTC3Enf6/KZEZnW3gyTJKJjCzk0W3ZQgVllqGPQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfwmvPrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfwmvPrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A873AC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763106593;
	bh=kRy2G3RdBvfEr8zohdaBlb4NhH9feYDZeqXnqzi1ojQ=;
	h=To:Subject:From:Date:From;
	b=gfwmvPrfJG0ai4J07mlV18ntwdefVSn2rQcHQr04HHw3go2pQgX3MAcCbAo5Jp2u+
	 idRS3Gop5DAqgsRv0SZHkb078HnBuhTUsQMw+3ba8MGHs7JMwLt/lF/hT64PteZHx5
	 ICrCMd+F3/GsN5S3xZgcIZiJvOsST1tWA63ihC53UVaV5WDAWksRycorExyxgMA10P
	 Gze9OT0kdK50QGTEJX2bhFZHO5vz6cV0GjTPzfaYAt5KiQCRDVDba+gHkTJgGpr1nw
	 2tROmneFpHffWirP/wgknaSmBwXxG0TUp5tlWAZNQL6Rs49HC66UEKccl/1YL6FfSh
	 lLqRu997XINZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DDFCDE01B
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310659361.10084.3506938904241957534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f89c350602d6c63f90ef0b9c71383c1df976c0ec7c491b19063f51582955dba
Date: Fri, 14 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763106593
