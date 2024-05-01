Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472D912DD8E
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714567943; cv=none; b=qZ8YwL2UVUYLw0vlLgWnGNCh+5P29OQYiiXVR1HUmooFR0Y9lyeaqffZx/KoezZDOakHFxJv8hRQhfj8kNzhpyASHdUa0LPRsSyrcbUYMdfSb8I4oPliFH5IPnGcH2uFjsODHXVlt3rd6SVBBUXPd6fCfm3BegNJmiTJBCo0iVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714567943; c=relaxed/simple;
	bh=5HHovprAP07k75yilX48yhzsH1unkpAJXMjBTRyPWCI=;
	h=To:Subject:From:Message-Id:Date; b=nzlFhA5i6J/EwuOZwBoPrcZ7xroXurZwIKALOL/yxY6ZzKNm/taF0+7XrGI0jeAwB4s7XHjevdda47XNNNYGGMI7DyHX/rj7h1vbTvbTY5lYyniHG9U5aL+ZUbvr2u7NmhXhTKm453iWdg7YhCoXIlzHUwGis5RDRjYKsnB/nF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFa915SL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFa915SL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51F6C4AF14
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714567942;
	bh=5HHovprAP07k75yilX48yhzsH1unkpAJXMjBTRyPWCI=;
	h=To:Subject:From:Date:From;
	b=LFa915SLDMVknYB+OotRD4tS7WxHiUFi1/xOlk46y1Ux6/n8d6wtFxdF9Mc6BMGIi
	 UjgaXWWJYSv00bZyyaKTrjcd3mEmeAZrBELAwvHULsJQV4THndFcVfXyWYWSkKTYx2
	 Kqqdqj1YxKEv2XwY3s5THdAm0TXRvNWnfOa2c30N6YrfDXKzHMUDCm6j6jJt9rmX21
	 68Ehb9j/w/3DzCLau3rPBuMPHZTz3g64/WgbOz95Je1ph9r9LIo9sfDNO3LvvDjRuB
	 kUbMGEkQLJNI8aC6YBJ446NN5T0lMpczyE/ZineonmLVRneCNUT84hf8yIoCqjKKsb
	 UwEQ+nDepMnaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9CBC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171456794277.17596.2693089292871626055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9915b7cb858a9506a62541d9128a902ee4d7035fdb657daaf4c874b4c7c92a
Date: Wed, 01 May 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714567942
