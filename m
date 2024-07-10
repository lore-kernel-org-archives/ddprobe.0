Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D3D5CB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720577183; cv=none; b=hh1ciPd3WdUs8Rj4tusZzque/cH8AdvpPYl2kEskUMhAcrDZJyacNbTNlWBIYByrQys1PVg720DqMWatSHsyqBx73enYwwo53piJ+Sa6VRNoOJfC1vKtBg1YJlCnnx+IFNDFeL97o83fuFRNbEKsL3yXKlSmaRcou2moOxqNRso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720577183; c=relaxed/simple;
	bh=+JrUmx+PykzNIjTkgFVzvZIhBG70GFZHr7R3eKJgx1I=;
	h=To:Subject:From:Message-Id:Date; b=eJG7ysTBAer7z1e/0ERXEcxIHmJpslR0NnQLcEa3Y+HL4VHRqlpkQ11gJBHDq5BGb1z9CiNHNssCtAUEYXYYpfs4kmSR/VgIwbMYRFqB1kWqWUdFpBxfq69xrAZ9pDZC7VzkA8xLAV3VmGwEvQpeKRGoK/zbK1GTiVCP7NhisWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qjog5U9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qjog5U9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D074CC3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720577182;
	bh=+JrUmx+PykzNIjTkgFVzvZIhBG70GFZHr7R3eKJgx1I=;
	h=To:Subject:From:Date:From;
	b=Qjog5U9d0JITvKfWxbrrl90ZPdk3gY24jhVOyNAvYMPc3dbxZ27nPrQqIqQ1zWsII
	 cOEXC1jn9RmoiUJ2TIzoJXMFhR3uJ21uRQG2FfzFRJomdr9L5WVBkjDPT8O1uayJGg
	 HzTD7hN+2PcV4APvlElb9QQ12whslQ7hHP0ny9Gk3WO7AuMBWQwFHB4s77XKfmjnnh
	 X9eXZXK3dDD/E3QArmKUKJR3NX5/MKBmel+CqU8x6HB+GPomzy0CVayYvQHzY/z/1B
	 bE/ad5h3tO9uQMWuOidrFPierVCIdFKfR8U7H+S+fABwHDuRSac3Utd5txObmlum5g
	 qTCqzqUypG9WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC535C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057718276.3743.18437202100205557458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c1978fae87932e562448bdc6e93108cc7470a6f5e746ea03eccffcd72581e5
Date: Wed, 10 Jul 2024 02:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720577182
