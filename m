Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A10A23A98E
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764370974; cv=none; b=lx0L4vxR435DidLXqaIOVy/MNZcg2hml1NAFZHblVWdPBtiQzAzjrP5U5AHhGZk2Tdi2V7CsPo/I8C8464pTXBXHmmIAqzpxspVq0NbuQqOhYRbzhh8pKc2qUvgccVD1E20ii/BofJauCzUJFc154U7D+m97mhDmvzGHJFEh0uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764370974; c=relaxed/simple;
	bh=HxowLxZ1RQkT6CMsGwUpX1k5QfYEHciU63VCtLesn80=;
	h=To:Subject:From:Message-Id:Date; b=N34NuMi3Kd69AX+O7RsHDs9yVmqTFoigbeoFL7xUgQcp9JSNLOlSiOIDeCcjW0yKdwrznPZ/WyKiIz3Y2fr4OXKO3OYyvcZijvkD0slfz84S/oi09kswU/VgGUPASNurlbaGx3qXwI7vbuIHuUAuwzGmMYRyA7E8c3eC4RRh/OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDeBtBzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDeBtBzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DDBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764370973;
	bh=HxowLxZ1RQkT6CMsGwUpX1k5QfYEHciU63VCtLesn80=;
	h=To:Subject:From:Date:From;
	b=aDeBtBzzYAfzJf511kRf66kD6IkTEdWjmv2NUkqHRdhtHHakfOispswXZcJo8DE9P
	 gh6fCS6C5amI398saRDSCAKG8XtIh5pXxTag0SYUnpsu8Bhyf6+ZUopFf30qEtjsB6
	 qeaut045p9NfkqglwN8ipWn8I61CORlL2nzuMd5MncGrkWS0GaEL5ZINquEsguWDkE
	 gE3lAs1qL05rqAU7q7WX0tjha/Rjw20lPqgYE6YvFmYbhXWTC+djoECLAQ8fi54fBB
	 IqdJU9CJcWKy2DGK/7cILfbbjATvwmecJxaCXh/jZC4c+GDTLr5EDXn3ejoWhjntmS
	 YMTGT0io/Cvig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ABAD116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437097358.3149.8721630415491002435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f64f4ab367b0a799a228f56a9d12e684723750477fe678408e45245714be9b1
Date: Fri, 28 Nov 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764370973
