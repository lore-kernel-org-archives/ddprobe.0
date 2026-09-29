Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3FC4EE846
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790686234; cv=none; b=H3ZqhE46T2CzMgcwVLKKOtVk0SCEU5cuXbwz9U6/1svDxir7VT/rJ2insG/ag87nlGILvXMR5BcUiVuJbGHbUKqe8Kb8uVwbOqm7KNa03vmCCC185WH3G+wWJnSrB2UOIYn37/+qxI3+P3cOrfYrqOv655EjgyvVufVwwdyEtEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790686234; c=relaxed/simple;
	bh=tRYGMhpVDOJ3tG3Ld9coVVxhGfEg2+X8X5K05aoyHp0=;
	h=To:Subject:From:Message-Id:Date; b=NLyjZwTDiIVNjdVPtDbkSGnYiAfcaffhaJNRmauQ/nZKia7P5lIFIhnd82Q3E9kUqkfccY3f2l3AyYePwPkckXPmduxLy9jNtSvoASZZVYt9Rt2a7i2oAd3TCo1sEHpY1Wak78q0UH8tyJ/BjT+r1w5JNi/GEUH7WBJLW6rKnq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Co7WtAvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co7WtAvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21EEC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790686233;
	bh=tRYGMhpVDOJ3tG3Ld9coVVxhGfEg2+X8X5K05aoyHp0=;
	h=To:Subject:From:Date:From;
	b=Co7WtAvKpVpeczOpDEi0ktVF5HEj/CNygwYLimcZ+axs6Jkz7grw1TMqraGBA0Clf
	 l3ufOEWNDGIYGJv6E+bM1Pql8WqmS2Iwd5PrVoP+YcuHe5ktu8l+03sFRW0tlgXxQZ
	 G/wNQb8KmwEvQPR5pxlQeEhtBeSkbcDqA/f8W8orhCg5lRwuJAAmknLcIBkWkwLLjP
	 XKlFpXm5bTmaUVGCpatr8c6Z+dIEOG83ohEHdGuap2TW0BMIuC90IFgF6HdRBdQUi9
	 2bh9LvlE8JooiR9oKl/XApmWOYqBl3o9tXbEW/iwZzvtZ9+jksXiY2nUBA7jCpzXgR
	 DJLzx//gQbRLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA62CCA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068623368.15386.11174808289279001174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc25d6d5c7d52110d9f46aac52e963db02513cccd93e98e60783eedde9f8c67
Date: Tue, 29 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790686233
