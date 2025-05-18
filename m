Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433464317D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747574995; cv=none; b=GsBM4okHb+fLcWUNvWH66ruXqRH4/k1yv4KLoHiZxaQZQwgwTUt0FfuLMZI5pkyZ1usiYrdnrM9kW321epr0C5ZS/zFAPQg7ACrdApa6rfYD+7uXuyPbYpR2yL567u3cftmAN2UJ8+vkRrZb8dMGGUILFBEhREn/kOcSehmTD3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747574995; c=relaxed/simple;
	bh=gqzqQ1HlpOkwgbiTQqdsDn0QCggB+kUWkNpH+CEmOFI=;
	h=To:Subject:From:Message-Id:Date; b=G5qQhz785GxMYObS6m7TclD4WeDYa+5KqgEf+EQwPzYqwT9nnbkFeMKE8ZafmC7db4QbZ9DzMA1plOwW8aQfi9jze2yIgSUQHdIqoOKaWYCHwXy9WsufxRF4YTeca4GeZW5aJbO71Irxq8bvm9n5cRnIm0V/sX8KEIhHsk4rxAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxAa8Gpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxAa8Gpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FEAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747574993;
	bh=gqzqQ1HlpOkwgbiTQqdsDn0QCggB+kUWkNpH+CEmOFI=;
	h=To:Subject:From:Date:From;
	b=GxAa8GpahGEcJLy57wSHtp2+/reIJI9aoISb4hegc/N4lCEtU8JzWcAREMwITTA3h
	 WXhJ06wBmcOcOGkGCaKTSnqPESSn1a/KALJF48fUEebwFgR0Y/2Vlp4NYzWFQ59/ZW
	 Xd9bWnvniDpBN4aNLQSQZmd95GrPx9CcWcYP2QKYqmz0GMiTfRcnH3PMS0mUKhNgM0
	 uqga8eppypD7zlFVAizsmn/YRfejzILSedeW2taKhFY3/3FCrniouVGGXLEvuU4BCM
	 X+4wY+QTJIBdDiUESCAIlejYAouD0M0Zry/hSn5a2tKGiKQe3JAYsQFicacqNX+FOH
	 8mjRKYYiYZBwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90049C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757499358.14467.6386438204990767187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702c92ef6f01c3814b2ce229166a327133e80855b4a44060de632c27dda2aedb
Date: Sun, 18 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747574993
