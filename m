Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4E11E230E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767227633; cv=none; b=R95HqJFBbS8XlQXCZyZrhz2NJBKlZKA6fJkH/Mi5C3IB8QdSIfMRBGFO8WT0BpodS1WWOhM7uJ9THIQh3FPE25gm8J4LZtpDGoozWsCD2hyesURIddP5vSwtO0TNMM92Fb6RJip87iISaJdyKw0NHc1RtFOEFI4r6EQWygrXRlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767227633; c=relaxed/simple;
	bh=nx7Zi2lTRPTaNueW5+AGllQnmz3fP0YsWF/7ZqEeOXs=;
	h=To:Subject:From:Message-Id:Date; b=ivVAGwJN3/u5ES1dmUEHzRuirl9PzogGSvoKC8Yta2ZD9L3oZdpJarM6LwrE3l+l21jTUtozLL6JVK1fMOt2McyiUc3sPzPv9fHkU4KrHvE2GfAT1FrtPrxxltTIixK0YEY7hPwfxKH0Hs+HeZGF6Z1q/Hm6em/wzEp+NcivauU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0ADlOQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0ADlOQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7EFC113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767227633;
	bh=nx7Zi2lTRPTaNueW5+AGllQnmz3fP0YsWF/7ZqEeOXs=;
	h=To:Subject:From:Date:From;
	b=E0ADlOQDy8a8XF4hvTb+vhg/sB9lvq2iTmL6RXajw7/G/D5DQWr5IcM4DGYrmBRrF
	 iGQoQh99XUY79cIsouPf8pRU+qZBURjDch4WkNazgaFmxpZT9owAhEVYid+DbSUeS7
	 dqBR2ECq8EgSK4Nbc5ji1q+xgixsYfQpLAP85mcQJsf5HzeHYe9A43nsaMX5qTusUC
	 Pa9Fnz1lrhOUT7I5Iws8xukQyeym5rPpbb28dUi/kskS4ozIPsf3K4nX0eEyilFuUC
	 EytPBXfK3DSYJ1jxdxiQKn8O5o/kJHmzjv3flwXR2asGxh2hdb/SHCLP22tNPozfWw
	 k/79JMU1uE+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F530EEB573
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722763357.16921.5690231187655601298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c516e19c01d6d983ae88ff63adc83439259f090c8bb49d05005d7c26138f3a1
Date: Thu, 01 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767227633
