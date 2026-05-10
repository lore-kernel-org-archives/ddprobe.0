Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE041228CB0
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778388034; cv=none; b=Ab3eSo89GkiRsX/7LFL3rMXSjtux7tNwyKDueX927IsW+jTnS77A9AYf/r98iPsNPqQ0kChGmDhR4UBc9ftUTIjwyujFFZ/qSefYm8YoM4BO0DkuwjsbiSOZi+m0g8YX0QSQ6H6FhNfYK0+kNeugHAcVnENw19yTGIZ0fcboQYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778388034; c=relaxed/simple;
	bh=m4zgcus09umojRneAm2K8eJckDPj9pnzDlKzeLj1Ezw=;
	h=To:Subject:From:Message-Id:Date; b=leLWpi3RwUS+x2L2J2LcLohVbTdwFxD6yixjyLIAWkHecinfD/0pO/GYKOMT/ZT7gz6mcmw9mKq8Q5cbiHBjOtrvJluUM/zWtME1cw4msRmTBk7GpOqcD/GwlKUJrvKJm/eQGU6oE07mIdjfwBoNzzhdfRUrxalFHVwJ3pazKe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Km/WF7HJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Km/WF7HJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4C79AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778388034;
	bh=m4zgcus09umojRneAm2K8eJckDPj9pnzDlKzeLj1Ezw=;
	h=To:Subject:From:Date:From;
	b=Km/WF7HJz9upo6gqn65zzp5AbHTnJ9anjP7xdqUV4BXVYCXHRc+hrJC2GTicW7Z5h
	 GDi/cVNCnGXP4ZCxcePLvl5hveRHf0vMk20f5lIVOWchedKz+q8xgLaUmfYEPDvEvy
	 8GtcpLmDj1IqzHuWxbYkpWhBXfAPFJjnmieEg6Y1lFdm9Wa0GZ7FaOf4ZLmI/HZNPd
	 nVDLUVZgwc0HlxPnhpZ8vk8GEeNG0Ka9wbbL4PNyhdO+b28MJmVeATUXweqZoUd7jw
	 Rj2ogNlAH/a5y7d++Pb2N9Oe68KQ38Tz+D46EvkKi2p2Q6IQUR4BciiBoolGzVrN7P
	 W4eh1eae7MsYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AD7CCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838803387.6090.1791756466947071805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d172c05c1d0bd8bc6b8640ee8624cac1f45c36531ca53962cc8f51e23ea67daf
Date: Sun, 10 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778388033
