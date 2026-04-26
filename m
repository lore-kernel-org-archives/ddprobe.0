Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389BC23A99F
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777227454; cv=none; b=cQs57UJW5zK2l8mZDvY3qYzwqJTiRFgo2nWeFa5aZnpR1ipPvr75DuuKfTT+qabMwsLojvqmqYGdwlSSOlMpbRGZzk/K1rAKRU7xGQ0x85dQ+kLDuozwk92rPNW9/j5CVm5JCkpV5+uNoGgl99D/bgoO318FO8kJ/hK5vI16ueg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777227454; c=relaxed/simple;
	bh=5tEjvqSfXhW7J1ptJgwrpZ31mQhHpqhGTom8uN5itJ4=;
	h=To:Subject:From:Message-Id:Date; b=RrPIJrpKP0F//Yn5BjpRfx0r0Zccd+1wFWk9C0IiKdVf42iVfPXixbhjtUAKt8p5055a93411df9mhcC52/2Aekk4nC9D+qeJroXiD7vieod+HmHEX1D+rbMngTR6aLs2M1WqLrLoaY9idFTL5TWgdYNTx+2A9336dGIY2TszJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPUnN/uI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPUnN/uI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE531C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777227453;
	bh=5tEjvqSfXhW7J1ptJgwrpZ31mQhHpqhGTom8uN5itJ4=;
	h=To:Subject:From:Date:From;
	b=oPUnN/uIUaNkQLmyiJQrqaMz4i5QqSBG/+TjyuC+mEUNWM197q3ExEcUzm39W9ujV
	 eFDYFuHF9kHTUJP5jaDNqO2Ld55GnTEFUrr8Ut9X0sso4O13odKOiD1a3RLT+fZWua
	 dCAD1tNOQmgOiQxAkWVatgkhkN/d/d6QjpJq3hhOH6eswDXRf+c2KJaOIINnO6qbTN
	 4kWwgNd/6w7m42k+moANqX/z67pdWg1OmnQ5jA3v2iShJiYjThhWVnF8PZMqZLrnak
	 sjwsscFpacqtlxBDy2LJQSHeulAdCpaYZFWJhYrrosvrvko3eXeTrRtruGCzN3ds5W
	 M3CbbZNywr5fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD8BFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722745368.6139.6724339639372557067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deabf6774273b6298182dcac0de6cc9435369807378f19955cef1e7a260ae3cc
Date: Sun, 26 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777227453
