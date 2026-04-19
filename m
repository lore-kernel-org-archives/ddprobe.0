Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CE02236FA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776567454; cv=none; b=RIKeHfFUnZBcDXAAwqY2sZoNBt8THZK8JqHxZ41fkTADyWem3Pkwuyk5dp1slcOL++ZRTV/wVrzAHBjAPAK2IsWwXsFdx+u9ovCB6vAy0TEhkrTAKe4FxmvGg3LWVp7P+RPbSU8wxub6i94/y/uX7u1/I6NcDnp5nYHLLqeISTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776567454; c=relaxed/simple;
	bh=k9pg18Z97vsU60Gu/MzyGLwRh7APQhfvsHMoGeAyWzk=;
	h=To:Subject:From:Message-Id:Date; b=OuMlt/gTKdkptSQalBVvKVWnk6k8aoT/qQMKs+J3Ffz2w5iVjvD5wzOuzOnirgcoheBQeCG3a7prEkHdYBokVYhBYszGpj5Sm04Z2Hy5yHXtT5UqChmGYiJVH5olu443S5TB/ojUJ8On7Yx4BYnCYl2eIRp+DgZZkjENlQNN5WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpXIwAGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpXIwAGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CBCC19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776567453;
	bh=k9pg18Z97vsU60Gu/MzyGLwRh7APQhfvsHMoGeAyWzk=;
	h=To:Subject:From:Date:From;
	b=tpXIwAGxQsd9tyx+mNSET5VgQwzgz5LBhaJwlqUVE5uKvIdGVon1LM20AERIoSkPc
	 2l/mSHCOVURvrpsSrQ/GTYKo5AXIGpKR/yo93+ZH7aPStpQk2KW941V1RKA3MZ07Ap
	 Tkkoq51sWnWEfYtNiG8+837XPcnhym/lv/VfgcoxuowhfwqxNOjct2V1fI4M3pIV9M
	 ElHXS2o6apXhO8k+nMhpJqVS/dDPrJsibiNqtBcPN3SdWNMJo7fcnh+rKZHbZwpOWU
	 6EW0w3cpuDHV5BU8H1mlRdMm4eyG5pdcfj2gvrl9pm+6QBcg00uD4r0eqAdk9IXs4f
	 +SO2dxD4C2xDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CEF99C98
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656745368.16493.11930668331893423899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a566fdff72bc1077c49ffb53e92a8a6680b4e871c81f880ca30f2f86288d413
Date: Sun, 19 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776567453
