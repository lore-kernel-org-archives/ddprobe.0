Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E40625B092
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782290794; cv=none; b=KirT2oZy0ml7YRJFbVefFvYJJmPzH0XC1daz7D3DIU3MDv8pGIVwbY7EYCnVa+KPPnU8Xf+VQHaRhX2PVsCEJ9BLo50RGzSJWVIyhwruW1th1+arteoh1AnTaKhD/BOUiQySt6Qdqf1O4uTtRm04/dEq38JoLdOHI17j8xcdAV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782290794; c=relaxed/simple;
	bh=Go6q9El7LHDYlIsSo0Y+wU2btI2IqQNKgvnlm0d5doc=;
	h=To:Subject:From:Message-Id:Date; b=TRlexWuw/lT/ed8WXXfrTBdJyCWDQplE7ZWal8qQfUx4PC6AFoHexWKKr/g8eoX2A7FImIUBQegUVKM9MxIU15dVYmM2wf6/u9qcbZANcg24IJvd9F3P4K2EdO27YcFfutfBDjCYSGQBXOR3Gt3Mg87u1rSEibKWHGO1XyYo+24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1MnFpe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1MnFpe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00916C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782290794;
	bh=Go6q9El7LHDYlIsSo0Y+wU2btI2IqQNKgvnlm0d5doc=;
	h=To:Subject:From:Date:From;
	b=e1MnFpe1j6o6u6vLkzZcLMtFjJSSkfOQBhRLl0FElCe9eq0hB4EJIjOCOIxD2BPK2
	 71/vo/QQQrTZW3gd/t+k097S41X2RV05NrsmkMCVCQbeAyYJmwMpY1lNoa65qMQ/3g
	 FaRhhnt71M37oefyF4fHjE4bqX4AH9Lt82bNgWx1uUCrmD1wHzIgCtlG/qUTYclGqM
	 f5OuQdfiz2HiTwFIUbMy7GGn4uN/VnXmMwENZ90ZPuv3dyzUVzTZwR03Q9tAVdeYUU
	 j5tRZj8BTbgcEzVDdrU84gOljSg+/LsvNKIVT7CZlKitlQS/tbQrfpzbzP3YH4wMQY
	 WmLB947KdVw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C967DCDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229079370.30990.150920213159235681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e642015f3462f4d0728e5f4a277f57c7f106f60bd5c7088dceb12e4b7294754c
Date: Wed, 24 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782290793
