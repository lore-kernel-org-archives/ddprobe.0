Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F662338599
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770623634; cv=none; b=dWI0Cf00gIoVMGPk9U08vKv5RN0FjbvuDol5hVI6rB/hQKBwmN9er7bLCPqoJQ6CHuOTZs/hGT6SApcH/7bl4tog7zvcCnMx7CashGwLkzlBdzAs5KayLv5xl0GyfgOlkKkzA3qdXMg7TPaZ0WtfTnpblsBuV+wmWq6J8fIJpuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770623634; c=relaxed/simple;
	bh=3vDTQjv1cgit/tGDwQEFf3Em4rhp4GD0wd6BxcZE8/c=;
	h=To:Subject:From:Message-Id:Date; b=tAy2fDGEkiuAHpAP6TPVqOfAGdR7UfialPBGvxhT89C2+rypRgA4VJ945Okg4odzUFihofmowP/uxmeeepo64z19LYorCCItrCOhmNO5aIp0wF0mkLQUhckfgpmofAwwvh+8ZHRHPmKKK8AQcoQgkWNJwIlnrpp80E7zkTNFGzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqPyDp3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqPyDp3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A823AC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770623633;
	bh=3vDTQjv1cgit/tGDwQEFf3Em4rhp4GD0wd6BxcZE8/c=;
	h=To:Subject:From:Date:From;
	b=RqPyDp3qs/RLfOQmZ0aCRxaG7rzRSxDzvgpvX+xYeeZFGTDO2FbBO1GO51ir9ZZUz
	 1KMfoaFSpiC5max5nRSvTWCzU24ogzMLwnpwrce0hNqF9IPqc3UezOoxyjHeZR5eyJ
	 4Dd8r8hDKwtv+whQINo5Zi7VD1ZkGURjSzIniCQjQur77/GDQapkozNfun9H/Ktm/c
	 sQt3UiYjtpuH62fNgbWLe61qzROKQU1dWT/vdNjqxEQzRGI+F7Fvj77rTrSji72QvJ
	 tqtZMspxqRcRgHP30lh89HEh3PIxBzR22vFhZcbqUyy14vmf4EfbXdzjdcbJJugl1i
	 PVhlO/4+hJzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4FEB28F7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062363358.32760.17982877457615119369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90573bb64796d99ded6d2d9da372aa8a2d0be747cb4aafb9392c17d3932d7976
Date: Mon, 09 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770623633
