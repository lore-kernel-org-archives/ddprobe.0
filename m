Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3963C24
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726107954; cv=none; b=qUMhnC8a1MgDkicdqPO0rIoTtTKIG/QyJf75R6vJ/kg5/fkKmMMH3wCDkylASlSVAVXfosH5X4ONM7T4njtx5rnT0xU7V86SEwQURj6Ja8gr9RUTTHj4XusCqSHYpIq95bgpCXSi6zxPJoB+/Fd9WgFvEGE1KZoe1/TNUutXBGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726107954; c=relaxed/simple;
	bh=8jCQos5kl5X4ePPiuSNqRb5rYLmGzFzZEPutsaDyiEg=;
	h=To:Subject:From:Message-Id:Date; b=JuCsr5qBTNjhx23OiWOeajuFFvM3gNzq15hXbqwoA2akbzAgFV0e78KnWonMAhWsVMTEr0YrbXeBqTawnxdLTzaDWoydLCuqibuugw1uDMO/MeK9+tnbkiGyFm+cARYQjXoKjrnXbnY8LFyJ177XcCk4STjE16HAvaDipR7OPQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRBVwCje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRBVwCje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A578EC4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726107953;
	bh=8jCQos5kl5X4ePPiuSNqRb5rYLmGzFzZEPutsaDyiEg=;
	h=To:Subject:From:Date:From;
	b=BRBVwCjedsvAI6aDyV1pXjNTVpiqRZ/wNvC57tlarOLjDXylkAn0sL2yDYrjSOA1j
	 1TNUlqEY8SOxqXJd7PbYMnMA65qlVXR/ywiA21CSsMpey2xCtfM2N0/JvS/c5gthf/
	 m3Q3qU4m2ng4i3pxu8FK7eiA81q8gAhpqszKAA9BQqcVVE7njgaPY0XN6sLhZ6LGYJ
	 3Ei7NY7W6Y1m7eyzkLmLcFoeLm3SOkIOt3cKss9yr3mCSODfnS33+Qkrq8IWkIVXmR
	 YE5Gqi8/NPRh5CGzwDoJXeKiRZZx9obOebit3uPhcvGwk5QRuwhgAu5N13fHbyiMDg
	 seL/WWs5Ht0GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A54EE6420
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172610795358.18778.669887074507600206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f390ba487ae35f3ad48a0ee511b49fb7488145e08c9c12c0e3556521f27426
Date: Thu, 12 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726107953
