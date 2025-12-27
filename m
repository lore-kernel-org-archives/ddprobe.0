Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3B33128D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766837034; cv=none; b=AT0foIQJfaJgPL/s/dg5rPdwmjEGXuRV46O7JnqnAtotMm7lJX2oFQZmIyR4UgfyoTjCRQlSoBgjRjwbzpNNS6dK1LJ2VNAeVpzUHlyU6Zefr6E2Czm51EArR/4IFc6lHwPVcGISv92nSo8wtUkzG237VgbAjlgJPmZOOhyjEOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766837034; c=relaxed/simple;
	bh=qBtXq63r/4M3/aiz7zAK7qm3aBMjk7cNkg+FbAj516g=;
	h=To:Subject:From:Message-Id:Date; b=PFC7XP5wD+na/MK3qqE3CgRmqHBctFQNTPlv+HU6nsSM0kJTTap9OnfQOMzFUfFOJRwXxXXsqscT2wyymxJiVR7am+p956qx1JYWZ3TW2E5mWxQHgNruGsskQNIrSvcBh7lBDj0HhqOBFAGrHF13OCjdJhcE3Bp1m2B1L/FxtfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ic/CqUKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ic/CqUKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4C5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766837033;
	bh=qBtXq63r/4M3/aiz7zAK7qm3aBMjk7cNkg+FbAj516g=;
	h=To:Subject:From:Date:From;
	b=Ic/CqUKwpJQlw0rjhItXTwHrhdSYV129d0IgY7v/5rlaw8Q1XSeWAGdMXyq3XlT7W
	 ibfbSN+wado95YqKEPdt1jzShEZzXvswtcDUJtCYORBn4hi/a1c9/bPr7ZFqyvmjTZ
	 btC2nLqY8WyI4Tri1MQ6XeR2Bt+sb9R0SU36hfPlU9uzo+a9A6m4XtizFh6D1R1Iej
	 1q0sFqAPrf0TnCU0TTeWx1z3HtNsvTyX2Ujf3w4mmPUSOGC3IyJSNk8iGoaQMpNwK4
	 TJwnlUuwt9EHHUUjsW/cucnwXg43YFzv5oHYhFHJ5EiMFAajxa8U7XUXYgvicjxbZ+
	 oNDIuInouDJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B88E9270C
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176683703358.30130.4473069908529101160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf9f5065db204667fa78512b8695d9b23bc7db9d6c8464af768537450953f5b
Date: Sat, 27 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766837033
