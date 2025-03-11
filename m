Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3426F1E32C3
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741661334; cv=none; b=pDpa8yK2yw5adaw5fs8RK+oZsqlwk+pe3u2imdbrZc/YDNEv3nFdDdRSwIWt0VFwvGjap3gqEy3xnXDl8j2TUat5wPc8iFM9SJ5WTUPzGI1N0ZPTmOkeAExbowUte+LMadevFw6P871n92g8kNG5syx/+7gW5Xx3+m9lMgrelc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741661334; c=relaxed/simple;
	bh=Oqa0Q3vG9KAskS0BdZnd2c5EVRywXZPhX5BUYtChHmI=;
	h=To:Subject:From:Message-Id:Date; b=oSm7tRGrztc0Y6TCe4kf7uNAMEiVkePcRxw78WbHg0eNk0ZW1hjFcT840WbUMv3XS8Rw3dikh9/fEOB8GrwZApprZZg86iM44Vu11QY95tajuXklxZM/nz8YcI/t3MPLJRyMnQmOJ7Sgk4bu9E8xdys+WLsPnBBWEkATpU0S6og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aL85hOeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aL85hOeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6906C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741661333;
	bh=Oqa0Q3vG9KAskS0BdZnd2c5EVRywXZPhX5BUYtChHmI=;
	h=To:Subject:From:Date:From;
	b=aL85hOeui0tKNzrIZChrZiVvKkydgpQ0od0Xj84gSlNnjx8kJP2ZkBvr/NZEmaFKL
	 AsKk491dsaZuCtPZfo7a3JdPeBwD7wwCzvuaM51zdVQW7t8hMlKtGdFzOeB2M4R3TH
	 1Huwp8lY8iIdijoYriVYeyI9cnYEZMn7lHO8jhekqL8A5Sezp/8yRFfn/2nb9a+whR
	 iY/TOMxvkZ7GbQo6F8urWB1RChxfJi32zvh+96CnQlTt9EygBaiFTiTGu82gDacAz2
	 AW1wRT0PFnNy47Y45FRpmALMj+TdOr+NlTyOHuj+Tq620uE51PZm+jnCDPmVa/Y5F9
	 yX1X6ZsJCzCqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BAAC282DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174166133361.4692.14518588644873196171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02c4eef727f19c931c89d8fadbb263d1c93857c18235976c87dbdd773bfa392
Date: Tue, 11 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741661333
