Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34BA350A1A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764870173; cv=none; b=hAwS7DSCisH+L7AXXk10cGKlaHougoZ4P8EgQvu79X4OThEQdkcG5fCLqc1EQ9Q/jUaaT0mZEYIra9sAukRjM+PHUj8uUKjAquo3gH4Lb49/IUYQx0HEYpJzDyo8PpMi15ZWtQiOyvXv1C8KqSM6Tf8I2wGW2wzWagUTQTd8knY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764870173; c=relaxed/simple;
	bh=9nRWuNEIfyrlt1DUIQSYQ7/KKQu7rThBaCmvxSzBaUc=;
	h=To:Subject:From:Message-Id:Date; b=ElcYMsnRnZ0xtNujVxNJ1Kn4dUXydgR+BrXheo3cirV4HKLvZ5mHOZAfLXmAjvHImfmb/c96lXCtdS4EZD4UNLZbjSoGK7mPXx7ICi7G2tHUiYJAACmAPy7D96upI5EYqrOeyODFlvEimpa+Lo8dp7CvmfB0/OjUIWjAfjs3AKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0OrIEFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0OrIEFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A93C116D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764870173;
	bh=9nRWuNEIfyrlt1DUIQSYQ7/KKQu7rThBaCmvxSzBaUc=;
	h=To:Subject:From:Date:From;
	b=u0OrIEFmYAuvWchqTD1NSRNNdhYnhSWx8wRyCbKHPmYEz0uEmtoxCl882NLsA61Nh
	 HXn8CSLdhkE9fgAazLMnYUeMuDojftDEHMsNdpQfV4i1G/xhMUeOZ0oCEF+O0ofKkm
	 X9EFLG6Js8D46pisrWLR6HqhSxFSaWxFoP9nIlZjJy5B9ZhpfpdliVS8drf8cNGX9h
	 zE1luFGu6H9+E2xYYLIDfwNBnMOqas7ehKaBmu/5eWF7Ww1hjeU3eLfCKHdaI+zFhR
	 SQdSuByOfxSJYLfgpaSQBJ0+F4K3sZAGxDZ6JJ/WiTwbmD0LRktepuWC0qIRmaFz2m
	 BhdzyKqcXsvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AF6D2444B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487017360.23593.13997375290726643659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5990a1d5f1f204c35f35bdd8b24f6b3370331f7e53b2778bcd00e3d5013aba4
Date: Thu, 04 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764870173
