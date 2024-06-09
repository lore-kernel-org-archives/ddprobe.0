Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504E0629
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717909643; cv=none; b=dKsvnGA85Cl5UpWRdwKF52nB5fudI1Wu5+/7g3s2XNf9v2GmNrROnw+7gZ92kxRTRrw5HkaEixRQbPXG9Zt48HwC+6r6vl68wZD4xA7O7oc3JWEKytVOPiH2w3EyG4+Qzd8IkzQBhCS5BYaGdLrleGWKXz80rseNZ4shgSabwIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717909643; c=relaxed/simple;
	bh=J7eGF79s+EjRX62gYu3BV59vicZA37JsvcIaF9UH42w=;
	h=To:Subject:From:Message-Id:Date; b=jbnw/MigWrW2IXeMJ/41PpybNqucc1FohgiM89JotC4/pE+Joc8VxcpmLtci+iNIrcd8ssjimT+FfRUwAOsn1hvxrg/QK3Lmdpb4DhWdECF9pSklLwRnHk9PH/Cw1upn5JSvn6877aI1O2weQblASJWssSFHNXyGmo56QiwXbmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moI1H/rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moI1H/rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9945C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717909642;
	bh=J7eGF79s+EjRX62gYu3BV59vicZA37JsvcIaF9UH42w=;
	h=To:Subject:From:Date:From;
	b=moI1H/rsJpEfMqvOYpQmzHb7uC0Ki5Dg0/xjvgbvQkglV0Ryl8z3vvxQ4JxXEK6RV
	 naInofdPhmBDBuzrlFd2IMJA6UVvxb17FQF303SxRebUGTc6DxbFjRyZ7zm0/gOXus
	 J5eCXSHYgo9jAJzPdXWCfMdZ6edjCCG48oVdySq2XwGgBf//B6dFmyGaSDlhXjO+tq
	 JVA9Op8d/FGuuSuqN1xSZbVm5Q8yiBlpU2ki01e7nM+IKyOWHm89siaGh+1MEhIERq
	 Ex+qcqaph1123qppcsn8kdltBh1EPRPwrv9I+p9N1/dN6RUvIjZlLRIpe6PULTWBE/
	 i4YISdCKDCh1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D30C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790964277.8340.5892338663617132011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bda9f6b06cca3633fe85f28e3a075a8f36e7e788a68c1eda9deb1db3e4f5d49
Date: Sun, 09 Jun 2024 05:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717909642
