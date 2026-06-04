Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268D037CD2B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780602274; cv=none; b=CiU3cYadQ0koTNL/3h/sNa3S69C/anoHJWHzvvPqYddNBOstQq9gTmjVCRRStIypF4xF7zqc/s5QyKaVYKruI3dJdhA2CAFdKAjIfJD0N+YUSsaSDiSzBO8stXSRi3QmTUCTgDaXpi9pEE7ZnprhwCHSZmdaS4vmIeMmFWNIHlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780602274; c=relaxed/simple;
	bh=R8EJx2d8OfE/A7r082B7aFN+IF8o9ezcvB4ogiLVrR8=;
	h=To:Subject:From:Message-Id:Date; b=dRq/vWHrrvP9m5cFZQbo3HbNF39Rsrf2CV7yUT4LNc64q9OPqKnaURm5YpWHzlTC6wA5pq1mTylMwPu4sufKZXIRxOaGWkq+rvv9KwY0iTI8vobPRgq1LA+rcea4Rcozu7KVEuIVa4rw6NUbwKKt/KHlWp2476xQGD4GD+9XD7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfxVd1RM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfxVd1RM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65FEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780602273;
	bh=R8EJx2d8OfE/A7r082B7aFN+IF8o9ezcvB4ogiLVrR8=;
	h=To:Subject:From:Date:From;
	b=gfxVd1RMtvkFFVifkkSdvDh4yhALZZvDm81fVq++51WZuPw6331ra4eETE5/4xQjF
	 VAqhqVSFwtmxYnrsYoAnzq3uek7/u0Ta+n/icLXbjV+w4Dud6tO3HRGPD2VEZuDj2W
	 5AxlOvEK2TqzTFvY323wtFlB0DaYQfRA04zirt8huLqIJa6nrFTXmqyKI4vhZMGGfR
	 5B7Km6+SC7+Ka82Po2kmvmjEJHOnU0GQVbM9C9hyVHuHIWOrhG+5VDrH7DkRQfaKmb
	 USNGdYHNxYOi5jS4d+znRNAh6pjXoYCH8Dp59TcQyhPUd6UisbFUWMcBDduR9/Ra/y
	 xCGGDQ21EtJLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D3CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060227369.23729.2021207534497787098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c55aadbe4c0509d7f770c1ee7e9e247d6902bedb4fd4bb926b82881878fbac3
Date: Thu, 04 Jun 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780602273
