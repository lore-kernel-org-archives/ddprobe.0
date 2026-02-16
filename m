Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2C52D3750
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771243494; cv=none; b=c5Mp9fvYgeIK+44AGTGLWRUzPguDdhLxCfu8GOV3SKYn4LjTMcK7d0ec6hslfVOUY4NlkhNruC21G/NLOXiHuGGGLN6qqQI7+S/kNe1Focsi2CAHPTxJ72oABMfmLtNcLrp65OVR/KxTra/gsSmSsf3tZAvCJonG8nybQureDMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771243494; c=relaxed/simple;
	bh=uYSsyU38zhO/XlJ6Rw012jKV1u9ahZHKECPe15PwQ2s=;
	h=To:Subject:From:Message-Id:Date; b=exQgpfLno2WzFj3YqpdZAMfKfuAmZVHwHKZmnh2ELlAZ5d7JQcu+KJrg/6rf/6zxmv9J87L/uQikRrV4wwF+B4ZyhrQ2yOSuMJZIGcF1g9A+ed7yyx8zLSSQWlo3GWGLUhPsZZMIRc2T/F5lnxeuyFQei9rRmfS5i91kCB+Khts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAI7GseY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAI7GseY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC206C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771243493;
	bh=uYSsyU38zhO/XlJ6Rw012jKV1u9ahZHKECPe15PwQ2s=;
	h=To:Subject:From:Date:From;
	b=LAI7GseYsPbAFT0w5DEXHBbc+w5cJhcjL2GkBlxxTfyTFFfniUd58PVp3WCf95Rwh
	 Vzr40Xizt9ZitdRio/p8fQMgFYt27j44EIEzP+yYr/0yoUOPI8FYdt7MoZfUUU72Tz
	 PTxT+1VVK5OXff1kXaBL4oqiVoUcyDNtJjKh9RqOZNr241R8vOf/6GYLbBdG6qydGi
	 3vxDgKAmypBQw8HUXNsix47hcJU71Zb6XGRenmipCbRHOifUdgrNaMRThuEn/9dSFg
	 PKPhnOe9yp8f3D9H/gP56H1YCeuuO+i4YfuD+Y8o3ECL8eoLOreb+Z2ouErF4XB9OH
	 /Z9RjLLt+1F+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96730E7BDA9
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124349360.29645.799078339545878996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61fc16e7104bef897b9111adc23d7a1d7a336601731031d500356e893bf2a68
Date: Mon, 16 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771243493
