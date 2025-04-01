Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0893594F
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743538794; cv=none; b=Alc4iT/OPSPQyU8/WOGx6v1VvirJ81h0E2NHqdK82rOazAcDtdpH7r0uZWM58nA0SdHoUhKCw0N+GA4LBMXRrfHCeKZQL1427FrRwOxBonYevfAWfD8N4KarZ/zdNMM4zOkLp4yX5v1wGJi0BWtwyhxmmkS1TF7IMPV7sl/Ev28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743538794; c=relaxed/simple;
	bh=0mNlNvImcOKd5DHtnUlIzgfq4cNJky93wfgFsUjvLS8=;
	h=To:Subject:From:Message-Id:Date; b=BzM6lQX+3rw1mZYGK20HBnbTDYlnLKd1i5Bru5tLHxfmErIEtNHAb+xet5LcS0wR3LD86P98Jflda1xUsnYrBMFmwzL7MlFm7tcFigBUfSnehNWO1ps3+ABDLOijSp3vfjxXyG3Qv4jKxNs+AAwYoe2ocEq/vzTNBWaRVo1MSps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8QIufI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8QIufI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98E5C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743538793;
	bh=0mNlNvImcOKd5DHtnUlIzgfq4cNJky93wfgFsUjvLS8=;
	h=To:Subject:From:Date:From;
	b=V8QIufI4kdFMqdnj3h5yoAaxGOnrX0KUsMftBCCA742lXzLTgifF6PoI/bgjvuKS0
	 ixitN8NBCqTe5qC7aji5TWue3stP32X/k6GlKUkmUn/VbVNDH0sOhN48r6jOYkzMUb
	 KNkghJb8mOwFSGccIbby/h1oiVz5eY9lk/M1kQGgGV97P/3bos7WULSUbGZZZT70Pa
	 t0Wb9swP9OfF/IfrdJIsd2cOLMBOraygW72h2d9GSF0QgdYPWwfOPbyLJO32HcY3I1
	 gRYhzM3JI9co1diLmyTeLLo1IY0RVAuRiE/CzYQ9pVGf2AXG1TZ+WySgoYuiVn6tPG
	 j/2tB2HKhvjEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951C5C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353879360.21252.8972428941262083980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e24e4e10af43e04ad62d2adb344a2aca1437d99f4cbbf36b3c1f1e3459d1d2
Date: Tue, 01 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743538793
