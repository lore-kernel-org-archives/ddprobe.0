Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176C720010A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777633054; cv=none; b=rhA7QNZiA77w/6JB4ABH7oaOOHjy+5EF0mOYXdyaVGF6otwLvVzClLStKM89VrY8oIBwzp4eoL7xIIQM2FM/IApWgV4//VG5EZpZVeT56p/VzO892EJKdkIejNWqHhhzOyc8XFGpNGORXNV19LTVTD38+x2fH2S/uqs5ckDF8Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777633054; c=relaxed/simple;
	bh=wvF8G5uu/cCiN0MSdt8DTNHIutVha/dB/M34J36EwyE=;
	h=To:Subject:From:Message-Id:Date; b=uf4ndsqgrrfiXVhTRSvCqAJv2+HEAn0K6J5S5rL5FAJgOtuyo10biCkzd5zDX/ptyV2QH2/bvQGR9MfUFc7eNkbslg63x5ObcjYIsOIQ8nuHVtjVbBotkL2EDMkBjRB3pD6V5VLMBZola5eMt2Uif5D4EZujzxPo9HgIyUxct38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6ApMb4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6ApMb4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C7AC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777633053;
	bh=wvF8G5uu/cCiN0MSdt8DTNHIutVha/dB/M34J36EwyE=;
	h=To:Subject:From:Date:From;
	b=P6ApMb4lUfZzwo3lr81eM7+1g8A2phQ2oSIoMlLA/cD8ipty0W9OMDwOCz7hsMYSV
	 or05IQHas5mYukOV7mNZIGjTeAucGiGBJyf31XeYNBFUlJYVwi2xu4icvY8S30aejs
	 3RSYoZjjYgB5sSG4I6AbsB9isgCAggGnNp6Ga4tYbYR2uigoflxe9j3bn+cdDLgnrb
	 +eN09uXBiLMFv95RRuLnYWvGhQGLcX6441JQDMHqEiS4mh0fq+348DMzVVrwSpzMnH
	 BxziKgMDV2ivWhL30jD32p7GBMrgv95yh9uFt+HOAVTC37LMgxSxZg/6bGixDmHlBy
	 1Hip31pZRVX3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A999DCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763305368.6519.2960277186800238871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be3d681bf84d770b71fe8a26162968f6fdaab51f0bb348f1b5c10b3bb48ed88
Date: Fri, 01 May 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777633053
