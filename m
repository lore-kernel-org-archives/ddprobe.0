Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414213D7D69
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786658434; cv=none; b=LsSDvC49F+cazuePFINPJWRP/jxJrlFTEyYahtm9DjXTDpOr8ziBWeJDA0XuQCv7IR9JGyCTp79kLx4Ql3IwDq6TL+hlNakYl9RoRx30BO4GzJaBSZxAS2MCKCqnqvK024QjCQbaeSecsIfmgQ08uuu6DTCb2MBUty7LEvAdTDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786658434; c=relaxed/simple;
	bh=SaQPXv2vy0b3Ki2gPOafw8XqZdCp92SWO5fGj2AdqDQ=;
	h=To:Subject:From:Message-Id:Date; b=P+BDLAtcAJxYltlod9LmRcwR1S5dXz0Xb9JMfmUd2akEcmhSXyAjPd4og914NVU68K7c1yxiiSjhZGv6VrIvsC9z/j9HiFdkjc+mtEiqg3+SAv8B8ckgZoUGAeo107iujI0bTKO/7W+MXGr9EHaUooNNfUHAZ+bLQOgj1kjoDes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpqn2rLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpqn2rLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EB3C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786658433;
	bh=SaQPXv2vy0b3Ki2gPOafw8XqZdCp92SWO5fGj2AdqDQ=;
	h=To:Subject:From:Date:From;
	b=jpqn2rLNgb18UxRDIGkQfC2KIEGYHIcGeKyV4oH68hekBKhNlR9mcsPaCLgngty1E
	 RPUza3tfH2AC2Ln46/hclQnNIPCe0GW3OFtGIhrL797M3Ko66A20sBj5NaNiocGRLF
	 AtKUgLW0+PiQQ0Q2ddgeNkxGm/DYuzmqUjQxpaJD/fGb2LbaooC0N5Mni2wP3V4tga
	 OHTgY5rEWFEOVj7LHu2rabkB78l23881mOh2Rf6qz/A6FRCcp0woQfJ1J7UySdCO5c
	 x8jNGLgDF/N1aO8vV3oc4ax7+AwYx4zxkO0gvtuo+9Ca3HEYN5Sa57+O4gDXvSOnbw
	 4F2BQJ38CBioA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC32C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665843369.29828.16754172839516696476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83747b90d33c7dff9f3ea6a8f24675238e0bd9f4cdadf7b3b30f7b01ec06ae18
Date: Thu, 13 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786658433
