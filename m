Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299CB17BA5
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732819554; cv=none; b=mCIJ791LDSSHt81lt5G5AQWlMYu543CfzLe9wShDthFFn9hFO6uuezRWhmh4B2Ewp75/iNMt2tAwDEkVjCyGD4VKvTbP5An/SyKwN2V6b+NQSwx3DmH8ayRs/DRaxXZ3jMsDg/W55QFbJTX95c8XgsVfPLPTzhlzpKZipooe/vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732819554; c=relaxed/simple;
	bh=liuuCDRExTZtpOXqG3NJ6EuLhStJH5yTVHm86h2Zr9M=;
	h=To:Subject:From:Message-Id:Date; b=JlZx7XKJ5X56chl0VqxBCyqQRDlrzZWQvKEgWGv3NVNVbA0PTQcJbQxV7jn8tlTPiblv9Rz/GTF8WyYrfQB0dVoDsbf9bKqGCH1xLtMrFCm2uDaBR3WTnS+8skiFQ5fGV4D2ukxKLtmcKfLYidnlmBi12C2YNRyPJRJjz4aSAFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WigGf1hR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WigGf1hR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB29C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732819553;
	bh=liuuCDRExTZtpOXqG3NJ6EuLhStJH5yTVHm86h2Zr9M=;
	h=To:Subject:From:Date:From;
	b=WigGf1hR343oeVXylEJm7za5mvF9+qf00PwqzEGzPl8a0B2Z/TFABBbS2aLZXDtUa
	 B1my8uroaEaCKHPC60ebQRgQYjlOE5wXZcYjaV1eU/Y3GWZGhvQBKmxLtgNIMB3foh
	 dxJbvyB49Hb1ArdDxJhfiPSZ3m0tl9yipvLGk1Ta2I61AQxUEkx+p9ZqR92FItzhR7
	 3FGdcdYpxam7aqELZZ5bLpgdSdwhZM+4z3OSt5nwJUYR9ySbgWdIeMbF860Cx0pt5v
	 t9Fu3gCnP7alHIXsQjCeO+zjCRrZsZTtFK5iDhvPJNRwlimmc4wvYr6otsurGfgJY/
	 0oGmkLIsRFWOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F091D70DE8
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173281955362.2574.13825168529794419587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7d432a78efa09ad32b0c708a648504d8f230f216f9d293bc2518de1e7775d8
Date: Thu, 28 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732819553
