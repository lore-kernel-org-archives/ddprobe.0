Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C21EEC0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776867454; cv=none; b=ACsx/xfGflkcKGnfR6SjehUsrTgKvn8f/DZyVg40Rsc0aUhhd9gz787gP3zgZWRzMz5p8+z2tlWh9M1D62Ul38H/nUXFkftRwlKkQTK0WAvw9mnaLAkDZNY3ybOJNIVXMgUjOqg1938/MnnsfKPHjEJzTddbAXo0s3H0OxGftlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776867454; c=relaxed/simple;
	bh=M3m+sGaQzEBV2+zplsNqYdc3sYKgGTuoURxiwV/T/C4=;
	h=To:Subject:From:Message-Id:Date; b=rCZ86CXNgVnXDhYNOcAHsmseyU6ndLXwpkjB0OLY0nJUyLQDggspNcNnaRnZK3m4NJE4E6GVLGasxY9A3+xBbt1QGwnRd8Xmj7TJg8665NySakdi4r9ToQvvIIErWazMURjD2VEv03XkMTJ9jBnIuk57bB96Ew03SFd1MKiXmo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ts/fJxCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ts/fJxCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCB8C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776867453;
	bh=M3m+sGaQzEBV2+zplsNqYdc3sYKgGTuoURxiwV/T/C4=;
	h=To:Subject:From:Date:From;
	b=Ts/fJxCfq0+Oe0+2e56p/IHtTTpvwyCdnDzOnEdDwDKmS8fUxJp/wTC8uOfsM6Zn4
	 ubQNIrGTe5rU7ic9BwCpEVQ8bedhgEQihDsa+yJlar2LqXxT3JQvK3eR21Z3qVK7zs
	 W13gXasBLgXFooAGhqO0SVgS4ebEIKG0NWAxvwfqu6VUX72IVXgeJiXeGVvjzwc/1X
	 fc0UpGOkN2Gnq7a83yqf1aVPZgdD8XHcM1Ywbx4tRkGnq5Xy5zRgQT4aB5n/iuT8qs
	 +pyZGPHjDX2mjiSZixmF6otVtGHFouCFS5IM8GAC2CYaZh0garNJ4EqqDf/SbDPcy6
	 wLgWvvA2EGsXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA167F9EDD7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686745368.8850.16768304407164358028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581d3ecbc1e0f94e0ec2540653b86559e5941836627319b782e7f6fd5c711ae8
Date: Wed, 22 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776867453
