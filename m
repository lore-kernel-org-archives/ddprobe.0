Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E2F54705E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790560834; cv=none; b=TMfJYdzfYhp0YPSTuC4/xcFEP5lJiSPmDQ3ys5qdp3IWNyush4mmtdUYDL1i2XTlJxXKf81Z0hCvF186GJp6XTvF8YPBpqOI4kxmmJ7VLWWgPzlG+DjALKsnYeDA+6oVFo2xBKv5KHjljZPzAUHd9QXfIlbFpPOujIYqc8L8m3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790560834; c=relaxed/simple;
	bh=SLJNHlGDnQeB4FBvkuojPY+tGLirTpWRQswT1b/M4M4=;
	h=To:Subject:From:Message-Id:Date; b=d4N1IFoKhPtLefFP/t0k11ZhME6w2vNxhMhPJMr1uQxe5Vw3MD+N8SkU8xrksjBOtbb7oKq3Yh5qLEqbRrrnE2hnxjkt6AJg/tVD9KCIbiy9pHbGLqgHz9DZanDAUuDXN/zIXHaMLq/oNUbrxvLOtB7HbseO4v7oqp/hFBEHW88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVdeMjAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVdeMjAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47EBC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790560833;
	bh=SLJNHlGDnQeB4FBvkuojPY+tGLirTpWRQswT1b/M4M4=;
	h=To:Subject:From:Date:From;
	b=MVdeMjAsAGxiftV8JyIS+uWgx2QPiIB/Em3LSrfP9mNgcIis+2otfOgBjN35OKoYz
	 tUeIexuXMudNWeWMyBdlE2QnHRxss0EBBLngkdGcHTvhcPYYGXQ7V3Wr3tqybef633
	 MLHk2zvAjBwDaeKUdh7s7/jlv+VjxPNpNsEDrIc9D162EZw50f15HNQh/p2cR1K2eM
	 Yynx9XNOdrAoPGM/COFLHZbcZLf9HowkwKswXTbxBPT+g2gbWonjtKknxjn0UMg7mo
	 3PJFtRPjBBiGR1JccHnPaJRQXUVmoDA8vPcyHJgy39TZhM0ldh07VcCBXtapnTZn9z
	 ZJEJh01HI7N7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00EDC9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056083370.18839.6332402131667594249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1fb1a136c4c20263de04419a32991e1a7ba21deda1be8166693051a5e43301
Date: Mon, 28 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790560833
