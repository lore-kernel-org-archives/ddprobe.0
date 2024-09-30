Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C99F189B98
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727692554; cv=none; b=FYK36Do3ambVYIliFCDnXsEOFXhU6NhyBaXjxShjRcKPKTBJYSVft9TmXaIUN305hAyMTP2Dcj9Zd+i+dqG8dAzIJkLH0hBf8M8zd25mccqz8t9Yp7EU/FhQHH/yd06g150WgaacC2dWYVMRIw3G2m4AxOXDf8//Nr4rGsevqJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727692554; c=relaxed/simple;
	bh=3usevUWbbDUrtltduYXwhl74aeSYW5Hou0uN7TjT7mw=;
	h=To:Subject:From:Message-Id:Date; b=U0lJSjxUJpetCBnH0uNYfBhvd8PY4WOcWnC5vy4cihA6LlFyIWWVa6cAOZ5S5ObZ2ebtdos1vLKavkPGPox4hkbXiKfGlJr6+cv48prL+29deIV7Bg1PQ796tgiK+600Un1KzbGiw/xjJdlfiLvIiCoOCt8dfr6keMBjAgeJryw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csZNru4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csZNru4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE313C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727692553;
	bh=3usevUWbbDUrtltduYXwhl74aeSYW5Hou0uN7TjT7mw=;
	h=To:Subject:From:Date:From;
	b=csZNru4wCLOZWh1Etu/qmAF+1XAwsS38bIPDi+cpbpl1HERo8d0HLV5o81bOG9c49
	 A6oXCSMfXcaybi5k3DDm4Nk5XNgtUPgDSWzJ9bjAjkTMhLSBdjna7Y8EXxRPLg/K54
	 9HcrU+1iFtXNSZdae3yy+dYxiufLSX+jnFnRecFOKDIbn/N6T8hvb2wwgwPBkD2obX
	 B9cgkCatbcmVQkotCAs6t7XnmE4Srw2+iPMTKJWLfk+NR5FUgV875x9cPovVRn1tVS
	 ZAZGHlubsZqCthIy6dXV6Lx7hKuvZdWD50TisLMdnb1TY0dACOLre5yl/hWdeqBOc2
	 lEiP8vwhM4qww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97342CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769255360.22098.16463616301461189108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064d74ca0dc40091d74788a74037e9e079cddbe4b6a4ee8c9d4b0ffab9ca6d57
Date: Mon, 30 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727692553
