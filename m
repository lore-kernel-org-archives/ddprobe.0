Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0CA2C032C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774160094; cv=none; b=FjmR+xnnHTVgg1HoTYOFynnhg8RMnATd3mvOYx48kgAzBC9I91+5VYDaTtNcjgtmdiVWDGSkSNmrXxHMHp7Z8zwlAhzgAvPOOe83meiRKTZSbow7wqxt5zYGbYd570SGWm1+SmZdA1CqPHkPnB4ImOEBYLgmltAowgPvZnMOmMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774160094; c=relaxed/simple;
	bh=pCIyZvLijli1hVOcE7krrWNfD1MFvEI2zTm9gDQ0SeE=;
	h=To:Subject:From:Message-Id:Date; b=WL3AHtXjsmIPXkfU5xPKFr4dfpPUMo7tw7MWtztKOOzmkIVF/YXlk6SW8ARkEXRyLoA0ucbDKgufHzYXqRKT5Vtv7D0HfyPIuRvOxKYpEUo9v8TK3o8Hz0I3Tvftm5XKqDEydgrvk4Ieg7Ap1r+3XRkpc3bfSyfbRFAfEWFLwvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccA6sCT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccA6sCT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FE3C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774160093;
	bh=pCIyZvLijli1hVOcE7krrWNfD1MFvEI2zTm9gDQ0SeE=;
	h=To:Subject:From:Date:From;
	b=ccA6sCT2WVJxGLPJq3o28TXnDlmL4/WNve8hEZVuI8phsHmtwiVAUnJhfGmtu60L4
	 rRxC+tc9kftkpSRVRuYIXEszbPV1IH5jEiG/IX5fWadvI8JZg3tFyiwTBL6qUznmi5
	 U1c7c6oZT3NIHfz5YCXU56vgyAZADhfI7lGvptzEJVhLPJvUvSXFVQSjxjeJ43weDd
	 LX+LEpoPGj/vrnW7xesqpnn26s8IfYCBkNgXIOwRHW49lgmn6WnI0g/sWEMQ7XTjTG
	 ha+WhPAWQszLOAvD5v92iAyfJkpWDSjAgiiHPmyEAHLZ2/sdAk6+OyEtK44JlcJkGd
	 Bt2oA5lPJiL7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BABFC72AC
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416009357.27922.2210645582477345472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775ce3f437bef27d73d4d63a90e64a7fb1701214dfa4e926503c6651066b1ab0
Date: Sun, 22 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774160093
