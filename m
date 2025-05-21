Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E68128682
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747850994; cv=none; b=PX6BkHPMFlbggoJO5Ry/K10LoRr847qUxlgdHEaR5/NUGffbwl3mBjNvy6QiKuMBG8apcz59TXgj3TDJ6EwGULCmSQOYpgzpf1PErcAMX7vvRaIvEMJYq3XP0hD3SbzQ413qF9pA7FmVHdxwlATtdTWnTg8mHK8gAxmdUqH/JdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747850994; c=relaxed/simple;
	bh=+Tw93J5NKUM7TC9+n6OvupWLIRaSL451ph305PE5MCQ=;
	h=To:Subject:From:Message-Id:Date; b=akU0uUiXLWVO7p7MFoThF8LZC15YPBJk3OeTRRnrXDcEap4SwVEePKguQt0oeNntEKiNumDoe9/4rvg9DIAkukfNhWvIA6lpFOj9k+Ef4YYBuqD/f7VnQZu0NwcSlgln1BmC+dEpcJsisyVNLYfQfFeR6ONvz27xeykREyZErhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEQ9S19G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEQ9S19G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D6BC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747850993;
	bh=+Tw93J5NKUM7TC9+n6OvupWLIRaSL451ph305PE5MCQ=;
	h=To:Subject:From:Date:From;
	b=tEQ9S19GM0N5arEulKfG2EvjdJ43JGfDiZgpF2xoOTOZgUoWRlzaLPSW1alMcH13A
	 dwZsQnjkebeh8J8C7MJFmjcjAC0ppU39vdQFe5W5qqlxPtfaQwvwiKS0IsCipoEdrD
	 qUZUX9d0ZL6V+S1cdSPxKPkDk++6Uyj3sB5s4p3LiJrD2QCd7q55ZTdewQ5/2Mw8uy
	 efytH4neo4lK5XfXzlZVIvKZdwH6VMkaiptBbwbS7eAXdWTdzckEfe8ZIHJaLoLLfa
	 RxUUeSJYGojBrxFx5wEHOxp1ZivF+ngBYcyHbXi3SVZ4ay/ww23P24caD+442WqdIl
	 4SyX/leJ0QEPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9525EC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785099357.3629.17135681370980435285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f68f83fcfa91a08035aef15147c7731bb1acb7577bde71d258b6b4e73f489ee
Date: Wed, 21 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747850993
