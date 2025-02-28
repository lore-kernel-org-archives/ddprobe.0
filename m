Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3040F1F4CBF
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740766734; cv=none; b=rct798/HnaZ6+rHvl6pYSgimlTiMXibJfkit4yaBja1Aiewu/UjL45eOvqwaWYJnGAsWtaiLu40w/JAeCxzb+MJcO9IqQE1+qmnHAWYKSQTgOo6CWFiqae56Q+czLbcOHzGehAGPCrbfevZLB1Xaun3zir/COx/cJAXZ6xi2VYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740766734; c=relaxed/simple;
	bh=0yi4bU+ktpIgWLuA25u4DFSDTmLsWJY4SRsrxfZotyc=;
	h=To:Subject:From:Message-Id:Date; b=i55rzeVnrfdpmnlrmf8GlmjAWXSoZl3qMtBiQeCq2or9/4s5boe7C7Q8OtlurOjzdZ3O1oIxkJuKgR6yn7RVKR6AlhQzFj9Hn6+2Y557p6cqrgj9fSjJLIJDyDCJ2Y8Xgo/CgkAxd+Q/yaJQlfvmC8QPF28zjiIsdfVKmHD99hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ut6Z6eqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ut6Z6eqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A782CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740766733;
	bh=0yi4bU+ktpIgWLuA25u4DFSDTmLsWJY4SRsrxfZotyc=;
	h=To:Subject:From:Date:From;
	b=Ut6Z6eqt/VSUaF9e4O3YAaOg5fLxfj0Bv8Ac4a4bIv7GBzBbAT1IdVhzR9GFfDuHz
	 hBFEy6teyjBsnhu2lmEo91qetH2neJ59Sc/CYtX0+053ED3qOLW1zfJ9ICGojEJviJ
	 wZAigUT8oosrvHKBdy6P7ka1UmHQ7kiB24lUfdyozSb+p1zatDUqi+D5qyoupHc6JN
	 wvTvpO/sl6ds3hpnhBG/UDiHmqO1IIPaLaOZXaqlKAz1chRV3XremIVlXMYiP7sUW2
	 UpaSLxmgJnAU8Aeq7fXjS+OHIou8oJni84oHSbHuVGwiFXr+uTcAkj4jedHfObOnmk
	 a5ysTR5T0y5Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96703C282D0
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174076673360.11681.361490130458032621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464bcaad11008652cc030d42e409db6ca6276419a9d380168fd9c25952a57ad6
Date: Fri, 28 Feb 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740766733
