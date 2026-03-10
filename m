Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8D92E5B2A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773186294; cv=none; b=NEV2i//tYwbLDtJXx1/IZRJKlWDLZ4jZY0eimzoN5bR+SbfXi7y0WAJmd1SoiXwj0HF7sY+BxjbQDl8MXLL3Fc3pykRLMgZf81SIgN7HLjMSL/OvlmGaV+bivqADhe16BvDo+2yxMq7x6lVtxZ8m1cOM3DGjQMFc7DMuoJG3dNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773186294; c=relaxed/simple;
	bh=HfWW1KdT8ptow8WvAu3ToVraoZUOlnL83I8ZQhu/2qk=;
	h=To:Subject:From:Message-Id:Date; b=SjOaXSRK7Lr3r+kY3w0S+Fv7Ozij47vBoQW4riMMvDlk3cdavf3Qdzoey0B/yp8maVwhdQXarHoaZzUmQu7VXj8XVi09pb6Br1DWb1Cv9kofU8IwXGszkmy3oC7RuWEf7POYttfsyg2vDTULLUYgMmpjo+b/+GrE/Jr64484vpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neNq9X+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neNq9X+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0FBC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773186293;
	bh=HfWW1KdT8ptow8WvAu3ToVraoZUOlnL83I8ZQhu/2qk=;
	h=To:Subject:From:Date:From;
	b=neNq9X+n1zNBg31WHgdvAdcNRIWPPG7Nx7rU9a7xarrAKnIWv4vNWZoyct7DONNLy
	 CH0evzVPAQEpfFdb6ITgKjce3Qf0UetnK4CnDHaBPpBUehH3XK0ojPCCCWg50iFwKx
	 wtkxITVY6+22DaVY5K3a7yCaJgIIq6J0yUlTCqNv6VpiTeXIimOoKkV7fsPWWG4loZ
	 GUQtCA6j/oBD8SYtYC9vIftm/t6Ylrtw5TDUN3MdxPjNmv87A/mgn9ZYU3Z0dUxIdk
	 5tZQY59r9jaS2CmPuDk4sXI5frf/cmr5Z1rd7kXUqA19/p4q1eFFIF3vpo+yJplsOO
	 +GRlgQhlLpL3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97078FD88D3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318629358.2342.3574254601667017055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcb70afc9853a793c4b3e183b365af074c6e0d3e4907dbde5676a065b797023
Date: Tue, 10 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773186293
