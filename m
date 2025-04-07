Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75EB1FAC49
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744036793; cv=none; b=mgxdDxCMkRwY7EuHZGC/bkcU4C3UVWZNObFOx0tBuy7J7kC4aWdtCTv/aZmd6Xb0tmQWtvYWvD1wPVmSS7kT8l2xsE3rSUc/mP8NrN+IX2E7hL1tkbeuWZ3STh/RzNNLo1Kf1gvrOWiXNXWs9lWakqqn37FFRJ+YGUqebPbrDmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744036793; c=relaxed/simple;
	bh=VZFotfCuP+8Y85pxX6RrLw0kxGrX/qGAPnnKwr7UkwA=;
	h=To:Subject:From:Message-Id:Date; b=Ud4eWmHmC6FivGdjJHTWpO8CJhSk9W0JmAFBzN/xrIws/R7YeRrw7DkDwUY0IhIx/YXiHv91Vp8KPlZ4WccH1pTfJU1MzroN1GCQGti9Gf98cWEtRIXbcU3OTYrTLdZcSGyaxnqlEs95m98aMVZylhWw94X0iyQbRdR8D0gQ6ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOcNYPQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOcNYPQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06A3C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744036793;
	bh=VZFotfCuP+8Y85pxX6RrLw0kxGrX/qGAPnnKwr7UkwA=;
	h=To:Subject:From:Date:From;
	b=qOcNYPQbZS8ps1ss4S6cSFx5bVlFBxh0hnbw/dFq1a+JrxjJl604iuG0fbd5OhiDy
	 xAJlLL4kZ+UrYelQrJMLSJ1L0+YXbZ7ogPXTJIpXmwio4R7rAX04fNqxkpgWwSB0ow
	 /u73oMk4fMY3ZrN0Dw5LY8EkiDftikx/Y72ASUagZ+tSc1FPOnsOJ1EmTh4efCdhoj
	 2FvW0zCqOI/eDFRWAKkTCReCkhdfjFXNVwi7vNUUsK7Ca6aaDfyayluL6dctKWOS8t
	 nm1RUUUNKFmN/J58of2AV0+4KxCKD8YFdpkIzKG25cO7tHR4wD7oplcV0xn0LNN3KG
	 /aXK/PLaer9Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A7C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403679359.19247.6986827142472416076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83ef7dbaddbf83b0cf72fee005f24eb5e9143ba3ccb74a781864b5de8e2645e
Date: Mon, 07 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744036793
