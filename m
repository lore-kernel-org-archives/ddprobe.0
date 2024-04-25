Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CADE3AC0C
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714077143; cv=none; b=Fhfa+7GvTTlueSHkpcBRR2v779ASjvqEjKbqeY/8TFpOPx3AbqrN+N3rh3FeU+m91hNcyJ4u1AP7O7wcpd7A3hZ9fzDWI/jbzZ3CXSMtJ1a4ygdiUU6+BKoiIHUixgq8YzxAHsundCjhGrJ2KRFgQpcuubyUHIEzGpYPmtEljEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714077143; c=relaxed/simple;
	bh=dN/NuA8hNZ9xgqfdow3NwUO6WlXruv5/pLvtomSYHuw=;
	h=To:Subject:From:Message-Id:Date; b=L+N7e3O0kn/X16xkhgu3f3e//zEy3SNEoQYAAM7Ap+vTPMrlJNfQtfkchyv2suqiWRuWTh81TNP47GUJkIiDfjPWXwbx0ieBm1m4yO02yEPw4MLdXu9BcNw3e/T8UCeH6cm4t+87q2EhzEHwkdMleaij4RUjhARPEVEdC5eGlMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFAwrHmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFAwrHmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E332BC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714077142;
	bh=dN/NuA8hNZ9xgqfdow3NwUO6WlXruv5/pLvtomSYHuw=;
	h=To:Subject:From:Date:From;
	b=TFAwrHmtXYWxYh82tnaSlGXTw37lhdYH/ouPd/z02TjgqMLtcQ5jx6Vf3c9NGNbQB
	 KF/+cBlPp5jnsVExPCw2wzzPD+IJNRN3txse46ngMMXvzyRP7sTQup2vbE8V+0kX2M
	 kkoNaa5cv3tv/30oRSEykz0BFZIORavo7X8ql4mKMwQaRiTycytCJg5QgfZS1tY/ae
	 u8cBKufibfyWo8peXKRFepDwfu8xsafin3LWk6gqV5R4Gl6KFvzl2WKKRCI8T76jmn
	 8oGkiPeUVXZMLU1ij6ytCKize+F+L6dWsz1pevIun6Jn3ApH/LjCAFPNtSUFXeV6ku
	 Aohbb5Tks5MDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE06C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171407714281.14289.15695926444629065326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389f6e08a5f0a62dccb45c3230d599849302b5106088f59b3204f81a07b8e7c1
Date: Thu, 25 Apr 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714077142
