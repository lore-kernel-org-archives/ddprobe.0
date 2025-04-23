Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D357265CDC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745395194; cv=none; b=SyCpnYBDJIYcC3RzBmkNBsj+O52jPHlzNQoRagT09Wc7mDmfnjt2oExPIbBum7dsPdNO53rsagy2Bx7BgKbmJZykPoriTkcngodDmbEYMmQNwDOucPq0Dd5SQ91wLcLa6bR/gZksU28Vw1Qiggt4G92/nG3/mWS/lSi0iMeWbfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745395194; c=relaxed/simple;
	bh=Y5aUiw9sCtfRpb2OG9UB7qw3LHchsdfZTsF6UwphToI=;
	h=To:Subject:From:Message-Id:Date; b=o0P6+4wWm5cC58SWqdrUaHnKQ/DlXl1NBiAl5UF+CuCY1ni2d0fLeqWoxnufSPEtmeW3ePcjJ83ikCBb8OrimR8rjp/l9nrwfecf4QJGLzngH7LwdoU6ZZf0KSaeKeaaAynnmQENkiOPETOB2DdLf6QsK6ZLJdfOy4VcAG/Ua9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBsQ67/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBsQ67/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A052CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745395193;
	bh=Y5aUiw9sCtfRpb2OG9UB7qw3LHchsdfZTsF6UwphToI=;
	h=To:Subject:From:Date:From;
	b=ZBsQ67/gzOL5uQ5wHnW7rVg6OL3sVVk/hBSDHHinub5sBE4KDS/z0QKEOr1rHN1Ec
	 lfBB5X1Qk5jrEip4tOq62vz1ZhGWivZ7NRB+H93TOFKAC57gu9+VrUO9j9cxC99ZmT
	 W6mIfxCBqzmODLqufXPE/mk3wRNF1CLSKeb/CTuY3MwAU0tl/9CTTaElCzMi3tPQbl
	 tC91n5J+zllHGBAADBkVChKcYrHbiM427lQ5zOn9fILEMDq7V79Qom7LefQrzoqHaO
	 wCP7hYV2ejpyy+8HQBm9uqirqG7dCiCrAw0Y8ruT3xcINFv5w01AKEUnaApT0BLTTw
	 8BjI/wkP7F2Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D40C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539519357.20683.2978564037384509961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281bbeb304cfc5b9adaafef20e41c35a25bfbc8ebcffba2c9ef571d06de9d756
Date: Wed, 23 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745395193
