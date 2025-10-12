Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA9E1E3DED
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760237993; cv=none; b=dzuOeYr+NMEU7qPqJmjcN5UR93raQiIPa04tbxP6mGMm4WDyDkfhXkwF5dIyhgw1m77PTmjRtf/KwU586hufsgt6YuHvmZ8/yONVDYQn8hV4xaLuHIKq7JuYWXCXXQtaXNBqq16dGR7wnQxZMbU8rjs3qwCyOgSPPVMXslyGJGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760237993; c=relaxed/simple;
	bh=zpGGFekDxtKXKWziiFWuSqoU6cUi4ygtODF+qo5S9+I=;
	h=To:Subject:From:Message-Id:Date; b=WXeQVaRTFfgLbAETwZyGG4NvGgBND9WHWu4BROi22bS+1Zv4ZCUUExS0eQJ5RWu+y5CKDw3NtIO+rfAGSP2YWB481woKsQZl2fYi7dxpdB8IRUXE7sc55TMxwnaVRG6Dr7cnRTw5KAvEkPQyy88C2doDOsyBay0vqZFTsQQ73JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8a1Evkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8a1Evkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C3C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760237993;
	bh=zpGGFekDxtKXKWziiFWuSqoU6cUi4ygtODF+qo5S9+I=;
	h=To:Subject:From:Date:From;
	b=s8a1EvkxO4H1fVdFylAZlQj9H0AOafJ20E9UcFmR1XlDA1/d9o4uBnQ7/87IOK/Ji
	 CkluSmrsrI3Ei1Lkv8L6sn5UJTK68syp9P59l5NH+0UoVChK4mHiE/NkHNl9UrfeaC
	 0JhyrDh4tPubh/6lHAP/8lRrIXVE+lzSYDrDfiZWvcZCkkI+qclpHGB7BCZVI2xf73
	 NUg6ww2+gJyZ/8w+tgwJhAP7tYTnb8Au/9rR3UTZ+7+3HePaKS0yFkq5JWiIpXQX8c
	 6f+oPzDOumQWtuBdHmkXQDnCcPnQr3Pdw9nC5XaSWFkhLUqJ5pVgAkQFSQA6FjVARE
	 ljnhcmYumAekQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A4CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023799357.24665.1045142485206690234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d69d478514421d8a41b18dc952ceba36907bfdda5a9dd32a7009279fb7dae68
Date: Sun, 12 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760237993
