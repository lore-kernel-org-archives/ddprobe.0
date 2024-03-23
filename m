Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187631E526
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711207697; cv=none; b=kxQ3ipfJUo4EGiIpoAYkHUVtPm3Y/Jaz02rUp8zmIqIYyTdcY1Oq2fe7/PWXh74lRac8xizToz2/4FhYeypYLNULgwoxII5ZGdejbl872mYj/49dGAmeKNs5EliM+opzco7lQ/O0Kec9m68zTVBClAtD02xLYiMgRM5jITGjtUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711207697; c=relaxed/simple;
	bh=Nqlt52/TLKyHt+Hz2WhwBVgl/cY6jYtcO1dkl0Tzi3g=;
	h=To:Subject:From:Message-Id:Date; b=gN8GN3gOuGIMFfoQAPCirLK79fyRlr29ogKl+uT/1Q67xmjuEFoJ6EW35sfTRRzl+60LJTwn227DcgPiKoFwunZOewA3ceNanWj/jWiaIgImsqT4jVMyVLd2cHzxf+Q6cT0u28XTWTREhvO3vtpbIQk5U/j+m8XHwgd0cXqAUhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETkBHHMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETkBHHMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F581C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711207696;
	bh=Nqlt52/TLKyHt+Hz2WhwBVgl/cY6jYtcO1dkl0Tzi3g=;
	h=To:Subject:From:Date:From;
	b=ETkBHHMmNNYpNfOHnFictqZocDWfRL9FxtXKJQzXzahljvuPqdbjo9z/qmVQg+l11
	 TFq5IhwWcYytFcBS3aOEkiPPj7mK+UDojK9iHNhraX4BHAL/AOt9QuDrp1HQ1jiLAI
	 tR17UVc8o9oMROsOx3NuSFyVau3h9f5yNqiuReu6YR8iqOdymzTzM0v3eOlXzFDxdJ
	 dcdgAXT50i9eDBr1+F6SN8zTfB/vDFsS0vLKNqNOC51Y63wfTNJWMIbYabHrrWb80y
	 E7IoF2aIljyGuRioMfxWFxe9wy9BK4EL+Jd7byxD0zQdWYbElXXwnNr53M1/uIZgtL
	 ntC1ka6D8nZkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 708C4C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171120769643.18561.5603586986284716624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f742fe18ef85750622a00623d61259c6d292c5c64282607197377fed5a32b66
Date: Sat, 23 Mar 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711207696
