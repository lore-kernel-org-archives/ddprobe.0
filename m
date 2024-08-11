Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192A725774
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723368954; cv=none; b=admVdlEHYG5D86imCxjHqqTPohbS2WXw2+NFIFyVExSdTTg8ATljQ2OqS/pGiLQAJblAKYzIcPFUVXZ7hSfHPe5+hGHRK0oipTXsLdizlSLuXqyYszoYciuRQARnYZOp6mPvrI+bDgdmHBPjDYCXI/gaQzm7ux1mRkaCQ+8f8LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723368954; c=relaxed/simple;
	bh=HWIW539lLnMjj2fnB6yg6B9DuS5JFFzYyOxvm6N5Y6U=;
	h=To:Subject:From:Message-Id:Date; b=XsNbYAUJwCpcr2R+ZDP7G1v5O6cUQffuifq4GdLeiVM4icvA9FDSdbWfdM6+DC2t5EsumffMEPnkJwP/OCK2jsOOfFK31WDmk2FJQIXB+64eqMfoy03fPNy7WlYF5DutXI6ry9sO0FzErgk7+RjDt1JjPU27vhaTGQY6j+UszPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBZakdf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBZakdf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6D4C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723368953;
	bh=HWIW539lLnMjj2fnB6yg6B9DuS5JFFzYyOxvm6N5Y6U=;
	h=To:Subject:From:Date:From;
	b=tBZakdf9ms4W18OKBhkb04rcj7X7v1MgEtMAmu0fVgihc+/s+xco6kuSy45uKCjWz
	 OheozD5GtNG79Qf8WDmTI+X05pyv7zjrFYP+YdPV6HfVyXv5l/ewsDDa1tJo9xhPYW
	 MjpbXyD1cNFbAAhTE1euuMtUF6Cv19lGhzT6fBkZqGqiTK3Mw95Z8tDgsTRdL8aK7X
	 EkzIJSG6ZG3Cuwq6Q5aDI74M6VX4t9W5obSUz8CfrzvLlN/GubwC1wmwLlyF0utK6h
	 onF3s4rGBCgCetU1ihLK2ntvBR9Ij7QiPvQo30f0g6vh/vl4/+fgGltTeh8zHOji+2
	 J+W1m1aCK1a8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D6C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172336895358.15514.11755283638796484094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43b1ba7ccffed3d6f93deddc0ec0d4fc9e54a12bc48c47df4a76e49111c2ffc
Date: Sun, 11 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723368953
