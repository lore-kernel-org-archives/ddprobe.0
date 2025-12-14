Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEABE55A
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765689174; cv=none; b=YTphuHQ+6oyWOh/yv2yYUjbsdcxJubxcHoebsloTmCwO7DZLnr6kAhPMVcKDCCLFe1DdPsPaH+lGokVFQSUUAzNQuYdq/1yrTKiTP2+guh4HNQFpiv8/frWpsPAmTFhSi3WA2ZYjwmLqFX1XfGasizMJL22F2DyRIunOZm2T0yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765689174; c=relaxed/simple;
	bh=WaJkj9WN1sVwQ01zCvdL1VdEoAyZtcKtbD2zHK6px2s=;
	h=To:Subject:From:Message-Id:Date; b=ORpZmtJxKXSpkgbJ+DJPm+mrz318G1sjJCSRE8nKw3+Tyd9GPwBLflfRuwYidnbsHh8pmLeyR/8LQxuVAISQjPT0H/RLyXTnSG4qG1FBezuvY8p8d+no2pUsk5SfQuOuLov1hoEuXogUcujQF2zRikGc785cJSsLSgqyTwcb8xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dycAvys4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dycAvys4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99B6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765689173;
	bh=WaJkj9WN1sVwQ01zCvdL1VdEoAyZtcKtbD2zHK6px2s=;
	h=To:Subject:From:Date:From;
	b=dycAvys43ANda90AkHNkYR9bnkpww9jmwSJSNgaKJnPvg30EBDlAG9rmqnUr8nh2d
	 dNRgPN/gZ/2+DHTe8HrE9by6aZCa1qnK3KRY20pt5jODSbS72sd6WwiqpNmpgPvRfL
	 6XrFArlhx4ElJzFW0yFBHUYu6RwjPq7nkrWW3Q4xFlhRWtt8FDeXgTWEJW0ggY2/YW
	 Y20hwuuI1svS7CNPXfz0G02uFLUJ2H5AyRKsjamgT8hTjiGnteH3lmyiKrSj9ZbUUy
	 ThpYr8rCkKAfgcioN6pECngN7gUHBzh1ZrQiZADd7qyZHQaUvJ8XkBvAG/VeaBOxjn
	 DyXnhpTJNrJDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CE6CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568917358.15523.3049649917352468918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ec3376ca8b5bbbec149da25d879873dfba58f911f04e0e9569e9e14bca4862
Date: Sun, 14 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765689173
