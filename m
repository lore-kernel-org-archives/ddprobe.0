Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409AE1494D8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747625395; cv=none; b=XQ+PZ8Vbx/vfr9O0s5yRtCP539AyS27VuWYBcfPM6HkKEoqtU5AEQoWfsWOcoyoZ9rrnwQ3zdW/VPR2vj6cavAvSO7vOrKWA7ZwfSqaBRz5ci7jx9WgQbsTHLDWzpJ4GXr6fwzCtsRgE0Gdns5C9018Z/K6j6tuhgDnQVmhPPG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747625395; c=relaxed/simple;
	bh=05acvxErGY2eg6EV2JDWVUGNrrdffgR+WwK2Co0U+yg=;
	h=To:Subject:From:Message-Id:Date; b=f6Mbn0PLaPeq56d0SwRJlju5XsgQQCX18n39mztq1ATePnpJF/HWlpP6S6ObEfujKXHqY7L14f99yrZhgGtQX2IZOTTmnxqghVTsK7T1b7JGc9G94fB3S1SGoXIVKpNrpdVl9QEx2KwNxsURzTMRfDyiNsmL+wnjHgvjtMLlqzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqBTbSBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqBTbSBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A3AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747625393;
	bh=05acvxErGY2eg6EV2JDWVUGNrrdffgR+WwK2Co0U+yg=;
	h=To:Subject:From:Date:From;
	b=EqBTbSBl8qYWla9ENCvLg4A5LiwwqPD0cal04D+zoJW+Mqu6UyaC/rFee36ZKNG/M
	 xrU9xxfNFUA7MZk5pt9Mlb89CRWWnEJaKaxPHncfF61Q2iUhpeQrPi9Iuvf1UiiJc+
	 5NZ5oOLjAYszIDmucutlZuT74AmsAsQZBBh5B+3z3AThDJwMfqI5nBiUigO1Cx1Hbf
	 CGOSl0YbDs980DfjUAxC5EnfV3CeYhMetvLy8K/aLmw7Vflj8Yw6ObUIG/wCCJFpQu
	 4PiimrZOBYCh+dNNfsqSDqQ9Tfi5VlzIEhCl24J/StJK/QqmtsbQyEzP0fWFTR7r1U
	 SKvDxg6h2RUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9402AC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762539357.26643.16794905853213288211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357043a65bc54cff4292904a05855aa8c25cec352e4ba357500678c2dc579ef8
Date: Mon, 19 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747625393
