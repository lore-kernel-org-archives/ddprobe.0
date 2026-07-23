Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE237478
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784765374; cv=none; b=i4CMiysk3i6bGkor1z/K81hyYUJT1T0OTzXTF70J+V41XmAjt7hNG1x+kDYD9XdcjE0f2ABv2pLn2JoLLE3ulXPXH8XZkGvYi7RsC3fj3OrchroEbBJwZXuvG3mc/HCw7TYSLw+joQLEXGDr0zL/AYDzOR+kcbByycvzC8UXRvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784765374; c=relaxed/simple;
	bh=TzB/mqXW5xporqbTkTGvfmGpuc13AqSzZf11ZZYO0rY=;
	h=To:Subject:From:Message-Id:Date; b=ZUtbFADEoaAadgG8gokaZqseKOHNkZTHRLlswlEIbjyKoiciaUOddXL6hWG6n7htnE/2vfo9jNusrh62mp+7uQHAVyWx5kAvzS10COU/P7L7jCoaccY1oUnUMQUK1KBb0xYcjxsaMO5jtYHaws82uJhl45bRfTY1dmKY0bcEjBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFK+71Va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFK+71Va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE80AC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784765373;
	bh=TzB/mqXW5xporqbTkTGvfmGpuc13AqSzZf11ZZYO0rY=;
	h=To:Subject:From:Date:From;
	b=tFK+71VaF7gaIGQRBiv7skBSyW2JJ8RKkM8E9F6hHENiglTLfMMRaw9YOB5U9BMBK
	 +7hMb5QArO3xUSdV6cuKyYafXep4L3S/HarENmaqLSH9OeDQb8nejDF+wr15xstyqM
	 97iiAVYQukbHip6x28RxoX88E3P4XPm5FQwHu71e7reT88vuz0ljjWkByt0XnEQTEz
	 4cn1N+lQVBMdDQA6cwpkkitGzlmYj6zc5we69r68ktIi95Hy7q64SSkp/VzKZlQ0j4
	 ednneR995IsXu67TOQg+2AjhSil7nVot9pt8D097L3BN79B0/Wg3Yt6YHEy088YHe+
	 cd/TP+3DSGQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26E4C44532
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 00:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476537370.30311.15298177676490615595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7f0a19562403b510df9d6c69a979dcc411e66363b4fc07181d1252bba85b28
Date: Thu, 23 Jul 2026 00:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784765373
