Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511841EA7DB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784423314; cv=none; b=ufrGA23da1lrERbyxYrqsVos856wjFrCd9PDOzewJ8+5bLzxfsQTbVIuMXXS25t9Ugsana6zy50OoYj4sJwhhLW5s50UmQrufS2AWpuUn0mfJOjOC8anmPqR/PV1jj1TdAplzmSKw4ERkzDz2+B7IntDV+wtQ9RIiUHzRkZcUXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784423314; c=relaxed/simple;
	bh=ZVVhkIfqb15EVHnY5jfPKAnURdYyt1IRItm3gPpsb8k=;
	h=To:Subject:From:Message-Id:Date; b=lhudMOArhsqtVfPqCI/eep6mQzjUSAEialzaU2PX4h1G2Jj7FB9nMCgbFFRk6mbEdPElPh12pyIt/dQeqysfmvAMSjWXfTSykFosg9XHWBl+lethiEi345qXoh/+nurMnIz/0pHDKHU4z9Ald4i8YGn6mksyiWExxwBPPZ/Ykwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGAbtYj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGAbtYj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46A3C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784423313;
	bh=ZVVhkIfqb15EVHnY5jfPKAnURdYyt1IRItm3gPpsb8k=;
	h=To:Subject:From:Date:From;
	b=PGAbtYj5ToWEs+cDQymPaeEAXG8ztv7c1K59r2eR7R6B38QIi/FDs1k7FvCPc7Gl4
	 wEWQdiaN+CPk7kmrawblG9Y2Sg3w4NBTudnd0Pyk+joGjl/GSKXU1e2BnfJNTWUQku
	 OYJSzRPTsUHlMVGF0XtRRUldlDg2ii1ALIgeSGxXbPE6L8FV6zC6n9RSiLDLch5LUU
	 B8hhS7qkfwc5NHcCHcOKZA5WABx6GxB1rTdz6BPPzzTzY/cI0E6WfX/MzXoCChWKQY
	 kOVzEt5URM5v4KsGcJPXs65PrgtSgWv7KegxAPLlk3C9G/bX9Y/F+5yPMvoKuqzJWT
	 lxMExB2TycLXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1C1C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442331368.4356.12405587077879231871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba37d6a47b73130bbb96d49d7e5e54b10eda9af13662d23418077e7277528c87
Date: Sun, 19 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784423313
