Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B852BD05
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720497983; cv=none; b=nCDvjIf3OvFVzYqfhgKYp9p2y085uq97fjCr3QWS1c6MLbiBiWfsva8Rq2X53xX5MQPlIVptcFuM2PUVD4e63PpkzGq3lZ/oN9fxFO31jmlFSXtAp7dHSE0GJ7F7/onS+0ifGXoRVN2TOCtsKT1XDukUNZJFKXUSIVeEL+av4GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720497983; c=relaxed/simple;
	bh=TxAgKFrSmaoPegr2jgv9EEWcWFy7j9bLV+hKyiUgWkc=;
	h=To:Subject:From:Message-Id:Date; b=C28oMFSSCbfBnIsfqqzPa3l2a0W9gLnEsViPsUSJwMJ601WG1Hnw9Jko4uLKpj0nQTv6ZbS5PoM7/bWOPtz9zO5aDgf8jRsTpPICdLnjTib5aT8VXEAwQzrsiqVUqCtLXzfw9ZP6UXovkKVCbfjSB2a9Hf6rImTj7PaRIMpeVj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbODUmzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbODUmzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46F7C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720497982;
	bh=TxAgKFrSmaoPegr2jgv9EEWcWFy7j9bLV+hKyiUgWkc=;
	h=To:Subject:From:Date:From;
	b=PbODUmzDHst29g0oYjjrnnakAXn6FAXS4cKwEOpYsk5cCycPD1fnDZxTkGhYldxb2
	 IOOmRyBdUi0KuODg7XnCjx9lUUFBFc9Yy3L7aR/qgo3Qtyx+Qx8kskT1O2dBiKZSWl
	 j+N4h26ZmioCt3xPXe8stw8GZZsLt8U0HhGmJ+D1c9+2jtjyzm9txIdiEbC8TWMUsy
	 CcL7vFiPa1nHvZb0cwLGNt/vgQn0kfLogvRibe5Mj5U0+0WxeMerCV+3qW0snvZEKM
	 B1fWkerawY9xtR5zHOEmxxopqt7wKyrdCI57hIqxY/E6CetAJ+0K9FGBvb8Ac6E8FL
	 NGnTRZQ6TqzfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCB8C3DA45
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049798276.11574.5308183500514635661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4b6aa9e42f0d6721afa4761d2b986568e1571330b160df691b56ec37251046
Date: Tue, 09 Jul 2024 04:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720497982
