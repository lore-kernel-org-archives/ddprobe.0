Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B1324111D
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752649195; cv=none; b=cd+R4hLgD5thyInMKQTTpTMCRhVGkHnnqYuPKwKtvNJVCHrOydM4QGr2+AY9f3J8nF6092mE+SHEVqoSTEqFyri7/pzpEAGlA7MMhcKf2w8054TROsm1SzQhBCO/brCR4HFFmieY7R/xg6pwIiAg+zeO3MrLg83gbMKbhdEyYaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752649195; c=relaxed/simple;
	bh=F6J0jtBly+f7pXqRVOdG1aeRMYn+KLn4aMmxM9s+Rbg=;
	h=To:Subject:From:Message-Id:Date; b=ULwSsKURbzC8rQMN/SvqAdysO1IYeDbeRrw3+DxAMOJcmGNbZ+Na5Zzcbvfi2P7Fyz7hkzzJtmouhY/TuFFrdUnocTG24zZwyv5RnKYoUHtaj4qalVpBvxnK9Smb+EHtcX1jrdXjok+Z9PXdGqzz836hrT6YtTMQGTLZqqHwkJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtvpbNaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtvpbNaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A516EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752649193;
	bh=F6J0jtBly+f7pXqRVOdG1aeRMYn+KLn4aMmxM9s+Rbg=;
	h=To:Subject:From:Date:From;
	b=WtvpbNaCsrVNj3h5WiohYo1uuXDgu05TXy37w/IBfj6oK1ATx08ZJkI36PdCHFo4f
	 nu9Z0i+RBacsNvZxC2OE2mf2LmiDN5Uj10b+CHItSooMXBEsqMCBsQatAAybqgqncx
	 AJIiG0E6jCNaY9tjp6MVvRBjrj3nzN5JTyNpN2gZzmn6/64bkUDMCFfFbU1qJQoG54
	 kl8ZAdSGleiCg0ANd4JtsbdF7ZBNjphK5L/7pe6gnTTicUkLSBpmUFFXSIqZEP0l6M
	 j8JvwPNO1N3SdTydIp2RijTRMPXvcHWQewQF/VbOmPr73H3DYSw17080SgIlqD/1XZ
	 IPS52FM2LGnLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981A7C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264919360.15403.16754979316419608082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7967ce71a15dee9a9c79695568571ab872c8e03f5f5e7da8deabb582a1b378e6
Date: Wed, 16 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752649193
