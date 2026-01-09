Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0631D2D7386
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767985434; cv=none; b=FYvw7lOJZzKWyzHlVqIEPt/b0qN4wl9BXbof67W5FuM4Dkjx0fs+scftq1/HtOlImpxVm2TLi29k94BaMYT7ITFAUGHsudJsKcEVAh5fEUxy1MzNUzVwziVaZu8PiaS3bxVHQbA9mT/OEGCpqPegTZGV86aThIQPO0U1/5nEy7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767985434; c=relaxed/simple;
	bh=hgsdIdhH2C3MP2mAV0OvQ8sJcszRrXQ8lKILANs5rl4=;
	h=To:Subject:From:Message-Id:Date; b=WEM1OWf/JlDHzAg685gxY9raDfByPJpcoKNYDbSVgnKgqQCwTzTcbuPqaToiizXiZrnZZ8MZWT4R0px1MId1T6l52LJ8E2G8EELnW0Zzy5u5TW+Pm447DnVsF2e3rrrC86HwcmVHqiYHwE8IYdx8RYUnnj2C7YWnhesKMoatB/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4TSHRUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4TSHRUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD33CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767985433;
	bh=hgsdIdhH2C3MP2mAV0OvQ8sJcszRrXQ8lKILANs5rl4=;
	h=To:Subject:From:Date:From;
	b=d4TSHRUf8OtBZDF8/+oiOnB2FWQRz3ZdBcrzBAiSg8QOqw7aaNpC8V1p6pdM8UkXV
	 iqmURi6qIe/M2VTgSydrcMZtZonqZ6leejtbBWy7uPq/ElOnOhTM4A2er1f3NKIxls
	 1mpiLHIDXjdZicZkLXLHCOwALDrb1mAdWSixRlQUseVKXf2mb5ZunioSTk8qwjdcxu
	 +SP03p0wReVBerlRQpsPGioG6oTwQTOxwFiYPmuWKZ4VQrMjyYReG/C6V8Vz4+/a6N
	 IWx3l/tQoJpqubOpu3o6//jtr55v+y3JsESqNFQ17qVchSlL1Ns3+gnj9JGaH/d2IU
	 Ja+uQiBnQiHQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960DFD26D8F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798543358.27167.17791550774133144642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e782268d97465ee70f15290f7d87f48f174f215ff3fd2857bfb470442cf8885
Date: Fri, 09 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767985433
