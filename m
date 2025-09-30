Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2700933EC
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759257594; cv=none; b=kZY0vPjWmOB9vKDiiUJIeDrEVDNODUXC9pkz8VBFQC4ZrjB7znfjd8OqbBnBIJd5UkjRpzoLZDDK99XZIM5hheWIDyAZdCuOx2T9lVZxPSigougYkr3iuzIyBVmixJRoFoSepCMXRnbKhR4dVmOvKPmH1dMSzca8Nwjj54NYbFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759257594; c=relaxed/simple;
	bh=Sedix4We0WKRucz5Mt6cPrmT/Sn4dHpQKiKiVaAATHI=;
	h=To:Subject:From:Message-Id:Date; b=pAHFudFH8V6mHih4egV+2QlEbUMzJy9sY2i0ABpsS4YQ9mU9RmP1UzlCTolVK3SNxqKiq3vXpbQ/CReH2K7uvM7QxhmlhueGkaWR79XiudersRVAO+3XYtbGm/oy6xu0cMqO07Kj5QVM+AFkKqrY28YqOtaoL1EZum5///R2sHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwAtS0qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwAtS0qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2411C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759257593;
	bh=Sedix4We0WKRucz5Mt6cPrmT/Sn4dHpQKiKiVaAATHI=;
	h=To:Subject:From:Date:From;
	b=IwAtS0qgmoVBd8L/rj0j/npLZ4R0cOyIGmqcUUoY0+ZUihYGBS3xXiVI9Ke+NqgSu
	 rcqTOp4SaR4ya35g6i58C4pZ7jR0zIKI/pB14TwfjVgLUNftETNmLUPyCsqWNdh8fM
	 Ds+wiPZDIlgUwurPHYtyHxOb+5j5lR3r5MprbFRgwEE5v2w+sUz5+8x8Dp0k2ZPVt4
	 7TZMQ3PrFRARF6lcXDNQQ60AVRvMmGN39uHK/VMdd/1eeUU2gQzBL3ZX1enOACnEmA
	 nABlihLhkK5xogTsiXFXEJkvDwuaH/7y7jREKxgtJOaqCDKuylYxO9cSGm60U1aqV9
	 bdWPIkepx5E1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C214CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925759363.15037.9275343989426264877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb40b9a1d702adfaeb66f4b8f6086b2f42b8a07329325aa1fd0019837898b7a
Date: Tue, 30 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759257593
