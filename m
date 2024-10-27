Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE98101F2
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730002554; cv=none; b=aso9xENpi6c3Ep602UPiiJBnXjJNLHGImynqAEVtozezuuD0Txs7CFmq8qO1zDwiX2Xx2b3f6zby50VgGGyZitQvYxuhVdrHJNdglhry/VihyBOlBBdUNkQrX4MKINZVPSQyrI7ffdPpPVVXXlSttuHVfOhubGxcGBIY7axHO90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730002554; c=relaxed/simple;
	bh=vFt2njA3nSm7Vh/TlDg8jfBfjpJP9LaFaG9bfdOAW98=;
	h=To:Subject:From:Message-Id:Date; b=reDcdpOo7my1hfKHTNvNvyJ6YonO9/FYLZmOvO2wyZ0X6EoEw+5fFJK3HRG3IJ4hwmWCEtBnA8cktQ5422QHcGpGNIaue/PSueWF34+YnPiypOWHoK0q65bWAJGd/rW7797vQMv939qe3coZebQ8K4eYmnJKlTETOCyetL22Vdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4CwNYJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4CwNYJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0662C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730002553;
	bh=vFt2njA3nSm7Vh/TlDg8jfBfjpJP9LaFaG9bfdOAW98=;
	h=To:Subject:From:Date:From;
	b=F4CwNYJ3APfxv07/XhaZcVbAk4UiapsHUG+YqDNZ+Xqs9V412kyKFZoFUwYO+uwjV
	 UbnYmekObYF4VdcYffl5UQr/MS8r0W+9vQ2nKyvHPVhDyA1fhGTT4upc1H2jo+9MuF
	 PBarZbpwv2XksPxBQuXFunA43GIjPMKuQ0QQfyhJKOo0uZjFXJdISdXHUexrHdfMdN
	 ML8nHDbO1LUMrAPoQ2SicHrJKS7SvtTrKKnjbWCXYdFJ7OsheQJOFNfzBsB9gu2ixX
	 CmflrOY4Sf6Qj+PojxsQknYFiahUaig7vyZ3BgXVJtZWtxteEiTosG8YT1WdTtmSI8
	 /4EiHxR1WsYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D38CD1039E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173000255362.31913.17960807354393564185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6abb826116eff71510943c1014e333b60763a4ae4e27ebff9865c206c807495d
Date: Sun, 27 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730002553
