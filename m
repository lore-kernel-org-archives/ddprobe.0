Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1DC208D0
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775340334; cv=none; b=SBz3TYo0J0Mpy0++ga70p6m+yCVh9lapXCgiW9pej1xxX55jz/L76HQq1HwNDK2fLx2hDYIxHgt3MIHKkVNPR96o6AKzrG4JXNet6KPnWzgL+8x0Uk7rSU3jCZBsO1xcvsWEN0YvoKuAE0WpMNdokDu6gvjUpSygARIfJ0O8BJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775340334; c=relaxed/simple;
	bh=w3/pwA2xOCf5c8TqRPyaM/3MGsCr6GInfzS2MN4eENU=;
	h=To:Subject:From:Message-Id:Date; b=fsESpfxR7KM5KpprUtBoImJd4TpENMltnsdy48gWVV1vsAmrqfRRLDEnG63vPzFqfnPoK/TQ4YkWottyVmSubquxxZuMzgmT5jZj9RqBsQGY+iX8KqHD5PKLCrXDzCe1n6xTuXmnz5/CjZUPmay1HxxGi3B7S3qNDTjNigNxN/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEliOzOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEliOzOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC696C2BC9E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775340333;
	bh=w3/pwA2xOCf5c8TqRPyaM/3MGsCr6GInfzS2MN4eENU=;
	h=To:Subject:From:Date:From;
	b=uEliOzOwS+gzRTgmIAkXeTFRjalkIWKAQaQyHln8U99D5MPkDMqEqQYCiU0Z4ps5K
	 UxkxEMdvmefOEH0nKchnsK856Pv9+BNTczJWbuAgba4u9G49khbS6KhAuahBh8cwSY
	 uOSPHkGh4dKdv6sSSfxvGICnHusE6D0fx4ZcedmeF6HgXoslzmhVKit8tb6Z/WmFfq
	 T+JHRS8k5ko19sGU/G6St/zchvU9FzId0PI6Z8MRNm7pSdPdvOnfZne3t9b0o8D3pz
	 PC5rb9vMF6FFm208DFUhs87TEfd4kRywwm2h1u0Qax6k3jYAAaqyP5D4Ooe91jKS1Z
	 UM4+RKqyvUJqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB835E63FF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534033369.19836.3921293498571294370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098005d51647ead991c880dc7800fec935c975cb82ccedcc94d09f908d19eaf7
Date: Sat, 04 Apr 2026 22:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775340333
