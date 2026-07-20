Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4633B37F732
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784543914; cv=none; b=JPBtJyy6g28ueEUb05Vm5XNCnR3KpaBR/Ho8Q1c9lQDxKecxpAexN6NhdtWxkg89WDK7UhlBwon76fs0y/FMePX0uPj9jrWV9A4VUG36E9g3gqeEp5J+LsH0E1+WCDIJ4QbTQXQjIOqN5BXasp2fFjEaLbq0QnxNvnUj/+zhuOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784543914; c=relaxed/simple;
	bh=B3uXNDVCwr2bmP8ZM+4B2FVeNgRVbW75O/Hi9H8NFGc=;
	h=To:Subject:From:Message-Id:Date; b=Ha4azFwpUi5rvn0rPw77fmEKsYMDNpJE5YIUQj6bgkGC2N5PASuNr9htYxFLGou5yW/6gqsaGtnYVTcUsl8BgX9sSS4VuNtrKKIOi7G3cuIvsy36VZ1Ai3uNBJX0St2jpDjja5+5e03I2clfHYNBHGQYaQgmXBlliWBGP19H5WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QshGOwcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QshGOwcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE415C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784543913;
	bh=B3uXNDVCwr2bmP8ZM+4B2FVeNgRVbW75O/Hi9H8NFGc=;
	h=To:Subject:From:Date:From;
	b=QshGOwcIThjQ5ZWfq7vQIVwJjiS9VWcVBuyiNZ9ZbcdEN6r/HrhooqNxfpCqSi7Ou
	 1gCewjBmHCAOlxBZT/G0BB9NfX3vPOVm/M2z6b5X7Ri40+UqWEl2j31P5MQnkooFsQ
	 NCUO/y3UT3jsVIioYLmjeoAwYnb5HI0e4qj99ccilMjIyuz4+NaFjwcVrotPLP+CP0
	 Mf4XBwgTmsYHMG8zidSTI4i9woi3ojrAhb8ngORaRgsv2AVZZHL7tTau0go9YdKuEO
	 pGj0HarK7vANEJLxNGBRQdlxkEmyAyzC0aDv5HRMnXK35FwtLYzqqsQv7570gKGPMy
	 upIakbebejI+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC287C44527
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454391369.25031.17843095796692287678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f4a31af28404718c7ec826c67acd228ee45ca4b6a32eb72b92cc0ca92e89df
Date: Mon, 20 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784543913
