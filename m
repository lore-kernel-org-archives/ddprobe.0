Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF8013A261
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725834954; cv=none; b=k0n2SM34t60yDD6XwO3Nc6835vejwxONR2jQFzEqxdjQVIRZVEla4bnNk6ztA3/Ki+hbWHXtq9ou/+tmZETG0SqMGOcEVl6vqZbZko50sW4+9XGICpSxVLKeVdvqO+Qb77sZNdHlSmzbhI/vQvIFp2An3C9GjOv0OCT/y55HOxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725834954; c=relaxed/simple;
	bh=Us4ALhxYoNKkZ3Z8KJ5/uWHoT6ppd0cLEV+nsPRtTZk=;
	h=To:Subject:From:Message-Id:Date; b=UumDx9BuBAjHwJKV5uur1FUtxpIej4xXSUIZRH0QIADzbt+l8h6QelF1H5HQZ2/X64SVfoHkV8c9WLwjATZmrzlg4tO78wbXEHAEPgZjz+KmqtE7Qm+SDPK6iEtIzAUbtKoPozBhEN8kZUdvHBQYWTq+nJnqlLfBqGzctq8I/rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKFKNvdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKFKNvdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AD0C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725834953;
	bh=Us4ALhxYoNKkZ3Z8KJ5/uWHoT6ppd0cLEV+nsPRtTZk=;
	h=To:Subject:From:Date:From;
	b=PKFKNvdGroCPGL8TzxCvsAFwiiJN0gSxgKnKvMXtvdEEkV4UV7blIxcrxqaIKA++y
	 PJD54iLlnIVImdU68xoQZDsPYpcRpqdnzH8uDHgp09tL0eoRed/ZBomcAhJsPItNjd
	 TLl1xODtw5wBVvWYNp/t5Tn0nUzJnTpeqrKyAzTq8x9Zb4kUZBtbD93ou2YjNaX7O8
	 UB7fJmYH4KIlYf3TLWmMyTaZkh2s4ds54pdnoMU3MwjeLHYx+lHQ05RIESRxTbj3wv
	 XOeOBtLZCliEwRum4N6C5sY4RgCvTvyzZagiLWvD28PkCPEaz+GA2odvsl6x2GIhJ+
	 g1FdV8Tgg/8pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5F4CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172583495362.6340.15398541992409385899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 371c01e7407b608c85009cd1faa7c4a1541608664ebcea291a78baa2d35aa68b
Date: Sun, 08 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725834953
