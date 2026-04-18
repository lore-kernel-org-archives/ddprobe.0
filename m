Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA02217F27
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776552454; cv=none; b=Vww44JhQMzr1NLP6q9/W3oGn1AeJZ35zBYXHGouQpyf/egBoEUwN1m06dTnScZG8Dc/y6cy8nAkZetsbzMbp5xw9Rw7/+clm4rHNgbkSRfijC1saMC2URQLH7EM45CGpYUSP21AR/9XbPxsFHCG+BVhA62hrw6Yl49XwV+I/6F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776552454; c=relaxed/simple;
	bh=tBVfXZ2k6BRu5mhlJ+Kw3h5CYU2Jj4iEhLSS0EUsyOw=;
	h=To:Subject:From:Message-Id:Date; b=sO96CUXEO08nhwAGvHvoXlNrZYngbvr2Fm1O85Q/LXwL9ZbYjZ2+EAzAsLx/K1owMD8IyWnL7b2s/T5psBkHQ2T0iRbOGKihafqDJG+Ui9aISWnhTdpJcwjup+F2vzYpdnTE8AF4VmI+0ZnuPKbPXPabe3lLDnDDIUgRJFc3u1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqp0ibIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqp0ibIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F82C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776552453;
	bh=tBVfXZ2k6BRu5mhlJ+Kw3h5CYU2Jj4iEhLSS0EUsyOw=;
	h=To:Subject:From:Date:From;
	b=nqp0ibIhxd4qtSQ3hixi9YHl43JeQpJA64+AgDvv/SuGtvv7bNT8xMxOOWwau+/LI
	 qNp/P7X2eCR4T50Km439uxT9gXWMoTIHwqNpLMQ2Kw87swD3ka1acG0hwZHcn7O1Kn
	 kINlLqzw+a798X8hlJxhQ/v3AJBazzW3BNYFaDV/CCqM25i++XsuPL84Z3l2Whc1lm
	 5HFzwumi7l4zQoGIKNGaQMGH25x4r9RaE3pDenVHBKxdntPNyDxJeL8XCBBHj6C0Z+
	 l5AzbZtVnwqo6m2CuBtoCxr/V5SEa58nAJ089hvu/yBMYoMk7ImuCQOAFDQEBRKMDa
	 QDZdG2nRclE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CCF99C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655245368.24388.3823115730691946918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5de5d6169d85b9cc14455edb383a5034a21b335c68c63d2185465fd64094d6
Date: Sat, 18 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776552453
