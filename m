Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065A112D75D
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709681297; cv=none; b=OZImeo6D2rBBO1jLoYw4WobAeSXSUYF4h5gGa6yr1yx4p5YDoQe6u9NKD3oa/PWh5fuc+oBN4dmUky53gn02xTKnWIILD6DHLrtJGWQYptCPjAfHMpphS/CM67oZAryt+JfC8x70Q3BUGreqiS/sTlA9bHuY9ZjzUSpkXwTSvlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709681297; c=relaxed/simple;
	bh=NX8W9L+eOT2mqrAOn72hlTUlQdHJzoUrHSBNVM87y8I=;
	h=To:Subject:From:Message-Id:Date; b=dxwJNQE/cR3zXjlQGVfFlrIxfWJINJL7nyL69C8o/VLxwYCV+Dl86Msw6U5qNpQ6+DDwtEwEWVYu2MCrwl51Lsgyy/aZqZOLPE8fmLGv9Vzb3kkMs+HCEqc84gknHUuWC6woGwM/oz5JxFb1tn0LZXFPYR98G/oesdC6c3whf+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1dSNs/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1dSNs/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5E4C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709681296;
	bh=NX8W9L+eOT2mqrAOn72hlTUlQdHJzoUrHSBNVM87y8I=;
	h=To:Subject:From:Date:From;
	b=s1dSNs/fi986RmvrTmx/3QCx5cXPKH9HXOFj7Ed9Cu0u82xYUpJIJvuoshhDI8HR8
	 DVdzPN8Y5IFPxbgWZuEcePBvgjLi8JcaWAz/c2BFBAmKMIvFfN79mvjFkAUy6urou6
	 t7EzezkGzYErhcUIJ1YZCQUcYmr8Oc4PK0mMqJZQYr94Tg16krxNc/22XNyJY/ripQ
	 VL8NLU1ufgwRcXFigeJakwvsp6gukVBa/1uZR/7BkgKfolEOFEkg67OKmTXtIIIP/J
	 +vCK3Zh5AH9QNQHyeN4Z6PRgUKEtqUztCJ3BT2c2yB44LUmTlXPHLDySTH4bga2k61
	 wXfoFLM2aCKzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61002C54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170968129636.12093.9488418520211396765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f29dc941c9b3d5ec5526929f6ec117817b7284a05942c8993fa75a2263bfce4
Date: Tue, 05 Mar 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709681296
