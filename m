Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F84D2FFF9D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764580374; cv=none; b=MKUh4gKQQd+klxyXGzyZJmAx2WxXo4MO8D7+vFyX4uZJtCeTGa7ZRdT2HjCOdPj19gzEIKr5WVvtvNtRjHzJ+Bl5N+c8d96ZF0Ja2Sbg74j1UoO24vlxv3m4Alc/XCvVp8gF2GdAS3vtQD0GHtlGhuwpzQ4nNgzTYuKmjiUlJyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764580374; c=relaxed/simple;
	bh=Vd2/3o3KFDZ163dNUtsaTkmMRO66BIcXWyMGS2RVuVs=;
	h=To:Subject:From:Message-Id:Date; b=EN3fSlVRHocBP+MF+o41ntq/24HEKivJNAeGk/NC9p4Kq4oOKGRQ+uPHSRvhZO/w2Y5sbC0s0QiEyXBChP76E9iQX0PKA+WR7k73xTrr310QJUPof01rtKls9h/DBQ3fPDsPjs7tOTObBmzZyDNQDvWiJXrIBSWdl0fJmD9kFPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3R9WGI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3R9WGI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD381C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764580373;
	bh=Vd2/3o3KFDZ163dNUtsaTkmMRO66BIcXWyMGS2RVuVs=;
	h=To:Subject:From:Date:From;
	b=u3R9WGI1PM8Mo4MrVX6PQsz0oBoXwq7Sl0PNWvdtatXkuzGp71vzM5HMgMPbdA9LD
	 gMKhkI8qwdqB7IjXr5PRyKwiyczN7pd9aKnem+SLo3dDR3nxtCDTqEBcd4SV/XsgXe
	 H/BnFthBKiWl7Rfm26kSfWb4PFx5w9LwLHeok528FVoAVeL08j26gh0tXDbUHDWQRy
	 AssetPFMiQfJCUIg6cFmbAHCfU7aduv2OTtep1Dfnv3kDLmX/h6qDdj5N42f2lWbXg
	 bPfzjo0SB/e3LMztyoFxFpe0npbSE5DR1ccH1Qob+wdKe+BwsbAnrCXRzgznrJlAW+
	 MSgISA/o/rTXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A4DD116F8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458037363.17363.12380205966018904339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ec9c3559635b279eb782b3f47ff3b0a5c4b69092e5d2d8d2c170c2b615af04
Date: Mon, 01 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764580373
