Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F991A23AE
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 21:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738187155; cv=none; b=DubCrpfFurr5JkKeoqBjI6UQ5LSRvNzHs5L4JrKYJ231rEOE/gL1hJFUIHXwREjjoSENbLyvEVBG0J4hkG6WpA6GEFwPVuNSHXOOmUDmsEgnBGyd3exZDFmE7y82KnWgFyNlYyS9Ss/gsDByC+fYL+RJ7r9HgkzABmAoegjtFo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738187155; c=relaxed/simple;
	bh=7KuBqrPoXucAjmMoRHOPm2JfPBKNXGYrzIJK3VhZu88=;
	h=To:Subject:From:Message-Id:Date; b=sYzv50OEV1tJz44Qsgz7xVG34EpcRJ1Y8KUedkNKNfVFFwY2fIbTlwwDcZb9mcqWNoJ8jC5IRiQXEHumNDzZStTxkh4ve9EWRHo3daiUnBuZMwG0d8akeT8MHFjpZoDcvkbYeEWpNa4ilSeNVo3OuSWzQIY5EGpPwQXwVnUUF/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XROLfmuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XROLfmuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CDAC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738187153;
	bh=7KuBqrPoXucAjmMoRHOPm2JfPBKNXGYrzIJK3VhZu88=;
	h=To:Subject:From:Date:From;
	b=XROLfmuFTPgLI4fRapydDSJe0qEleVlOChq58SOkY30lQwPZQL9y5ZtCZkv827NiB
	 J7w7+ilR+QS6xDQisMuSKK/Rtx9Q+95e5ygi+WamIGmH7lUNumkyEWdFjEIp9KnhEZ
	 v57bfsKDSQ7Ejgj5kxX+5NjismzaG+tSD1QPvb9N6rcOgvEI3f6Yt4GqLbiTdAmATF
	 yzcd0V8LZHoGxi5dynE6PD490pBqIZXRw5rwnltkMc/1l8NmHM/84S0q6Wgd1goIt5
	 XIc72Q6UPNEHZnNyzuBF+rL5xQh0B2tuCinOqt9PW+XpDH8qZXTsv5WFVmTm9w6p7u
	 nfBMS24g9s9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB635C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173818715371.29055.13384936904903948121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca14e8689fa24a8fc359a4da41b0a8457e1236788d4e7e4eb1c5b613717dad3
Date: Wed, 29 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738187153
