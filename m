Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0651A2777F3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771560294; cv=none; b=myCDcux/L5TAXJ26CLArbWzA2ZsMbj3wBU7ijgHD5HlQh/x42urJkNCX5GvuWSTCFVFW1EJcCTHcqjqnHxEff6YNxW04A08LQW1MqSoeOz6z5yTRLqHStHg2alzJptWunlBy/Z+vqcd020a/ZtPwU3sotnW4NM85aHJrceHwIvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771560294; c=relaxed/simple;
	bh=krK942L1gInJ4FKL/2UqBFGJIL9sP/RvGGZmS12dyXo=;
	h=To:Subject:From:Message-Id:Date; b=FUfGv06ZpX8uHwENA669A4ABVLIuGCAcrzWtbu/gfYWRboAL+/4sXbYF1XZX3w5bR+Mpd+cHR83bc1kOtfpw26K8XJ0pmWljRQMzqzeRZqsLpURLMRJWu3RSVOWUDYF9T4iHsD7FQUb/u9D+LtX1NUpLLFNqaD9vrMNsJDNkiFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kc0a5kdl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kc0a5kdl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C94C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771560293;
	bh=krK942L1gInJ4FKL/2UqBFGJIL9sP/RvGGZmS12dyXo=;
	h=To:Subject:From:Date:From;
	b=kc0a5kdl9T4hEK2pbUjx0MMb+eHh+32umaPORVpmbaxkGYDooPvYHt0rNWvgzPJvU
	 3ton10gc0daWhiXIsWHAtG/8LUhTvTXWfB13+SkDTknKDnqSrtC+FzWY9e90rolCz5
	 n4Q/ZMTVbD6wtYrtrIn6BK5dWt/FvOXgQ5TtsOz3owkohjHiKszi9sV9me1RmYCtj7
	 TScIBEZlyii9b/GYSAMfmcmmq9nkt55JEC2mRA7KZJYS2jthJ9SRbCWVWrEJHhXsZM
	 Y+1KZFTOoCW4FhAyMU3ns0R0OLnBeAyJroYZfhw1NcXXe25Q7CFuFnR5fVGjfkKiq/
	 7/DBQZYdDx6Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934D5C531F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156029359.9099.2224765228941778651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4d54b9ff5f6137a53c347e4c01d04fc9dd27ce695db01a81765cc6126e5aba
Date: Fri, 20 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771560293
