Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5739133FE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737861954; cv=none; b=UhbXCYUp7xdjJsWPu5SNMaYblTQPL8mgCUNDb9gsWy+x2DQMMyEc93/VYjMuaSEzIdPrYoT6dK063wyGE7g6Nb3JkTgmRZ4R13TEeYEHgMZyJst/lb8d19wgwkLIDwVQWdcINDMjqxkdL/nb/nzY1ptKsTLTpxBbaa48nr+42mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737861954; c=relaxed/simple;
	bh=MCsALXEz/LKdk2soOlKf2h8cEh99Wv2uuQTZw5ZqR6c=;
	h=To:Subject:From:Message-Id:Date; b=YLNdHN3B+3GXGGbWzTgKNkZz/OVMo6mr6dzr0vORcXgOdMFG0pnfsovOKmfrrKkuBWonwTZTd1YtF9XDYdqX47Scy6eRmw3hzBdXRvdfX294thKcZ1HJSiv6eGs6PyJ7fWQmaCfRiuq7sMnOu1W7VQHE6+1XBRMhbSnL9bS4Rj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AthVv63/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AthVv63/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63C5C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737861953;
	bh=MCsALXEz/LKdk2soOlKf2h8cEh99Wv2uuQTZw5ZqR6c=;
	h=To:Subject:From:Date:From;
	b=AthVv63/9CPuX74mMEKzxx+sZL8MrTtjP/NrSuMQ1sFeOujsCGriwo9eRbJW3sZV1
	 eYu3z73oMjD6u2GBU9J1gcTLLlpOWjeYuzQnS7jCJWPavftCxVExXBkhQZvR+XjpF+
	 E8ZeEN46q/uwdIfnaxgrqNqBS3wxXwn51QgOoipQrb6ZL3UL+xPdqARHDVyVBc4hei
	 PEHnOqJ3ZCjBgwgDI39kIl9MH3ab8EXVDPV56sCDBnW2dEcS7NQ4GopIvcvJVOfCnD
	 i6IT9mMs67qZqOF8nmpvk2Ys1rrwhDvKaJFIKXrcWbEtB9V/dyp0NnOJseOice3tdi
	 Bw6vdYgu2Waaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958B7C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173786195357.30416.9313151216065634691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b7636c02562a01e8e6dd08612b29ecef5f44234c4f81a3ab0dcbd16f6996ac
Date: Sun, 26 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737861953
