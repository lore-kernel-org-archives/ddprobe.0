Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D888F513
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714813343; cv=none; b=o4C3LTaZBdoyxISfnsUEe7bB5G3LxXL5L6Nqv44XKMaUkuphZvUFNcjGJGMwGpiya73rfSWWxfRXQtEamI6LNR/isNh4L7KwJ9aw0XpP1Y8u9ba86GNFlsA1g1BlBwGEhl416OFRl/WbRJEBtbybUN0yaYiFL3OYNIdQry8D+dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714813343; c=relaxed/simple;
	bh=XG4glN911YFcJopAE1Y3PosegmQSg3v6O0sVYa2qBRI=;
	h=To:Subject:From:Message-Id:Date; b=tG4D1TsO8UIaQBipopL8RDgE8eSw7jsimXbdLMgyLisbUfZeFhyMZJWdBmEozORUj2L78q317ruM3yhPW0lSfa+TlJGLr+4d99dHYDfVCQ/2CBz/UBTtauNjtE5yxMxvlEmXbPCavrsXTQ3ECLdp7J8FWyRoeZOqmklpgf0wSqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmHZm6ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmHZm6ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3ACDC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714813342;
	bh=XG4glN911YFcJopAE1Y3PosegmQSg3v6O0sVYa2qBRI=;
	h=To:Subject:From:Date:From;
	b=HmHZm6nsDHBEV5SlpHiLBzwB9Bn4mIyBWVPzheKhFqU9WimD/GQrU6Z9U+OpJaZ/g
	 3l9A2Yw1dY5Y9dq+xbwVCnFirEAANPJqRG6nG+c6+nTw/M7MHuHrbLJZH2iTOaMoGQ
	 GsSDq8Utdj5WoY3NgvU8ApC3s0//0ZvHuRxVtCB4ZL+o2hyK7oyHg75iigs+abaF+T
	 KAoHB22j5MevCM7l4AHqmtIImOjcnwU2ej/ncI0LBtGb5L2bG4fvet3sML7nwNu9Np
	 +/UXh6rUxuduj7sqK4crAUb42SgGY/OkOuru5U7OW1z7tlkOLfDE6rR5XY/LSL5c6I
	 DTteihcJtgqaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCBA3C25B10
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481334280.16369.16566464133749162695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd1f24d55ba5d89a53e5ca6f486263ba29dd23fc996d8a471082c2b61fe6122
Date: Sat, 04 May 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714813342
