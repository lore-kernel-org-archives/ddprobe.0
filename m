Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08080620
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706056697; cv=none; b=ahA5TAwAXumC2SfOq/oAsEjJHHlQJDYE0TB3xc/yar//bjqm9vd3bwwxyu35a09kEo86a3tU9V2YjQ9pNf7UDcJbNM/3LjRA6Zk8WLylAV9OKwaah9u+kSLKP8SQVfoXGGhEA7TOLASJ2Xvepj8pk/AJtF/ZD3yiad2gOAQ5q90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706056697; c=relaxed/simple;
	bh=IDLvDZTUTGyRRwpZqiJhZa/1kci1rKNmgt+yyK42e/M=;
	h=To:Subject:From:Message-Id:Date; b=HszFLJ+06I9/mkWNsFsEJrOxL0bw21mbw0YEUyKZ5LwW/TBHBOoqfFXh3FJ++u17Vv6A1SGp4rKa882Cp/64glPFevM+afTwzkH0YmvAMUlRrQSBO440DwucedIMx1MXLyRyMwxsljrizMWdIwV5NqVp9nuMh+7d120fJIGwgvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1QNbtXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1QNbtXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA03C433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706056696;
	bh=IDLvDZTUTGyRRwpZqiJhZa/1kci1rKNmgt+yyK42e/M=;
	h=To:Subject:From:Date:From;
	b=S1QNbtXQQsF8Rzmfi/8Tx2trOu154UrAh/Z8VIFCkieETwf+JGAWNgrDRXevXsSPc
	 9xc4vigLeDV8uz+QkaYjU+ZSr7tNyZRwesvVhNWfd5kPdRXxOq+f5Tzbya+YnQexRb
	 s6r48Ko28N4I8eS5ObqVVn2Wz/uVNlEgcnhDnZXNHd77HwnjsKhKZiIhHwKHXP5krJ
	 dCu/H2NJdheP5hICLocfQ7YoiDqyszFwfuyVtqdnPabDwk6tAVH4j+wTGI8tEK7GGo
	 58LIsgtUEu/OVjDVk0KEsyBihcqkqFy62RYWXqKRI+WCCx95jpN56ZrnE4HKNl1Axe
	 AdYVAcsIFxUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61734C47258
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170605669637.21166.12558713336022357837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d23f34290787f175377ba37165e85526be45f77224574582454b4aa3b5ccdf
Date: Wed, 24 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706056696
