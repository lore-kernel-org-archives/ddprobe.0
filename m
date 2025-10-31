Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD4A34C12D
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761921594; cv=none; b=sFJVWyvfUMdpuMyU2ti/i0GFKkukhVVlmqL+mzIeyfeWXYXDh/0XavLJiFF33XaysM8JFmMobgDPfKOyxU3FClbuXeXbySsoIbvQrUtzYt1NTOw1Q0V+Oi7HQDXoTNNNELSXjkQPe7u1n6E01/gAcput2BSKuyNhfWQRlNb/378=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761921594; c=relaxed/simple;
	bh=hqpjmEYp+lR1g1u/YtIlm/jXPlLCsDJSwOGs/IkuJMA=;
	h=To:Subject:From:Message-Id:Date; b=BM4u75r+WxAJPChqbpDfrHPDQJV4FEsFWw54/vvDtrAp4YoisEXK0rxx1v0eUtSgM3fGnMT+Xl1HvbwIVcL3l39NW4EmJtzQXQEN6ytJaxoZ65V2CgWgpjaGnX+PQ9swF/hCcf26iCpMlqAOp70BA+BdpBXPOJ8bz4IEnbrJCE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV1dKG8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV1dKG8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AADC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761921593;
	bh=hqpjmEYp+lR1g1u/YtIlm/jXPlLCsDJSwOGs/IkuJMA=;
	h=To:Subject:From:Date:From;
	b=DV1dKG8E5f7fSRoFuPve2xk28rk+YLkavd5jPMloFgzh9zUDYxdhSDW/Xiv/83ya5
	 +5viTdAVHrqqJ9LAm+pbQcqVagOjc3NA7ehsoDFgcdWrTwyJ2j7E3nTQvs3QYqEB7j
	 iwnvKCbX65fQT6/UQoWAdfiFDO0Puy76x/tY6UeCq3NVsUJ5ZowWHQmYbgPqPlcSgl
	 lNawZPKA7LsLa3V0Y30WDvHqDITUg61lkltf+61SpdEAYLpNHxKzwFyyEfF2FPhaKL
	 /+2w53gRtD2XoiXPEOLyaGC0+M0mhVxeiYEaDRcQhraT8tctwyjY6582Xs9vGo1pTD
	 vSWGePheXO/DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B77CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192159358.1458.8748351573664553366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fc54302a586240739317e5dbd656f6c70a492a8ed8f23bf35d74c8e96dc067
Date: Fri, 31 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761921593
