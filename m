Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCAB374E60
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792252834; cv=none; b=OBKNfQWJ6v9Ha20X2NKMG6IkYMpMtzzhsNMPhR6sEpHILZUgZE2YvMGXymKPia8QfFk84QSE3hsAoZe2naotl7Zeh5rFX9Babst0nK+K54PJcjkKNT4UV3UBiD8hz8krc22q/m4POiC3h79R3zr3dsoIAhN+WKOCakLvV3frvc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792252834; c=relaxed/simple;
	bh=v3VkEWmyYuNIDR9bTqyBeHR7IOX76G8ee7jlSnBHBhQ=;
	h=To:Subject:From:Message-Id:Date; b=M9xXiIli+FgcDPcBQgBU03enWxTaQhCDvqzmDNjf0FADaUngZ0wEHsQZKEqUJUd5kum0xNtw9XmOa7iJ1e0kZtwZT+ktFK1fTnBxXfspECInblHFj/jG4aNHU0+TH5z239AKrpXCPjpNEEPuPDsFbfRaLUQV+wsPUS5+txepEDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aursrrwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aursrrwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03C4C2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792252833;
	bh=v3VkEWmyYuNIDR9bTqyBeHR7IOX76G8ee7jlSnBHBhQ=;
	h=To:Subject:From:Date:From;
	b=AursrrwcpJJd33ckvdKgoAwsWtPkZ2VD52uq4czHSV7j0UhcBSZBJ1tCj1O1N8w+w
	 MfBki+MR9LhF+zO1Sa9720DaBciKBb3/8AoHiBYZG6MvkjPzgxb+ktxSVd12wqQIg8
	 xJBfvVxybiCR3kNUi53cDxNVNi/Ce8sAR/X2kiLOiTH5Na0pn4l776y1OAZKzADcSt
	 mO48CaJwXiNLdLLS5m0fzvnlqfr9jn+4gPJsv0iA2XA+ig2p5bDGlOukH2Feg4m0Si
	 3TT7AgcVM384eiqrYt6ozdf3zxxRblr+kQ/ZjEgFlX5rMEYQy7qrCSWnFv58RQTRGt
	 zzClqr9zDbBRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE27ACCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225283370.9051.16809806301970548295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6b022f4695f42972db56a894b4238e737a90cce3e3f14057eeea3366d8f98a
Date: Sat, 17 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792252833
