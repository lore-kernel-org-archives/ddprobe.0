Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E295511725
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712612897; cv=none; b=jo1vWKaC9LAAOWzePClRN0Q8Oo/lZe+wFTmGDnbFU+Iq9eCfDojrYAttVD+JSkReUswVdrhOqdxwEWRKKNJqmW2A7279LHK82MEdrHfsl7gwqf9Te5BsVYESy86foO4QO6eLwE+84S1NAcg9wmvZK3dhrWkLvfOFDdBjUI/a2iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712612897; c=relaxed/simple;
	bh=jzg7Pdsw42xzCB2tnRAWHvYa77b0rwD+hUMVSMZXJbg=;
	h=To:Subject:From:Message-Id:Date; b=GfmDiy3XznIIl1xf7T8m2wjKfZjs35agc1U2EY0f5Bqp06wYel4ZYc/6sugFymtMRxdwB4GPzLkcRdixhFjQ+LArF4j+WIK1WRM2f6nOxs6URoybMrO/s1iFzb0sRX3dHAyt1Z72UTRRgTcW1HVIy4etvU25dGcVxwusRC/j/kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTzCWaWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTzCWaWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 777CAC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712612896;
	bh=jzg7Pdsw42xzCB2tnRAWHvYa77b0rwD+hUMVSMZXJbg=;
	h=To:Subject:From:Date:From;
	b=PTzCWaWxbpi12+f20o7mbXdSTMexNSdpmFq6/xYg5y8XAtKiD4TCMY4O4c604uoRJ
	 eXu92Eglfi2KZCDTuNaPX2YY9TG3RJ5MkNGY+YmHwJ5i3GhQjsx3Q+bAXL87JXYaa2
	 Vl710OGVJptCGeFOxgodmxSQ6RPnJRnYMoybYLbyq/0vCXLyPJWknRQ/4MnQd+FINo
	 FCq5DovjnM2S4FD9AGHgak18hO47GNsiMGfU+35v/viFqYRPnC+bCQG/DuB6jiNJVZ
	 wmpN8DLibKQyMnuWFR218sN2/VYNKjWe9YPF+QtZrh8DnA3NZMBNerakGBplDpGIe3
	 QHEK96TmEDyyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EF9C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171261289637.22558.6585275532655215865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b2c84854ec62970bd45db8a1f506761f295894db6ae5e43ce53b93097fab65
Date: Mon, 08 Apr 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712612896
