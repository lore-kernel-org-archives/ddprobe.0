Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A48391E57
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790944234; cv=none; b=gjjxqJsZ4QzUeSLC0vXm2nn0fw+pepLM5bxCg7yf5VOqjNdH2HJ34TPGtOYXklR8hNUriNNKSTM4Lv2sN8yVlOK5XjgqUJjPdIn+Q1EHyykDIu3x5vAe8m3HiC6sZr8IDI5gDu3uBuRQWr+FLN76e4r3yQUBMY9W7YJE4ZT9fNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790944234; c=relaxed/simple;
	bh=295Kr5KhRXVgJC+FJBO74X9YKP54mKpF7Z2rwilQ9q0=;
	h=To:Subject:From:Message-Id:Date; b=APxGuM2HJHdQ2GEiYJgl0vuAmDgaYZLbmw2dWFDcZ0q5ci3Q6WqBKCOxvrpbJb/vkHq9R6nJZsmczhrU/rGZXtJ0YnoDDPukgbCnj4VFJX7zDbK9emI/8sVriqoz9gtBxGn0dZiCA7thFSunZ9BsMezMArL8VsZJz8NRzq2AOSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kaf+hUO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kaf+hUO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC629C2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790944233;
	bh=295Kr5KhRXVgJC+FJBO74X9YKP54mKpF7Z2rwilQ9q0=;
	h=To:Subject:From:Date:From;
	b=Kaf+hUO/abhMr28827un+jqg6sYWOgLZVPL1AHiAFW3o20s+fFMXccQPYLSd4UIY2
	 wwcZ2LjNoOG8T8Xzw7zWHSNQk0L8K961E1Ssyt8c2MJaJVyaVyUsAE8JXcEqvf4cd8
	 vBqfs5MznoWJT7bTDkIniRTLWM4nMPNX/eYZysO0NCcrAybN9JRg1+bKDLggf4MXcc
	 1DgHeymyyeKiK2ofO+gJkLbngf1uAINMh37sNGBWVFHCoRnVaV/pSUBrxGecqO9Dp1
	 4FRdgrCrS12CJHA8uKri9YeRkFlxCaopNduF0PgqRzqYUqnskCg5cMSI4L3VOrc3uE
	 UIryg3+QsQ74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA366CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094423368.6228.8410678323577410291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e24319b86f29b1fd89267df2fdc31c645fb2f09367ae3fc96155d9d69a51d3
Date: Fri, 02 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790944233
