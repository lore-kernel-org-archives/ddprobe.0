Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CEF225D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743059995; cv=none; b=SxCPOSOMsDDr4QgUhK0g82tQjSyWqJzikitagtk93jnukBTRzly0zAhATllSHsf87IF/+9GMxgp3eP/BkYX6aEfkzu2aCAKWcfsi1hOMPKX9Ovy6xF5M7J9yAZETPggKGZ62CJ7O7zfI7pm/v0WHzc9yE2DHmYO26kg9T7/fsUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743059995; c=relaxed/simple;
	bh=6M4Y7zbRlx2UNHgdGziJvNUHDbr9Xk51ylQ6lSzO3/k=;
	h=To:Subject:From:Message-Id:Date; b=nM7TDniPmOvfOnhHuu93yIjFos1i8GOECyc7KCFKgvIQkskp3tKzNdcTeVqH4/8SE3xcdg9d6zmxr2HleIIqTtjjrAWHIcsPL+cPYUNpu7MckIVKOZ8jA2Tcl9JHjqE8bxEeL1m/itL/uEUbiw9kBturF7TZtmCum4nLPNQc51A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyG5k2dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyG5k2dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C099DC4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743059993;
	bh=6M4Y7zbRlx2UNHgdGziJvNUHDbr9Xk51ylQ6lSzO3/k=;
	h=To:Subject:From:Date:From;
	b=iyG5k2dj9YlcZBzeBDG4gITi+5qiOpdjgqDGwnDnOBzNpTUBNyr4H8o6I3AIUkusu
	 QRlq97TlWkDVKEFteRiLCy5b7fuCTL/qQjjCykKJUhKYB6/2TYCE9zp7w92QOb8ACW
	 rFWvk/8tC0dtMNy9XGtjjxUCwIXvn11ipD70SHTRiWSt/b7Weztt2igBsoYRD6SpRQ
	 kdhwaoTmNmX2MDcy2O4584hXAiBsNAHAdr1Kc/lwSn1fdeWhKYm5k3YOCCr8kl9wv2
	 hvDTVKZyC0KUUb5tn33okqvAmWsE+mq6t170amf3zeNNL68y8Vch/4RDwGRnB662nL
	 cn/ftEsaezYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1FFC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305999363.1761.14595287090569054103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555ada9ba48b620ccd5d35798b3f589fbccaffe70ce461495048e427f82b2447
Date: Thu, 27 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743059993
