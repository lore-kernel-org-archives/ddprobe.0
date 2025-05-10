Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B96C19E83C
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746899394; cv=none; b=VK/WKO0aPOm+kmfoojf4HdBAP9j+lZmq1B79R+MNXReTAoblssSshhPPohaWu10ArsHwYgWekXrwKMvwkQnOdQTPlY9O/i2nbVukRWQ8q/gYDxFk71C3YNIIy6h6YDrCYX8PADj544FFnxfBydJrXOkb0mXHu0Ed0iKdZlblF4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746899394; c=relaxed/simple;
	bh=VB4NWlo2bB/v6RlgP6g1j0/YeALLrUajPQ7qp7SOZfg=;
	h=To:Subject:From:Message-Id:Date; b=Yh9lSoqJfJtEEz0tuRvRGoPMBzdMLiaDjDOlZ3yvh5vgPsnUyHmg25QE9MNAhT761nKej8Z+K66+hkYj1fAYK/e86l7yQgZsZ14i+qnEv/iOUpEXR33a8IjSvfSte/pL2ek9zbzJ599w+VPB4fR/hFzmrTC5sxfTE42US7kyRXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amIDOe3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amIDOe3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D07C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746899393;
	bh=VB4NWlo2bB/v6RlgP6g1j0/YeALLrUajPQ7qp7SOZfg=;
	h=To:Subject:From:Date:From;
	b=amIDOe3q+Zh913SvX6JwIa1L37jhD6wxaMRT5mgKpIl2fiJcjDC9PYBmxqHg9qdt0
	 TaQ4HotlBVtagrPOQwa+K0ZuWmxNyag2Fi77EvbqxlQZ7PzGaqc4qpBZXAJDC3Yvr+
	 wYNJdYNFYhaG4mEZXsIBCR24T/5mcc/66f8iY+bCpWHAHoQ3G5MdkHXr0Sx1KkU1li
	 sc4MHL1X+ZbBVDgvjfxUaZiGCO4qcuuaHclClerKm7mveYzdY9bkjPeQX/EL6tMdxv
	 MfDDZWGXSsE3fZQzA4mkMJoYUkzelhprxMg540+FxYba9Bx402FWkV4vQyCocudVM3
	 MHDAGqB/fD5nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91221C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689939357.4950.13290980288998809140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f59e3d45899de192ce0714968a67b7dd0386b1076ea7b23c235e1cacc5d49c2
Date: Sat, 10 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746899393
