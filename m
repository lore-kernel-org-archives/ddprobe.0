Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1673232
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745022594; cv=none; b=uh5/+0Z1Cc5R8+M3/lkQTrztESh15aUgQ5pdRBoJetZ4ob+FDNG1RGZh3POPvMmi965j9nO7jiUAO6HszRgHkVqZ1/h+W73hkG1CC74EEUz9WIzXEpUua4SHsNYsI+obraAfYGXNgnJMQqJu0FvsJCEqMuVI0xTYAwBSF6gT+fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745022594; c=relaxed/simple;
	bh=bCs6JtkfxbqYF2lBYGntwy2Q91etOTnhJmwiGuXNFWU=;
	h=To:Subject:From:Message-Id:Date; b=Ogu9+C/p5XnVRlRj2dK/bF3GkmbYs4LxaWfXpqoh3V5/kfUCrrEYFDSTwCWdgnrjwPz1xNO7PIxs3CFVA3Mq0P0fzw60uVS19ZGnzBXi+gAS48CYDW89dEj4C6xkXfzWl02TL428U2UoGIkuSH4o2zIRQwmOlhctIeyBMKJpbU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmQH0Ydb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmQH0Ydb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BB6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745022593;
	bh=bCs6JtkfxbqYF2lBYGntwy2Q91etOTnhJmwiGuXNFWU=;
	h=To:Subject:From:Date:From;
	b=AmQH0YdbVE2snBa1ZJ1bJ3ljojbbxi230BpPYR/nEbxw9hCvCf6TJQWW0cH3nSx9J
	 JSF42PpuRJ75Bj6YTZuwMrNLfOkjO5vxjSwXwOJrhZmKDCmH/E+5dDZTz9qhdQqrgZ
	 mNLVvbZ7/TBoM6U9j0/KVUkTlQP2HPWwTz/bg6VB0WZGdkLI+OJ1qdV/xRLba1AUTd
	 cx59cVq8W8jRYUoUndg6HorOiQRiJOQV4IuyvK2J0ATSvomlWhzaELE4i6C0QdpYHr
	 XALynGZPXvUjYtDK8TAe847ENAeTlMnTRJY5KHAIxfhBzer42NWCxUzEoq3HUZxptf
	 mfppyxsP7yTug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9312AC369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502259359.7096.13350761489971829758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad40e1333ba395edf4afcd5b64d14fdc757c7e893b738af813507225df326501
Date: Sat, 19 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745022593
