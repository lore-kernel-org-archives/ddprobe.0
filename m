Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E382AD16
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753573794; cv=none; b=B6tQCxpB0zkWqEyqdMaJYSAXYz+lSm6jfGvn50rglDkNp0j3sKtd0BOD4ri2XqKxTS0ePMYpdI/ytmthjLLPUDQAwnfXTX4ib79l6P6u2w4HoLLNRTFByEnKlHHEPtqw0G3LuCBowVKGNCFl+UPl8O0w/d98TNg6UvyilGZN7L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753573794; c=relaxed/simple;
	bh=xfl2TGVGj7zA+7OglLwfiGfdcieimtDTpq5YV3sRw30=;
	h=To:Subject:From:Message-Id:Date; b=PzZx27JegV22b2gVy8t0bRUL8uYuNPUq5KDvRYpRIb7rYqZPjQWbfBRr3vWWSFX4isQgnReKiaWvglkjCuX4Vd+qYHsfdgNdn6mK8N26mfX2HWF0LZq+RxXsrbzHhE9Yx3ZF8LvmMDq0qhtfvvlt/CtlKRBAdvIcWSNZYSC3CsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYulf8Ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYulf8Ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6DCC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753573793;
	bh=xfl2TGVGj7zA+7OglLwfiGfdcieimtDTpq5YV3sRw30=;
	h=To:Subject:From:Date:From;
	b=iYulf8Ei/M3jHo5a/ojUZ9gkLHsSB9v16zNSirBW59Nhb3gQfvW4I3vdJ3PriYuto
	 Oc1dfl3naRfqw9xb8qhl4cyIAEtt4irqtDea6YtD8o3JNj1BDj/Ie40lQ5WL9s5LSv
	 cGDGQQezn/vFbo7KXgTnbKVNkuP58vPnzhZsiufm4LXrWPljNYqCzDQ0K6tAYnIawy
	 9dp90mCGr3OSuBAxqJjZnHY41TEj7n36O4YzFWotOieTimjG9quZ+qi2kagnhiigqI
	 SiklZPRHLP9VJstSUPiZ0Rl840l4dKrkVcMYp374Notm+4hPyn5TiT3x0W6uYRYaVP
	 cFe/ACMhitwoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9138CC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357379357.23014.17995100387098889805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134691a6923ef2acfcf2e625e5904de9e2d560cca73e85fb07320229ea695479
Date: Sat, 26 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753573793
