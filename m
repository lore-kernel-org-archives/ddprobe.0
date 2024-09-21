Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3087C23D7
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726960554; cv=none; b=jrt9Y3ZcPx5tsoIUneyycQuQsTNxodYR3B98eGEwCGy8tpNFCjvTu00sa8lfX94XuLCpKhrRvGTaZmbBfoqKiRgioMjr5AvOho5qkJjdDVooFPUpdRkI12xabN6oBkCkV/DbRWCDd7qUhyRUuDXVCqHSajIMvPF4ZViM5xc6VHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726960554; c=relaxed/simple;
	bh=U1s4H/hj4NqnBnRYL5bzgL9AO3PjPFa6TzdBMJosRds=;
	h=To:Subject:From:Message-Id:Date; b=DWQ2FPOedNKCcfN44UAQ6OJLm/Uccy51Gsx6waoOxBBagf9mXfz2pZngPhVapIjSwIF6tuSD0oe9/HjMnQ0EHY/CG2TOmXBPzMvpWL58TqjrAeh/Di81TsJzJs3MRJPSp1D2pFLwvv22SW9KY0zY6CCBzCgyxsq/MPVqJyJwQVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbtV8/Zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbtV8/Zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEED9C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726960553;
	bh=U1s4H/hj4NqnBnRYL5bzgL9AO3PjPFa6TzdBMJosRds=;
	h=To:Subject:From:Date:From;
	b=jbtV8/ZpVK3aMqa7emFk5g0INkD4taw0tqavyV94tXDNUJLAHWSwVEb8fgq9MQK86
	 VRof4z0l+juc1LWrN13qeA+t35AMP5NE6+IC917qcaVCYIrkdG3mTYAziOqaEr254B
	 oLD2gYzqQlV17XivoYtVxseqaNpHgDQX8pl6J0PNsPCl3eSR3pNZPUzM4shGMrgQC+
	 K6jcid7CuFOy/+WtVTj/bPOIAmyJNmGjwfjvb3qcXOgS4P+WVhUrHr088BkfHgcKPq
	 upQuBhBzTGfgMs0gOov3d23Tgy3gaETqImGNAOYijw4wuB7EWJGEAnp8vZ/iZr9B9C
	 Gs/4v+g65/LGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF4ACF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696055360.4769.5458529389241037686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b08bb6fcec364e11e14449fe0f84b6881b2e1a5bc8ffd7e60ba8e589a7e565
Date: Sat, 21 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726960553
