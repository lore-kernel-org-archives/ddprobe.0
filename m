Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDA725949E
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735566354; cv=none; b=UDtdG2OJoD8Kn0eEwauTTiiw63bcGC75ozavS79lS0F0R1W5TRTNBM8D+wi0a8MINl4iRAQyUPbKqf5rQ8917pYJlkNmu2x2bVw5XxOMhe0goq4kqRSM1iuwXzjIYyoCYk0wKq83KrUbQAEflYmb6p6umn5MYH36+Op9+OnPZCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735566354; c=relaxed/simple;
	bh=q2WAOxGa/UpgXhkWeit0UKCO0UdtftpayVLSfi0WlZg=;
	h=To:Subject:From:Message-Id:Date; b=ff6Q5WrgEkioQ0lwBwIihADZi/eGq/LNq5CeH+KWQfYUh4bpdQuJidoefkxzxzQ7nEAB4ZWkrFyalV8buFuYJYOhlsyj2OvX9VeSy5AkrqooxDv9JZ7Ylc0Db8UBsNRN2MzH73PKYL3KNaJB2OCtVImddbsGP3gotA0y7zw/p/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fiub9+LR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fiub9+LR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3765C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735566353;
	bh=q2WAOxGa/UpgXhkWeit0UKCO0UdtftpayVLSfi0WlZg=;
	h=To:Subject:From:Date:From;
	b=Fiub9+LRQiDXW6jvrCAfDYEIzzxR2pNduF9glKO/9U0ujgraQjuJUVvCXzFcwF2sf
	 AEYPp6o1RphXY+wDafwDMvMvGqWVvzTBFhtmzLXrNpx3jwzlVLCVFImwnuowfHVv+r
	 7rBDAXjU98DTfSIglziBasblTqsXxzT57GaouFRPZLZ+w0tXtav/JCm4n6m+7S0U/W
	 mOmNrWRaOnpJVDx1Fb9UAl/dvoekKaVar2RSrJjbFy+3Y+eYjczyCAL1LwzE/hn1NY
	 1AabnFjb9+DvvEjtqubVhV2raITxcOcKcKG6Exejb65lZrso59SCA3XFVA1OVUusnK
	 xdVMp0lElpFZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6746E7718F
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173556635365.12677.1786210626566173243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0817cda402d8630b51f501c407e359a23be8544c530ad7f0802134a3a17576
Date: Mon, 30 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735566353
