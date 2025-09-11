Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2022A1E47CA
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757554794; cv=none; b=D+06WgLrwxO5uzYV61cvFATDyzddG1ZKIOteWD9mxeHdk0AKHHy0TXXkDbSVyu+lW5Jmrqw2gEi1hDEMz9pIrVMONEe289VS0n0bAh81YeKE++5j+ZTa9s0YFboWuG9kyW70Krq7dPdTLPkkt6I0B4SYqvWVq5Sh6w8V3soXhnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757554794; c=relaxed/simple;
	bh=Bt5jPJnwInl8gVC4DafH9qo6+ZTpnHK10S3MGBhcGDc=;
	h=To:Subject:From:Message-Id:Date; b=psgcy7W1N8xT3Xa90vUutV5UDQYaODaDg8K2ZgVvhNPTo5+0WXmt8r+82QzEKf+0D5jRNsebuAjNY8zx8biOa+S/r4m1QuKgicokPxFww6XhTRSzgv6kSDeTASLC2nFZu112cvGcZzSgUgbeTTKUmdAjpZfVWAzXGi6mbxNxKYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPJAIZ8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPJAIZ8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4807C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757554793;
	bh=Bt5jPJnwInl8gVC4DafH9qo6+ZTpnHK10S3MGBhcGDc=;
	h=To:Subject:From:Date:From;
	b=JPJAIZ8+ynXhDTCf4TaUuYf/yZJ7z+W+MJSNamlw5SfzSC4awMn4tIf3bLPWk4bQN
	 1y8/UTzxjxru5CrMLBJhDfizyifxypdWr4dDhEBotr8t+9mSSfne1+D6AJZ/6lQEm8
	 ofjK+32cGvy8C3BvE5HuwwR/fO+l5P3bEB+isCDTUgBhoXoNToTpTVwYMzAvk9bjYc
	 BPYxO2YfFd/lpgHx5WqwChaWBFUSTgK6ATf7e12A7OV5qQS2ZWzDE30++JRdWvMJmu
	 p1v5fAA2a2UfwjIfkQfu6vtoiwxp9klYg5OguVkokvJiOVGSE2Rqm8WuzqQ8BolRcI
	 DvkZO+DJ0VoRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6CCA101F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755479358.18196.174495562418171497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f8a5809980c5f2fedd7797c88d4b87a966e885c49e325f7ad30ab92468d375
Date: Thu, 11 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757554793
