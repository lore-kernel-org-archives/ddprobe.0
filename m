Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B8615B971
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772991894; cv=none; b=BuM5VT/IjKypXlQ/YDXuohS0H0DbWhK0HswSicIgK+ZvXbGy56KQuyqz+GfC8CC9/MaHCtK7t9f+eY/v9EszhmNHUhH89Mpk/XRxzHHlQHDwmj6Nj9MevZeIxSzTOkGDeOdNufu9m1QaqUBe1iWvtGtNjRwO9LUhtxmtjAm/BTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772991894; c=relaxed/simple;
	bh=E3xZmiWybn821Rs7V+m1S5Lb9eLr48teGksFbrKBQSA=;
	h=To:Subject:From:Message-Id:Date; b=lIk/5llVIXnlTc5ZKfqVsQ5xQFifUj6qc4PKQVfxYmA3bUO1JlfPKQCzTuPtaGPYx9TF0gWWU2flcTxvlGqAN0CXy2sntE+m0IObIvmiPMMK+i8KxI02E36GzfZAMmIHaSQCaTz834l+N3z3EiGDbDuUlrUsJ204+IXujHU2Rmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELJc/gUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELJc/gUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0447C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772991893;
	bh=E3xZmiWybn821Rs7V+m1S5Lb9eLr48teGksFbrKBQSA=;
	h=To:Subject:From:Date:From;
	b=ELJc/gUrNLfnjZI6VOLB9//hUVwfui0/L7KQsK+tYSYe5YY7HvO68tT48l67qul4j
	 /2V9W5wN6+bfeEoA9098Z8A5CzlTY3+tPVBotridKY5vMc4s2WRBSUqeDmGnfNtdFV
	 OK8ErB7K+dgifUauEWzutNCRi1Fmy4x8BEaN++rwYv0yAGNurQvacipai9klWaWTnn
	 RiXmgsFPgvBb1g+y+xSP0Sbr/KfoBNb0kyenegBC31LJ8Q0kgYkSH57hinzrSk26pi
	 Kp2YX58pp/Z0ojLuMN8Xcf6Myq58+19HyRR3ALz5qDWO9HzlsecB02VhHKyY5Z0lIY
	 /fucRH+u7G54w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920EAEA853A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299189357.4192.14380481047015130747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e2945426944254b979b7d75c71e0ba6fa15b9804e3e01628de2896e0b57d23
Date: Sun, 08 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772991893
