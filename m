Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB301B86E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722159954; cv=none; b=ZUR0oGQL8yuSuxdoUCWK01C9r0oVC0Xv453vDVZxseIQjFHJZYHE0XMyEERq9yWh6GZWqbWKeHSM4yThXbOA3vY1trYw8SapZX3WRthK7Zx+G8XcG3r1amHXMy6YgXvw0Xoj0EQqShxZPATPz0rvsXmQHUCcjxgtImJmE0TxtIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722159954; c=relaxed/simple;
	bh=Zg3/2jr6ao+LBy717mJfMXBtM7TYIxRzpZ/mRspmjL8=;
	h=To:Subject:From:Message-Id:Date; b=DZ+GpqTu4nr1sRL52+4Q0cSH0WTPc5O17nkduHcyIR8C35b1TKfvVUKu5VXJnzN18AIwVqdErGFn1N4vs+rd0pdPkhjVmWrZkBGwSnYhjvpzODvOVDbgMaihzP0usfN/EvIicnQgyxMXgSFrUfe4U+FYo+NQFXbQtkSF6tCcOzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fA9OWl26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fA9OWl26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A5EC4AF0A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722159953;
	bh=Zg3/2jr6ao+LBy717mJfMXBtM7TYIxRzpZ/mRspmjL8=;
	h=To:Subject:From:Date:From;
	b=fA9OWl26QsHPhxeSZnlF4Gm7zqOnApGeoY7YjRvdX0FOVCV22Ht5AkgjSD/UKHmMv
	 CYxrCHa0deXjsS91R18y2KG4Kdn/Y12TXb+CuQQc/7nrRQotgBFOI9tjXkJNecNjn1
	 zxjDzHIa0wEzynjH8+9y/cvUdyTRXyONoeiBqoQekafletNxOG2TKSOZpP5JbwZW9T
	 EO08NRSWmnLl20Ba9qNe4gcBlICy6cJ1cc8akiwvrf30kPYxahdoiKJR3Sc0gbZ6Qx
	 YfhbbopoiUuw6HRnxu9sknLJv7X/+SiaLQSdKnMvA3etYnIoIoDkdhfk4rbamUPeao
	 A6FskZYzaOpSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97879C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172215995359.31653.10894270700120209481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa7115929df6baa52b7562c43b6b299dbf5141b39c1e7eed62b7650c0a05dcf
Date: Sun, 28 Jul 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722159953
