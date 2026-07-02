Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4641B4F1F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782967714; cv=none; b=hAKvT4Lgh27NYzo8Xdq05S5wdMLqRVUNEN/aLTr1qyt5QgbsSlfrD5HNcSGyc/xO1I+kc9rzN68Wx5qUTB5Mq1Coca4VRVJdpywRBehHbKPw4OEeSWxY4VDdKbHZUSKl7eK//lG+raui8xM5u1q94rXD/qC70Ykh/5oriHDZWCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782967714; c=relaxed/simple;
	bh=B+UlKt2XUV2mSaelBVXuVAKaNqvBa7m1aeI9NobRW3Y=;
	h=To:Subject:From:Message-Id:Date; b=nmybbYIJmk2yewvJ5MJCSKjuZIZDtY2HBckDPWUer+InLVZMsyfOaehXgIcUV9VGn7f+wrBfubWYIpiFDqwRwktdxc1c022PcZhBh/reEoiKhOwro7/5P9dfNFzea7N1RNf0evkwUg0Kz7ihh4dm2nIAD9abkSL6/FZo1noffDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lG/pWcvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lG/pWcvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D272FC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782967713;
	bh=B+UlKt2XUV2mSaelBVXuVAKaNqvBa7m1aeI9NobRW3Y=;
	h=To:Subject:From:Date:From;
	b=lG/pWcvxGGG6fKuE9U0MIaGcWx3Bsomtld6LKjuWZo6pxD3iYKJ7Vqzc8YyHVvP3L
	 PVaVQjIooy5w8zNBy0CRIBVAeinVZZUoRGYoI3lEluqdqElgRtGzc8MqxDfmpnJuVc
	 /8ZrwIzOy9i5rxGnTBEXxJU73/sgJ7QoKi728CWWgtGd7HOKP992FXI2bTOEVQfaFJ
	 Bx7oyr6GwknZWG3/BxYnxuK98hD2mV+Ojui+fSF7lVrGgs+w5Kg4I0EwgRMk7xVV7n
	 gNSGke0NI412OqIjN8WR6N2ocMoLxmMF7z6+Grtb0fNuPHfbeWXKGMxJ4hqYf4ZQMk
	 noJAZBIgbFPOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB17C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296771369.25019.2169462622592083427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013eb693556ca3c8b9aea079dc63e28c7747accc08d0a818becd94d4433c5626
Date: Thu, 02 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782967713
