Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039283B0AE8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775728534; cv=none; b=mgeSzWLbG/Nb9OtZ/pWGa9Ibb/JY74++BO6tgzhrt6lgntHj+kAkf2iHjlqYcKJ35wCTjkyKwrhYjbd/LkGYkeUbGZdeMaBfOVHK+rtG4UGjfWFnfrnPgwTxu6B6kqXBN/SPMohdaBDrOIMciDBwx09nkDvlzzD6XqxfGJSn7yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775728534; c=relaxed/simple;
	bh=6wza6XnkDl48VYN7mVuuvhJlD5hq38jECF7XXCSpdmo=;
	h=To:Subject:From:Message-Id:Date; b=MVDgOZWlxPSPqUxcT67IN6e81USKzluU+SRiCeZyVtS/Efrw4qamwwq0hL97lVqbviOgSktoXrCgSQjJ3ZABLL8lynhL7A4VYFB9RVk9jrP8CjS1eDarYXODanfBRXIdkqk+AW13y378/6RIWJjzqzHambwGMJwxnKYj41GUZL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL9nGn/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL9nGn/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACBEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775728533;
	bh=6wza6XnkDl48VYN7mVuuvhJlD5hq38jECF7XXCSpdmo=;
	h=To:Subject:From:Date:From;
	b=hL9nGn/pnXCkWphaIZCOTFU9AD+j0t+RtyMwRSTK9UGmF/f2L923ldACsbBVaoTh1
	 d9iR4jMOrdnmSgHeYOzswHHBBBZMFk1HMMSJKQ/NtsCnc6EvVBl2MII1FhnG/Uiu8G
	 t9ITmcIoxGnY6VremUjx/s+N1C1uv/84rLMCYLiYnhY2bcRbqcAg/eR75XonKNobP0
	 uwY8cMYdnhgyTVCKgBl2qthZQYzH5InOxl6pJVj+22bTxLzHpfx6UYWSr8ZCX/5Tzv
	 c5u7F9L9YXT2tAxo6g2Fo+5/4DO2BlhKr3GW/br9B7E8SeNaQgS8eCPY+EPHUZEPCE
	 1c1Zq6rUc6QFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C537FE98FD2
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572853379.25638.15017669321773373608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651de1bd93b941cdce6befd68e194439a024ab5a64df31aa11c87b2a55377b28
Date: Thu, 09 Apr 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775728533
