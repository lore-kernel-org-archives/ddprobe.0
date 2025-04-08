Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EA41B422A
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744131594; cv=none; b=sxAfwDNn0+0Q94SPVp0x4qiwpXIpjmubdK/gb52j5WsxBi0tQCCuYHJtAtjbjSvDXZSXrP7Smjm0gxPetp7i2MdsrLsnduc94u0xIYsw0pBK/HFppgfiKaenHCWxeRYrjNJnyYanw8NOeYjHgq820wJ3EvWOw9yqfKJsOPa7K9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744131594; c=relaxed/simple;
	bh=NX7eVrUbPDvDJSBiYeFaO3dSs5Mkhe2ulDccReeKnpM=;
	h=To:Subject:From:Message-Id:Date; b=snQ6/71yg8Ibw07YMp0Uwk9wpLWI6ryBavKXDw5mrf69lXzbV15TuBhFY+y5kShszicWyLmhhGm/EN1M8tyHo7DjxpZUMMGUSLjNKnxays0GBgmVnkmQxjoGmZQyK1BmGG6KtwX4g9+PKhZ3nNvZdlhhkEzA8k9phU0sjzttkEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YULuuhx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YULuuhx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A914FC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744131593;
	bh=NX7eVrUbPDvDJSBiYeFaO3dSs5Mkhe2ulDccReeKnpM=;
	h=To:Subject:From:Date:From;
	b=YULuuhx1IA0DsNYrFIDI9IXrBZQyiWMgYoFADup95ocdH0zL/J2qoHzAC5MJsqpfW
	 Yk/bVyy9QX22DvtHX6b4Qawqd5eiiAteRtsWxOP170HjT0DFhGM2lOhlJdvst+AaTK
	 atqI+zjgRffTQ9lmYaKBl0Qi3RYjzMPCwmaIBkYgdROyRXzUhcDlsDULET0ytxUTqH
	 ELdJUB6tAidIzl5KlWaH6XsU66zaNAY8ZPOa9AtKrM6Y9xpXnJ3ERxnOR8g+a746SB
	 MOJ5WZjrUzad/TkMj5uHpddJSWOFCecogCN+5z1ZXs7T9WlbACDt0GAQDifVFoYg32
	 qZKL8ZTA/KhOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E84C369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413159361.20862.6510875060285903729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d287a965dccac0882478e4603429423392a4e022b024bc7f413195555fc5167f
Date: Tue, 08 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744131593
