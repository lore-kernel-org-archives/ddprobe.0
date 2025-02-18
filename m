Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CD126F44E
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739897935; cv=none; b=ObBzDmnt9cuB4JOCXCIFdWLoN+fkVV1kT0vfiliJdXSWMCDEIylCB2BmTUp04TpJYHKmXHt5Fs0qg0eOf+FmbK+DAbPuUQd6jfkjC+RwsZ2/6iDVc//Fuex8xM/g16ac1zzlHzCL+WOEZmLirXPcDDdOkiNYNDVhtAyGgNfT1hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739897935; c=relaxed/simple;
	bh=goc6fUb4LHuhTjzOnZCdUmyLGBJTXrfOHdcVLuRh6mQ=;
	h=To:Subject:From:Message-Id:Date; b=kGvB5mv/Wd5gOFgDwvl2OuVmGd6pZnWkPRfJLXAJsOp2aALZNCWXvTjgOEV2dz7Wtkr8XZzjdqeLbe9AyWJSMHUTfkDWLKp3Fhkto3Xfo2gafVy6c8R3XJau04ZTIWzb3o6DQ1DOXmD7TVC/sm+Y3dg4FHTjO1iQPZ4vjWQi9F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m81JdhP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m81JdhP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9306C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739897933;
	bh=goc6fUb4LHuhTjzOnZCdUmyLGBJTXrfOHdcVLuRh6mQ=;
	h=To:Subject:From:Date:From;
	b=m81JdhP/3r99G8LB5Io7q6O6jU3Hs/bM2uPKamiYA9cDur0+x+GP9MAndOTsTcoQ3
	 e3H3G5FAfU1oFmeBk+TyegdoZgrgEm/B/d/I3gqGE+Uk/hXJnRsXr1nU+tA58iClRj
	 oyZsbLLc80xa+IpTmQed8mLKPYb9W/cyGmnw04SoZvzLdFRvb8R3rEEy4A7Dzb5HxG
	 WLwscIBpc80/ulYQJ9LlhiHds5V9VGWIrYW6VA8Rk4BkyCZvRTlTrqAG9aVoH+UuB3
	 jwW2xrAZjZvd+Oh3XAc0D/O2sZ8dZNnEKUM5CAeQ75CreklQ2qw79/MBBu9eLOnU7u
	 gA/X42trrehSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B3BC021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173989793359.18006.16790510162216657353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1aa98a9c3f00e5a64e1f8297776ec747d1d64ad433f1c7bbcbf8399e4b51370
Date: Tue, 18 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739897933
