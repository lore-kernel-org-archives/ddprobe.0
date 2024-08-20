Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA1A17FE
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724120754; cv=none; b=VIG5O+J42vWsnrpOKGJ26jqi7vpiOk32g4FcaQGwkmcZqLDXjCftY19L3K4rD2PapFR4uhy0KkgA7jhi5hey7YgeP9kUdjx+d3skcbtbVTUo0RLSTP3udNDd3eoWZgYVku2eNyzdj880N+jhoDFsG+dyYZcXsItCU4PZW+TtwaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724120754; c=relaxed/simple;
	bh=Bin21rLo3+63yczh58Q8/HTskmWNUqwIYmkU3T9JLlU=;
	h=To:Subject:From:Message-Id:Date; b=ThQIZpIgm8/Wh/2Cya0dGH4Urbbmz77cjRafIA9WKLO/gQUTyPxN0c4/fqQfkm1GNzv7SPFAoQKLLWQkpmieOkg2sHqNLf0GaGswhpkMIl0kDPGWI0CFAbGvqgLvD9gV0lS2Cl5dw9l2CONlBBf3FWb6m+4el9udNhTVCqvx3C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIGHGgku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIGHGgku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE095C32782
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724120753;
	bh=Bin21rLo3+63yczh58Q8/HTskmWNUqwIYmkU3T9JLlU=;
	h=To:Subject:From:Date:From;
	b=WIGHGgkuUrCBA6HXRKSDiJ1AQEF6kBFMioPVQHGbRTSqdn/x5veSjrcKAV88Z5X5r
	 b8EmGq24uyFVBovkAUjkZQc1XQdWQhz+oQqexylzaM6RPM0QR5ubqyYWdh1dII8ypq
	 NYu/ici5/cPRPH3BtAwd/wK23TnDtryx9u0dojcmAcxcOVQmkDaBs9UNOEhhiMwRUs
	 I7TVqDcIxMnlYMhZbe0KSaj5qewB8EFNKoMDYoB2HkEf1CVt/woeXaKRYk1t5D2n70
	 IFt/bTkcEg3+giUPMkQlziQWClJXVkMyzrGTar+ZJxhFXXK9827sidvQnsjsqba2Fb
	 s2R4RguumZR0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6D9C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172412075361.2772.4847680839169297374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b850a3834d9df28a22dda0f9d918c26b942fd3ffd3cfda952b104545293fd0da
Date: Tue, 20 Aug 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724120753
