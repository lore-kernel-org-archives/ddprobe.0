Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6FC242D91
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768164234; cv=none; b=X/eO72xeSF8VCHVNO43pQmX7zsilu2mV686BrsyWtvrhEuqGBjh3xUF1SFasdKAC0djoXclb/MVm0nzPeUXP46z8Ot7eR5AASwAMrLwX9C21lUDGeHuKnHZ/9+pfuuLjZWKrCJLw0Tac+Zwqw53cj+DHSIn9TOsjdJ8F73qgzag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768164234; c=relaxed/simple;
	bh=Sytn4LQbTWNt0XdsS/aKtmaft9YupYXNgvmI2/EZQXQ=;
	h=To:Subject:From:Message-Id:Date; b=u6/HuFJUBCWsS7piwylvtbVr4Qif446IyoWtFFvGjEcYMrrqIIXSsWmbYfIXiDquNPOjRt4QRguB1RyG+UPI0vJWxzYjDx/m6V0MOytpAuTuxRoql/Zi1H1tPKi7b+OoHK8EqXzwyZ3y7KqwjGXNhoLjlyn92nxEuXOHTEU7mUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZisFVgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZisFVgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7414C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768164233;
	bh=Sytn4LQbTWNt0XdsS/aKtmaft9YupYXNgvmI2/EZQXQ=;
	h=To:Subject:From:Date:From;
	b=BZisFVgOavlWYbOiAop4yErKSWQKWbw3V9PPIUMQ0lI+MJGR/JSsidyAwoyKUyjPp
	 ffF5NICsdr9vhcECcmUznv6leGhUyVQMoyPMZY3BAcNjoc69VvhFO1ThI9uNd6NOoE
	 J5IDd65f1XTdGT0I5+ZCpPOko2TSSdGUXxiNhychMuMq7dzDtrZifgwUCxWOAPDk4C
	 OWLn6DWkF3r5qZFBnQjYQoxKh8/CA+tqeeW9/N6/foG+TdHI/c4022YqfCJ2iq+JH/
	 6fGcgcKk+uiI7I6kFK/WTBvX5OF1zfUuqlwXEjMkC6WMB9b/nOdyiN7pIN+3QLHhPx
	 fNAqpp2VYGIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F5AD2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816423358.18034.11062487993334037394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fa3e7e0e3796e8606d046b301dcdf195920d59c24e6c689e8a8f12db941698
Date: Sun, 11 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768164233
