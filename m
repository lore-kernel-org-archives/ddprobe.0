Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF42D73AA
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759294795; cv=none; b=cj2csGxAUmUfj66uTsGPj0x/BMMlrEavhXBD4YBzdBHWPin3ZtYTlXps3ZCNEvlBo7qwDwyUPTDZJGJk4wO5nShH1mWaIXZc0vYEZYxkzeFz6vaCFIVR2aV0GUw59YFUMVWCtjnWLa3SVm9pYYh2dboFfIyLITEPZVVEjhDTvJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759294795; c=relaxed/simple;
	bh=ieS7d3N7xZWxDDV7AcWb3inv8xgCOac6KN/C2oQ6gDg=;
	h=To:Subject:From:Message-Id:Date; b=Rxeh6vWrtDXp+VhvuqUBvvHwTK4MotdxUXhEDu4WN2oA6IYBAlj/Pd0eDdNGwsJQGQofdi3mtmPZ79PUWmjAXf+YVCxSVQd7Mpu/jfx3E0e9YA4wGaFQ2leFVOxiEl2HtDa2fxZyW4CF4ooAY/G7LxwgGdEsFEldK/BbRui8Iwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeNi64Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeNi64Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0B5C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759294793;
	bh=ieS7d3N7xZWxDDV7AcWb3inv8xgCOac6KN/C2oQ6gDg=;
	h=To:Subject:From:Date:From;
	b=TeNi64Ub61jlRYBXQW20ebkDzxralr4aosP2DhU31+NZwbuoeJDU2w7KCcA3tLBs5
	 uZ20YdlNJOOZLI8GxLDF0ROIiir7XPi9T//WcShHNDvBDvpJIosyRJUE5Rq0KqKQmi
	 q5foux/aI++OloWEX5NLsGmW5oCCmITAYvPDPR6U6oShhRYYp1v3fMYnA4HLpI3SCJ
	 +rzo/XYTIju3DOkcws/YX1qbHyRLcsCxMc6gYxrILU4ZKoP/oENCTg/27urTyqmORK
	 LTt1kTiVG5tw4jBZl6G7M+C0B/Y7N7laEWiPQxTb4f+98XinNDCnOPXHUcK0D4U9wn
	 LQX5b/NT4wyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0CCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929479358.14258.14870115702619805698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8234e38812f09d9e4090006ee916d7655c56b1b4666ab7c19e8ac3f3194efa0a
Date: Wed, 01 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759294793
