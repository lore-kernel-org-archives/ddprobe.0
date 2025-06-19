Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1378B244671
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750366794; cv=none; b=MN2Awr+lu+vhDTphl4afAZIQsDIneSPeopmpDUI1sihikO/lywJ9nvC+nXoGMhe5o5SAiJZlVcEG23gAW/T599kdGpL66i4EPx9B1JZn6kefYRpvpuoYgXTSVGLU52BrCyKCETyOzqIkuHjhVJbFp8rbrI/o4Nkx7xksFQyJcF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750366794; c=relaxed/simple;
	bh=SakGIKfL29HhDXiUgcxp3VmlgoBgxN/OP7M/pk2qZXM=;
	h=To:Subject:From:Message-Id:Date; b=JjH6clWxC6lVv0DQaZI25F8pOo05YJ4neFY1nVleCAiiHSWcUDokh28EkD0ZJTiFdQh2ualymjvn4x26OawAmAAE8lVhw3I5r0w5KTY+772kTcq0KVyXogRTugvE9Vgw9UaKTkT5ARZQT+xClmfhZUFDHczuyLceJuQ5mVIGYH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvnly0Dl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvnly0Dl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35F8C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750366793;
	bh=SakGIKfL29HhDXiUgcxp3VmlgoBgxN/OP7M/pk2qZXM=;
	h=To:Subject:From:Date:From;
	b=pvnly0Dl+V2/oGXb6lmt+0Hhb6j9CN1wzsuznWnCC1hmboVeawcQv6ziv3qYsR9pK
	 +60Oo+JNLR695Zw+oLAjH0mCgYi2tZEE4MdfvuJ9jZJGsNbmqfiUhhCB4Mw3XhWPA9
	 XT28oC5D6AkoUyGfzCqZElEPomQu3OI48JLHKUub8chXGDHy3fgeaKCQNS0oAd3c3i
	 upJXKi10DEL2TfiEUi7il3MzyHV2fEnOkkvmqudZNgEIbcB5FPLmus4zIgW/66lX19
	 TmBRExs+64nFedSH3iX2LRgn/WY2x2T6w6wVEAbIMrLuqOFshOLpwp91zvyXpPcnAM
	 D82Ts22EDt8RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECCFC7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036679357.27266.16364590769700245764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ac26a72a1bd2c501be7abac40cb50da48cdb65b1add26f6d15cb7c9379f2be
Date: Thu, 19 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750366793
