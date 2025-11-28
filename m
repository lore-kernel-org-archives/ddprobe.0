Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204B622F389
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764346374; cv=none; b=ZY2b4x0/eK2/gW4MsEb6nDTFYz5+27wlvA8h5F9racSANLIoFP6jlm/2EvF0wtHKV1MT4ThlF6zZboybRJz0LzSu08DGAAA5dAvCl7Ag0fIJyXeGedIi16VyoLoFGD0i3lzaDDv3DrNaLVwR4q7Bedz+RuAZ2IGPeZO9jeiIPLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764346374; c=relaxed/simple;
	bh=PUVJuRC98ZB9skxVGLaNI2tz03db8zyNkGJFnyyF/2M=;
	h=To:Subject:From:Message-Id:Date; b=SURgTOrbKA8NZ9gtAI2nx+dztSgdyYNHgUvs6qXI3tw+8/xEIY9H47WRpvUoHo44/RfR+NuurytNZIb/JShw9B876L64bIlcklaHsQGreFKhf0L1uzRAOv/m6ArncfvAHVju6i1IWOWOSpznmo9U/roZmRlDZmaXx9wtIBYDpGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiVI7MX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiVI7MX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A228FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764346373;
	bh=PUVJuRC98ZB9skxVGLaNI2tz03db8zyNkGJFnyyF/2M=;
	h=To:Subject:From:Date:From;
	b=FiVI7MX6pqj7wU1lKADq3bYrqAhcxWzgaATw5kt5TxfKJRgOWdeqs2uaAIqBi0oOk
	 SBOklt4VdSeKqghBJDKzlF5hvSQprAsxCJVKXAnommEplBN4Xx2z7+ggNQI1MHxVj3
	 cvIHthkw5j2x8PYaXU38qpWgDQcVAQKd1P2htWUT5eQj4kEf1boapVLGXq/YUWCqo4
	 XqItYX6Ea+ukKXm1UpHAQsR3NHP4foNYztOWNYwzkct/sU7tcjrfnZVeA4hLAm8q2U
	 mj4Gw6uaINpnXX7DGWtwRujwU3eFY+zUg+7noXv1WxDjAunIDMF9IgujqZbqxOt0vx
	 +tubibNnxCEtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E4CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434637358.10520.1881054489322318852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0333e044162730a9cd7a5bab34d39f1596e7e3c799c399b1fad7f5db2b21f4
Date: Fri, 28 Nov 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764346373
