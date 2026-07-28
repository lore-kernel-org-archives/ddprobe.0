Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDEC3A2574
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785212434; cv=none; b=iKxBn00jEeSIeZC+U2qGu1Pxpu6KnxHEQYByOcWOmVBqyQrJvYBd7DaEM63cXs9iwmp2elq6ZDYPtvd7vUVWMVEpki/Y+Sihdd0L8urvgobiODuBewJY2yaSjyy98oldNXofywAIkOuAcxD1d9nDjx71pJ6HIojAbJoToSVSd6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785212434; c=relaxed/simple;
	bh=zlBkeaXWa9nhqiVtYPA+nGrFOAdfHUflDC3yygbQo9I=;
	h=To:Subject:From:Message-Id:Date; b=N0Z/P+pCsDTw8RUUuB4Na2k2Dw3Mj3NCqNGmCTFm4BUQcex48lEPXd696J5L6+URtBw6lAw8RjbnqWkhSjrGnafE4g7XawNJEJ8kSOGubgNDqfkrpfFhSrOXSVI2qE7VNaV5QuZ6hicKrKQnvmoITzx+DEIVm0AM4gO7LxaV8H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtreKlWH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtreKlWH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C4DC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785212433;
	bh=zlBkeaXWa9nhqiVtYPA+nGrFOAdfHUflDC3yygbQo9I=;
	h=To:Subject:From:Date:From;
	b=mtreKlWHKMcYs2qFtLkqWGHuL5qeBp2jqb2Q/fvk/zcwKrQHidjfLC7J7Wm9sitcj
	 JpCiVp1OJGqfMlqpanjjMNdXbvCKZjDpo93ZiWUvUaN6UkMjt9lSrDGkSy28m3ARbt
	 D18QKq4WRdx81psY0U7R1E05yiUxLO9rrtwIwOkgJF3jL0apOOsiPYsY4o086Axvc1
	 N7IjHzMaXebisIhX7zNCv0Dl5qCPafRK8sTQBtr3GJmXPa7tUvWhLFlQXeoTFK42OV
	 rhuQZentjFin9iu4011feRrsnHauoP9ixBDR2ykoH3/etZyolglj/ioEIXV7U3Ni+p
	 KiL5ZZ4tZclWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA05BC54F52
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521243373.25094.15725527242696313066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d75c7e13dea4f43165bd941fd61931d67d08d2779a43fb140a3a12abdcf637
Date: Tue, 28 Jul 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785212433
