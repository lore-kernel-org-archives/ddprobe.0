Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6C2239E65
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746812394; cv=none; b=A9rEpLKV5/Ny9bjhfnrJTvcIxWDb5MQY2Hr7RcTamLdYNVu4hdUzUD8YczuQ2Pnhwvy5oPYUj5u2OWAGew0pePhthGumdUDg/SXWuB5U05kt5prAVtnNv976358d6MfutfTnTiql7kiEwik2eus7BuQUrLbi5AfLs66mVo/elqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746812394; c=relaxed/simple;
	bh=dPeCPB/zNg+/8JrVJ1tPkYhPBotu6kxHOoW2YnMBu6E=;
	h=To:Subject:From:Message-Id:Date; b=j96hHzKmvgA9ojk/m9o/2jmCdPI0t8Qy3EZWIexXt50Kpr1AAdETHD6MWEhDKHGp2hTV7ArhnDtkkIY30VtS0no8hxZWzUdObu70VwBdlWFNnC7jeEqy4XNZQnZFOcRfKxQhG3urfjZgxB7+7cq0yeJrQn2hE6Vd2N5fDCB6u4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2PvmmOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2PvmmOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EED5C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746812393;
	bh=dPeCPB/zNg+/8JrVJ1tPkYhPBotu6kxHOoW2YnMBu6E=;
	h=To:Subject:From:Date:From;
	b=E2PvmmOXxumEkjsiQSJP9bw9cF0p8/naQJeeX0IwdQh/ERCRIjC8CWAo3FeAQSKG9
	 eKzd554p4A8f46yI7VcFYlZi4pJzsFvdVZIAcr/NrgAH0OOns78Bf2gdrbfU9B3uO9
	 HXQwdJy35TjH57hJw9NDbO9PORNJeikFJI72E2Ay203KTZPLXuwJTwIKWg0sjLyIB/
	 gkQJx+WlLSla1Q2sBM+9vny22wyFL5izondxjTD/ZqpGw3DDEA27mMZkQFf83qzfDg
	 dqsDCTG8m8bF4Ni1Gnop19x31N1zUCSPfSBVPD11gNhUM+HB3GIxuK9q5Xq0gRzaOB
	 xlo8/jcXHctBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE43C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681239357.15703.16394504381065360259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4eb7af0dff53499352784c5739fe2a16dd16e466bd9615bfaa025b840379609
Date: Fri, 09 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746812393
