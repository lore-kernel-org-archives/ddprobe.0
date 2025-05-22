Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3244C15F306
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747933794; cv=none; b=DaGCU3O2k1tV6bkKO1aTnOVH9bOI3LK8L6s7D5x0W7B3m4IApfVikm7UU5zPST8u+SI9I7GJXPPH5jO15xHaimeJp0yEjGDsb2KkgoHzfIDqcqkCjXVjRhcrg7bzUyZLeRJ7O0eH89C4+o5y6KCRit4LylpXToEkQTk4JCUSzRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747933794; c=relaxed/simple;
	bh=p8mknxpdMhyCtHqIjsPv7199W4/AqiXzL7EnrQsx0ak=;
	h=To:Subject:From:Message-Id:Date; b=lTbn/SfFJiCxH7HT8FVO88OUvNWlEIbK/rU1S14UHkgQjVHkEsLRmQTa9p3pTcvtHwoSO2ToTWO0d6pHgF/r/9BDgJzxbur9FmK3aziJRxc15udiLpae6LnJsbAptIX7evU3OkNmn0VyYqO1NziNKuG3nH3i4gRqq7lIMCqOIbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMWK6Sgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMWK6Sgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B71C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747933793;
	bh=p8mknxpdMhyCtHqIjsPv7199W4/AqiXzL7EnrQsx0ak=;
	h=To:Subject:From:Date:From;
	b=mMWK6SguRYqstxtt9O2Tqz79MnTRJzGmd+ijWWz4rv154X1QE9rFu+e19XfQMnR12
	 NzbAo4W7Jsfc/OfHDhSp4SnVj2Pg+rSXIC31/H/ElMc2eNrosaGYKVBH54CWOfn62t
	 zHT78Qm5V8e6swfSr6ZAAJkP/07HwJxQyNGOkw4MbBEStGWdmreFx4OS4R5MoSxC2J
	 tQ+ZtDg+4Y0ujmi7LOw59ULXP8YK4+APmr35ud7ZY2Ugy/eGj0S4q/KN+xrR/HXjlt
	 oU3tTanxp8tY8jqq/GmXQ3bAZb7QSvMxl5zyKdWilvEJ8fNWXMD93G4vkjQeF3Crey
	 4cCJg1lMT9ffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE4C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793379358.19519.11702354909487926856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e5c570e9c1e81566e7adbc65e5b9b3776c7a15566135f46e4443df000b21a6
Date: Thu, 22 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747933793
