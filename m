Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0006522AE65
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768196634; cv=none; b=pl4WoScsJ/8hWr3P2c6S8L3n9a0nSrXcSFgKDCjUwwC+aMml2lhbsOQ3j6KN/2NSLH/HWdVf9DasH4retxXZCm5VHiya/CV/3rW7LMihf7KpLj9HlWXRiHmAJeo/f3uvKkEmholTMK5IzUk6tz/0ZP5kMYkfSt+8JSjMXVrkApU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768196634; c=relaxed/simple;
	bh=kKkr2iPtbX39Kp2JNomX1sK3UHWh0GK6iNKPM4SfuMQ=;
	h=To:Subject:From:Message-Id:Date; b=H3sryUnS+NB6Tjwh3VIltNMD2mDP12BTU608va1+Im5o8Z7oO+p6gNxrg2pxSN1GnoSzk1UpzJKs5cAVCU6PTenbMc0Me/20D32RBEHVPFUmvMmZ9zP++iSoDmksd7v+GTwnOIsRWc/A4TPhDIMAy99q9ZyxrWyxjr6vCkzUPOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R80w7nLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R80w7nLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7AC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768196633;
	bh=kKkr2iPtbX39Kp2JNomX1sK3UHWh0GK6iNKPM4SfuMQ=;
	h=To:Subject:From:Date:From;
	b=R80w7nLahfos1fDHhnUyFHEENHV2eryfpzgtkw5uvEZCSTRfWKTvR/GXFUR16pAZp
	 f/oBgDh7fM6sRm9bDnXWLdrNOZ+fr787e2m42o1ORUMQNLNxR1S0yRzxV6RElRW+5P
	 lZAK3WNPMGKkXa2dUz+BORzr0Hf94NBeWCtIh6MqdPkuoA12oK8oiV/d0Rp9OGSDs+
	 JjedQibz7QOC/GIRx7Cpb5BtfdcBhZ8abGXRQjWhmYcbNDh660KKkgO3ZOjcG3YE9B
	 KEiBx1cqm+jtcRf+73YtC/qlX3Ak+UHtR2Cp9UbmirqW5UB+vF+s3JQFxQJD2gHMAR
	 f2IKqlnJWogsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4EED25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819663357.22938.16828265209277803205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5474c8c49b1676948870f7cc0ad91ae276e90f914d6a18fe781fe9d272a1b02
Date: Mon, 12 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768196633
