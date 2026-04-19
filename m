Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CC340DFDB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776629254; cv=none; b=OKLTmxPSoJTK37Rj4C/aePkMGPQcYYdYt7ZzpEHXVXcWgH9ZG0HWz2biypfYTWfI8OSeJ5n59hWvgxou9r3m25RREXFJHwllK7eqFk3lf6P+7XuEs9r0zWuJ+vUGyZ0tdk2VZZ8wWdg3GPxTpBoSPtHiWV+ZUdIX7rcQSeG4r3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776629254; c=relaxed/simple;
	bh=QcVBaWG5gGNfsWuluTQFLSL4kERyDiZ/QYTNdEPO7kc=;
	h=To:Subject:From:Message-Id:Date; b=IaEkxPaItl9Wgwl12Ec1KI1VsYFqSg8Cn5m2jCdptdftFJzubZcaRq41tjzyeo1qsTGPf0QanZOclUGwX6kUohzHjgt1tcn+1ulmiUtewmV3tFcOfO8fI7LnVCB0Cuq8PCefuwizv3nv8s1AskFTju4ECYB6U0cZT1QHAABE3Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Na1KsMCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Na1KsMCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7DCC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776629253;
	bh=QcVBaWG5gGNfsWuluTQFLSL4kERyDiZ/QYTNdEPO7kc=;
	h=To:Subject:From:Date:From;
	b=Na1KsMCdF99pHRr67qcB3LMf4ugiRmq5+QtMCqcwl4pLK/J3HO217fH51gvAi5rv/
	 eHGjt4yj7wakQoRgX80RofD/thmDzhImHlIZDb4GUei0LF7pkz0lHR4Kq7cMJGpWKT
	 ju1ZgYe49r8KNRApFxBYlGOn1dnYEuQF973yk5C0Q26CvqlqXQo7E4ZFGgg3dZ18PV
	 ACpuPGlOC/9Xneix7hRJO7FlX9RIhb0dw5aJTZ9PJdvyrBfmeMWKJNIOBIR0UsqfDA
	 mFw/u4aBzxz43im7wbe8r/P3TZvrwhFsBEaxDcXzEaOx1b3se/PWpUnZ5gK6VDXz6h
	 9HW/Ex0IBu9xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA94EA7197
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662925368.19829.3513626691655259698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2da0b48bb39aa35a50ea26d1b82d8a133b640e82b57e6253a8ae86e30ad2004
Date: Sun, 19 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776629253
