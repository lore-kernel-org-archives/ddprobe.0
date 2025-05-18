Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4699C1E3DE8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747600194; cv=none; b=OdydBlv7zM9YnFm4W0aYGJHbjH8LxudesPmfI2RtKGqjaJCNoUcWxdmeK+nBfrC3oBD9F8gAKdypwqHwQ+1chbf20RtJUt76bTAAMXRs+0dMNGKoZ0mLc5KdlmB909Ao4JU2YuTil7Pay+WZY7loMuu252+7wYggb/jCW59zNVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747600194; c=relaxed/simple;
	bh=Td8T6rDzdVcQdUWABxegqNb0SYi2MKtIP2+ecavMyqw=;
	h=To:Subject:From:Message-Id:Date; b=plOdh9rjFdk47hnwoxXIYvHdu6yqVIhKHQjgxrkm7/Iz9WOgYXfB1Bloq2RXrtquvRd02ZOeR79IeHjBPgrcF1QebOxKVSPwD16LGbdYTlcrlfgWvscIJFFjL5VN0eKEQV/2OwGxqmFLmuqnyjgmg1mSFOVX0nuXI0+AagnzGag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8Z+5nS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8Z+5nS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747600193;
	bh=Td8T6rDzdVcQdUWABxegqNb0SYi2MKtIP2+ecavMyqw=;
	h=To:Subject:From:Date:From;
	b=r8Z+5nS9Db4Fq70kUuoUh7x2fQIAYt1UKy+WSrO2lgWiFy6TZtqBSA+F2P6TXeYGq
	 ofvMYxcGKhoJVZsf9WEf85AsBJqOAPjmQ1fGjg/6y48cUytD0gSF21Qsp2MG6G5B8O
	 gy3PLNGS0hVxP3B0a2gd1kfXNb8Xm3bB6nBuqlYUHnLas3CoCn/tZTkOpVWMKWqTuR
	 71DPg9S2xNWTRGcMwKcOV1x6AzSHOZSMWzsljnKS5gO9SGWsBtB6ivVKqoqeTgT/tG
	 qNI2B9bf4dGsCOhZFJhK2+t0pfEwzdoO+CdCpWr3Z9NacIToPdqRY3b9bIWkISrvZ+
	 Fa+GV+9wDz44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946DAC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760019357.28447.2535657882016151653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d2219ebe8fce79c9eb5bcbb6af6627f0fec9e9ea743e4d81390b15d3215a41
Date: Sun, 18 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747600193
