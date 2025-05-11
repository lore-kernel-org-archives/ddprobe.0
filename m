Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA171C5D7D
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746969594; cv=none; b=OZvRckJIHxtNHQ4awsMdKciaaI07vBCJAaknioMeuIgut0qvFawU1UKrWU6AEBvn0CRH55Xg/9dwznITS5Z1Co9cClj/AxemINuwNC3GQVZGLRD8bwZ1qEJp7qyO4CusYSBqlALOVtffdRdLdjugMF1CBOxRxy/+394UcrUwwLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746969594; c=relaxed/simple;
	bh=1qwth/75ryY2N+Qx7vZedLHiXoPOfNlZ2Oq5Y3nDVGs=;
	h=To:Subject:From:Message-Id:Date; b=KG+561Xi8DshhG3ueetQPQvMjecVnYWc+m2vARF9Nyy439TSv7+6/YmP/TX981nlHHcfR7ScMuHf9hIQmz05xaZmCM48054s3yuPpaSiMpoN53q4BouxV/AsjZDMyXnjckCRuAJBfmh9670FW/e7e9pwZLgcmnHUIWbLJqau3+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8xuUif/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8xuUif/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94C7C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746969593;
	bh=1qwth/75ryY2N+Qx7vZedLHiXoPOfNlZ2Oq5Y3nDVGs=;
	h=To:Subject:From:Date:From;
	b=Y8xuUif/ogCC8loEmNs+uqRfHZQFOgw+0uacD9wpFC+VHriD4LVPndS8DS+rFMcWU
	 lXM+5Uus80LDiX9vwlRmHRrqoQPQfj0zbcmpb79DWz2vnfvn8SlxOEWTSPpdRm7Zn7
	 9QOX3yPzTap7zdzwn2lTttJ8ZmYldKx+wo0B99+DPww86XMrx+yubf3ODOq9JVk9Nh
	 EVjEaKXkTGfH+L7z5sVXj79mjWCl9OvHT4xOeXbRcHS59s93lfeCkRVy/62A//NdTZ
	 T0BdgDG7bostDGzBxI/aa6b8MKs0kKbagTcfVu6B7PUXdFq0hDa0B7EoesGTd6b4QF
	 PtYuMbPnKl4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94903C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174696959359.10499.925235504846671352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f6eef2647c214896383f640f061e72d3cdb3420979ab33ec0b5b445a0d55d7
Date: Sun, 11 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746969593
