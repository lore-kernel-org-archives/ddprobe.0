Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0842D1BC060
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723656354; cv=none; b=j/bQy+4+I/xXrABQ8XdPB8ClgHu3kvZ1E0nQNEgfIF3YyzGfwBR66nBg3FIp/DoTGIPymZU7yvTxVTh5RXqcuH05cuayiIeVcaeAE0k2IMudZtjGism5fl9SJhY5TC9HXb4Z8PhqoaXtcBLb+jSP1A62d68CMyIRs7IjGI9CCUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723656354; c=relaxed/simple;
	bh=eZt19jIpFBkK079hKIIjL/4dc60SfykZhX+2lY6jFUk=;
	h=To:Subject:From:Message-Id:Date; b=taJV1cvAEEyTucI/7gZMMKHAvAQ1wNd9KvSiNb18qNXWUbas2ipu8TZ5lHt5sOe5zGFOc2MMB3DMMU5DIfeQscgo2F98XhKiovbHelUI7FHbt4ifmyVEj/y6WpalOKaWWcp98CeHAFEW4BetYGDGv0g74TgBYakDazYnXj8eWSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1KMiN1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1KMiN1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C43C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723656353;
	bh=eZt19jIpFBkK079hKIIjL/4dc60SfykZhX+2lY6jFUk=;
	h=To:Subject:From:Date:From;
	b=X1KMiN1s6eMY5jmcsrMALTKW2HW/QHqIPYNudj5/dNYNS5hlF0f50GiYLfZug7uMJ
	 TaZPp3kfUAmAvj/XozsKYBr/ZaDGmyVd/H2vzdyFtHCXuHAMRb7cx+OszhuPfGGJAp
	 5VAf2HP7+5DSOJDffxxUWAwRNy+MFDie+vUm8OMHZncrgXbMYBGyMxFTSaTFo3Afah
	 VLcTj9Rqm7aiX2IhBicdnNT18kkPzIe8duPm4f4i9STjv+hA5toW+yuqNFDk1qEsGL
	 0bu/l9joQ3MyDXnZ6JkWoTlSe/z5So/cAQ+8N3jn5bx2C2aDaLyQUF/+ER27QlKuor
	 ZzOt4u2VZcgCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989A1C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172365635361.32621.15821190651834859798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d402e46f5df6ac48969432d404dd2a17b02e210f1f2599326c579fab3e2a40
Date: Wed, 14 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723656353
