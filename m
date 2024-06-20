Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6B82BAE2
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718878223; cv=none; b=s8aJpzzI654RROINlLE2lASKWSxQTIS88BZDk3nyz9LkLeO6HPXLyC9Ry7SYRI8qu2eAZhSBrYgT0SvLIg1J03XZzBzBQqtFYMfnsKA9kcTpVJp8bnho0aO05izsnrbypClFm7XL6uifKDBZ64txVxHgD9dzJ3fDHefuF3uG8Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718878223; c=relaxed/simple;
	bh=AcArRssUCGSKCiB2RpdUfixGBrO5tKOfQaDpoy6INzI=;
	h=To:Subject:From:Message-Id:Date; b=av1BzUx4PmagbKJhtIsTSYhYGOanWpkH3GMVOrztNtQO1u7Xe5fXAOKuuLRLSywNtkhwDzjqCkmLtKzRh3xLQWg7AYlwBv7vqZzmcOCegsyNcu6H95BB6ecigZsgUG5vcZmz7fhOOi0gCWJssjwockKMlWbCFhcBDAP4i9+HsRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oebK3bus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oebK3bus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E35D6C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718878222;
	bh=AcArRssUCGSKCiB2RpdUfixGBrO5tKOfQaDpoy6INzI=;
	h=To:Subject:From:Date:From;
	b=oebK3busN2sH+g+gSqSuvj62lmqAvcSYhylQaguQvxRfh1m3njO8Teu5gdgvUPbMJ
	 /hBXvKQGLL3Ds1ReJ1fLxZ4Iw/6ubroWKmN2PDdPwpdvo6IGBdme3EQW6XI2xsjc3I
	 AxBK63Tc7clT5Ha7bL6pAEHqHHSp2ftoHAyXC85aD1ZJnDv82i3fC+sD4mx2Sy0/aD
	 ju9d+FALr3ww6bXAsaePSqQ1gx/PFCfU/IQCuCo0VFTuJRDWatPpC6e1MNmvKsEerz
	 wn55y798DLnqeyOWUcEglwZxLNP7bjlXNOaZ4CyEWiB52ebW0BxYT9w8GbkRR6AULB
	 gojn+1FZkTD+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD22C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887822280.16567.11487893657554613500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c99b81938d921bfc6d04e9124b10208988a0168511e43a27a82ca2a6e6e1f3
Date: Thu, 20 Jun 2024 10:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718878222
