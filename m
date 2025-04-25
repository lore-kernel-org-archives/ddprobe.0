Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DF91917FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745612995; cv=none; b=KdkwcCm3sKy31aoxNQQYohMOaa7Teeuo6PrF42I/sIUOl4jlVZdAgHaMc18j6sIVGmUaLSbg960PecqJmlxaCfHLmRucCkgSiz7QgaXCtEBa/wvoR7qI7CntEHczqbjQ8y5bvZ4CEHmBfgzVrGwbYReNTfqCy41cC6qR3+QyKds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745612995; c=relaxed/simple;
	bh=6dJhZWU6lrYtw/uBMf/eAjvbnsZe0PeGM9J2DJLs0og=;
	h=To:Subject:From:Message-Id:Date; b=Ixy3Vv55hf1mSemY7ozXqbOhqexhelp2estW/jFxhfPF3KFv6yfJE4M9Pa06J8Lhp3oKjSKy+K8BdQkboWusUys1jAXkCsK9WIgkSKV55P9i6wFEfgbgc6Eu2/OBxaE8KrpitNZD5gAx7RlukMXBUQ94Sl5rOM4FW072dH2Ms2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiAww+b5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiAww+b5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43CEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745612993;
	bh=6dJhZWU6lrYtw/uBMf/eAjvbnsZe0PeGM9J2DJLs0og=;
	h=To:Subject:From:Date:From;
	b=SiAww+b5rc1l4Z8on580pvMZwvNCuZhhIye04nzn18GB4bcG3RXSJueUdP2Od/wTW
	 ML7VfAxfWJWKV6nx5VfJJGEim1/OJSbvpTLtP4+CvZ3We+pDy7zTzl7vs8jXqvnDW7
	 qO1WjOIpDvYyR+6ZFL1tij2WKqC2LeFH24xPFSvjgcMny4ZRWyI4QnpYEICfT6V5kj
	 bSRDI9xW4GoPUUjku/6niNr36tI9EWuNWPAKDf8tVweUSneV6OCG3jwtCJmHVW2rjo
	 qBNTcDNvPmTz9+1yflWJxzRZ2Z//WZOWJzJdIXEpys/RdueoQMW6G3bzfxr3YQov4P
	 AxUsWFTJ0jQwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928D1C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561299359.12790.16439941202453453453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c794625afed28f8487074f20fe6936a3c43d660a372f73e7e0c8b40a944361f
Date: Fri, 25 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745612993
