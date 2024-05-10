Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481A2152782
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715319143; cv=none; b=Kr9Pt8WvTIXlZOfcfwBYLSp17/EGrKCDIktjg9zM+Vs7ao0ERePceRGWoiFwwjR46GJFgXyLG0FGGs0iVagRtOwtqQTTrDaiyE7evR1hXw1NWagzutSDilYnMt93US5t621P/sRa58fMy0u5U03uwq7hBYg5CgBGPWM+3JX2Qt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715319143; c=relaxed/simple;
	bh=FRaUXrRy+yMcnFIVBPL3qrt7R7X6lp9zqzeb4waTMCU=;
	h=To:Subject:From:Message-Id:Date; b=pT/T6PcuJxM3dijtwSnOJqdb5615FhOisNUNtdc/bBK4sgI8Q2ldKd4LLnstWO2bN8GYtOsfFJiqSfvrWqj3cXFVZ3uPDQwKQ+m5S03/vP87eVF8SnHjkAUQs+TQXcIHK/c9sgReBjuFAX/ByzKkrGIOM9ziYRJDeLzRKCMT7k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEy/yQno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEy/yQno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7678C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715319142;
	bh=FRaUXrRy+yMcnFIVBPL3qrt7R7X6lp9zqzeb4waTMCU=;
	h=To:Subject:From:Date:From;
	b=SEy/yQnoIiGuRJh+AdqbOEt+zGMm3PxIDXrs4dUnt/uVT6YnliubdKcg9dzEZObkn
	 ayVmEwnBF9N/e7eR2Z1T9NkIHwgGnz39QBFRo5az8ZP/xnFgGGkM8zn78zD0KKdy3L
	 IJfMYzXdR5xMs30SwL4tVVtPy9iGFM9tWX0ApxRy8/QFP83I2J9PtDOtSQJw3ldK8B
	 QhMGKZQPPaH5FSatmNwyL2zDPUaVlaUuMMhkibcRN8edE40C3i1WeYIhTJG4n+Vzvp
	 EtaQiuYSBJ2y4eDHKaEX7E4WtWJoxmyM0rdmMdtCilRSGInJ/YJmhNcpLE5IbMpYCs
	 vL4CjgfJDoRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19E0C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171531914278.5687.16617384022649050894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27232690facfbd094f89384e084f1125b2eeea693363852f870b01a918cae8cb
Date: Fri, 10 May 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715319142
