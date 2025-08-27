Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EC92D9ECD
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756333794; cv=none; b=V+srTSO8ghKU6U8+CDQF20LfKu9lW4x2G4emaSDdvIlNSSJa5w2YkBq7W229fWOrpvIHH/8xh2WWD7J5DIYU3mrzgVR5dskexHs5U/1hSjux2vOdJgUbmIU3aB7UJuhDHiT0p+bN8joTyrj/rHojQ+rVAMOeZ2zjrX+uj8mtmsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756333794; c=relaxed/simple;
	bh=O+NQbZcjQ74xUrOGFgwXGw/sbLa/PzKoRkeWXd4HRJ0=;
	h=To:Subject:From:Message-Id:Date; b=A/Pw+CufjF2Aqy8woQydjUtIpq+lsxo+Qkat5uhUQHCpanMMoLfm6ye3dwffPljbaCOT63Ao5bon1ieSJqjsRiSW2ngdZaCMsA4bg7rNwM4p1FgsxKHplRUJBtkzIwq8/DqQBTf0D1fVifKysMqkvj3DwEG5L56cTKI2dsJZ+kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMwIG/yB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMwIG/yB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC669C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756333793;
	bh=O+NQbZcjQ74xUrOGFgwXGw/sbLa/PzKoRkeWXd4HRJ0=;
	h=To:Subject:From:Date:From;
	b=uMwIG/yBAFCs4/XxDZdHTvnlsJMM5+FMpu7gBSnqvuk8YpviDC1q7ueqNNru8o6K0
	 Y5hCHbUA7U7S4EIzYhajl/5U/cfaUfxrQb6jhUCc/hWUgh0r4nGEPMbDz5XU2d4OcD
	 yKk8wMah/eUtZUlGUIU34veLZ5w5t1H4mXC/l5JTTsXaTIKkdUM8bj1Mi3WNXNjbIt
	 32VlNnkwT0jGzZNKmWyoBqGggkj3CejZfkLPVrTpauZ9j72wUmpm0TLQMi/P8Rd/ln
	 EhhnybV45p2lsXj0yk61RkiHKLrs6n/e9kIMqQ+q2hw9XscYoh45oKf9bjnhogwtZx
	 sGbM7xO8tOVag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF08CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633379357.26364.4868178291756712658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a53149e1c422ca4b6817e49a2a22e37172d4422b991e97a7212c62f0611e97a
Date: Wed, 27 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756333793
