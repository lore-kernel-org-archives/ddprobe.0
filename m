Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823A4186292
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718621303; cv=none; b=BuRyYdURN0SSDssC32vxg3xcveWm5YqTp3Ao3vQvd3ejae0Q+cACOyDzDdNGsm9u2DnDb4sF7dRtq3EGweXImaFK/jtRC/HKTbJwgb4BJKiIwj31EMlGrFN9qImyIW9mvWDJcwIBn2muCsuSCjwRKTfa/Z+f04wAboIweBygu9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718621303; c=relaxed/simple;
	bh=XT7mD7DgwAUN8Aw+79eZjSqJi32JM+i4CNHOSUMafhQ=;
	h=To:Subject:From:Message-Id:Date; b=AFjz9x9RsUkgx5SkLlDGgNDXTERkloF1pzEq0pgA+YOvcaDNrRQEeRm18t/bc2kGJfhQGRtcRrlhGoRCrEZXzBpxGVhxM60WlFjwkDIL7CJXvR34cp7YxSVA+feqVwsgvOynpPFmGEqpOvwb1bC4T7l5ziDkVt0eLDLyx5/rEyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXdbX/6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXdbX/6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CEF3C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718621303;
	bh=XT7mD7DgwAUN8Aw+79eZjSqJi32JM+i4CNHOSUMafhQ=;
	h=To:Subject:From:Date:From;
	b=AXdbX/6/wwZvL81ofWXdSdeDDViqvWk5xp7ALnDmrin/+CDlw7O7JuCXOTYoi133q
	 Epxor4tppd66Ic65ea7J/aCawSI4r8XX5ROBvi+f/56NCk7zgDo4bs6BWQHAR/YZIs
	 vUKK06J/bj5NlWNTJcd4w4PmXokSoa6yi1YLG9zwwwhasyOy7qcbLEw3feE6eQdKfr
	 F2P1T06hy3T9Fm/fOrt1fjV8nWAbIn5tNwKPqXvIbQgt/gXQpEo1xuHD6VUMpHL1/w
	 SWyJE9pHkJGvsYFiqfV9dH+6cGRxFdoqOj4grUQO13mwoTQWLxPEv3wxKZhhj+hL9t
	 FqHYzyQrQ/mJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00FDC2BA18
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862130284.16969.12835694407286449581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd7c349b9ab1dc4407501c68cd79e879f364af56985fcded2e2fabc26e5a79e
Date: Mon, 17 Jun 2024 10:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718621302
