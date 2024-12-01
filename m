Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1980429CE6
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733036154; cv=none; b=LRpD2/3XbBzsbwAHGaZoFShZApHEFTww9C8QBf72r05iVMlI5CxalK6JL9PCM+VOzqGvaYYysZSKZPivx5Hji3zl/dD3AZElkn2xUW4xPS5rUjWB8ns9obKdcXDAJVjZ7m+825jXbDgJw70Ez5Igb4CwH50wDyEK/tnjK561XTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733036154; c=relaxed/simple;
	bh=47poKlhys5ORWp7YbCRE8qFf/cu0+bsqCZeQ4ESfzvU=;
	h=To:Subject:From:Message-Id:Date; b=nTsZJdz8Yi4St5k7Re6Y/5siD6Gj7E43JAncIeEulMLrMmhSudHy9epVTD+cpchDtROQZaVqZ+qHH+5yoiX0SaZANt6Toatsuk8+/7wXc3kDOJinzSGlAts+REocWhOrk69Xpr7xdwFE3bvrTvIyxZP0Fg2B3Y9pUFbvN4+bMn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sf6iNwHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sf6iNwHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B67C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733036153;
	bh=47poKlhys5ORWp7YbCRE8qFf/cu0+bsqCZeQ4ESfzvU=;
	h=To:Subject:From:Date:From;
	b=Sf6iNwHIu+nl/WPD1gFiBSr3zNWiDjJExJ/BEzedlONyZsFnHsIPWXFdSYfpapf3H
	 9XnoDAZ6PNU7QONN8BNKCqB/mBezriWObnikWDlXCY/8zVDIxtoqi7Snsp5PUJ2CrZ
	 /hSq65HQzJNJFDF0XVDVisbzFf5Uar3MHdBE2nTjWe6hwDXc4pyZ40cizgjAD8mBrA
	 CUrb5JDVkj2BF6It5qgh1mU7L1gAWku4mbD7QfrQ9WKNojYsB02fvFPa96H3HKo3Sz
	 L4P2gd0/0WBbtsvX47MFIINqjaaB5blohS5muJWmXOraao+AYRVE8GqHcylxs6Ty6h
	 GliLds7Mltk9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E5D70E0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303615359.29121.7340354254863926407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fcde4b2b504697dd4f586f46c41b87bc78ea82c819b1d69372dd2f6c3cdee25
Date: Sun, 01 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733036153
