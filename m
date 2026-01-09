Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B899287257
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767939234; cv=none; b=lGifwgiFE42GqFp7KOVzYcubNgOWmWM2pJ5Wgslg1D+UcJyli4+vB1aIfHwNTx67xIpmLrZ5+fEOvsYzO60LeFA+ljrfUB6II954A8MQFMEmqA1heDTbJMd08ZxXsSFMffH4GPufFcNosk1O7s//Mh+SwcGYb3EDV1BNdhFCxlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767939234; c=relaxed/simple;
	bh=3FuEx9m4QP+dI0egg86uuJPLQMDTQtwcaYZsYfGwH8w=;
	h=To:Subject:From:Message-Id:Date; b=btvnf9kkPPriw9Ikc2SLeVHMow2vApWN3nbw25UpV1TifaFv6BgHYl8/0pTYqKoGRFlz+0hw6No64ynYpoijg50NaKeLOjHA0h38QkptHRXtgz0npALFGiGEZ1+0kwN765BlA9QR/j5xlZANCQHwpfV4h3Sr9bgo/7ZBvL6S/1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crfMkPf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crfMkPf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A14C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767939233;
	bh=3FuEx9m4QP+dI0egg86uuJPLQMDTQtwcaYZsYfGwH8w=;
	h=To:Subject:From:Date:From;
	b=crfMkPf+coMLd384ZUhBHBBRlXO0JZeaXNGG5M1HAZAmmMxfdEyZWhCkOWfBJNq5q
	 VwQ3kMWEbznJtOD4Iucs0Q25WYesb4pakNffU9HLFnHy/Lnbu5e36AGKH2LPbBapvm
	 y2o/2sQ+1jmpAF9PmjvO22/bro8RWqHcYD2rfsHebYIAC9dn8gU8BXMVtDHFdnFQBZ
	 iJMkfFixfQzDZ0S8Aa8msXImycQL0gCtK3GtkrDHc6PRJLefVBktbGqjamz4tVTgmJ
	 1JMgohd+H0wGmIBuDi5ZWd5o7XYK6aUzQ6vCmybc+kEwlIerbw6JUpzoZ9PY398OMK
	 VdwZgrgTeRnQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A32D232E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793923357.18055.5613756516470175045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02fde6f5176e00c4884074f9a803533ce3e5fe461f3147ed09c7c7cb36a1ca49
Date: Fri, 09 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767939233
