Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7313B7B8B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780770274; cv=none; b=Yb04ULYYDreEPUBMySc6hMiGEi7gLvjrkdEINJizmVk9byiKtiFO33eBa2IZvGD1ML5V5bqHoUiMrosCVIy+076vujs6VRafZpi99qJG4jFZ+G365Utqo2CM2Hd70alYPw2PBYxFMyBEaf/f2UMtJLlrZguDdk+rzj7/ckMTJp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780770274; c=relaxed/simple;
	bh=/E7PgSyAcoJwMmjHQCNiTCALNxH/4VBRr7sJuOU19DM=;
	h=To:Subject:From:Message-Id:Date; b=DV9pVlq5S96Wot5r3JI9MP6kkifEyN/rLzDirrbPWDj4K2NyoCiPiC6JbEUHjfemIWjkNX9VOreSx2V5c9AqllokspFpzfp6LiOO/626tLqot4wBDfG9DMd+w8PW4FfYUvqvQ26N/RkTsFsMrFV2iWQJeYU8IY+y7OJxxKz8bCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rh2m18lC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rh2m18lC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A8FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780770273;
	bh=/E7PgSyAcoJwMmjHQCNiTCALNxH/4VBRr7sJuOU19DM=;
	h=To:Subject:From:Date:From;
	b=rh2m18lC9mX06yWUQ6/Mw4y6Tj0cfVe603FlBVADq6GnQntPya731hvhqblWrqsSz
	 EadlXNvA56HdbwTHQGPTv6FpnaaC2CERgiQwsH1TS5EP019+TfVhK4X7IRWgw7f9Km
	 5WlFUTDC1pEcp9Op3VehRYQxuJnEs6Jvd5EMfS6Ev03U8j/F0RySstPlaXFOu3ZedY
	 2dDhOyuwnXfoEZ7KsvBvyEfgrUVM4yn5Ty0Pp+MGk0m91gfX5QwShg4Uqy3iDvhErv
	 6bWkMJhUTMwqRrUmU8mle1v9WkhoV1VtjrNAr/U9Vk1TTx06g4rvl8277QdBv0ECPa
	 mWcT6UeMnajIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C6CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077027368.7308.10836931664685764952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe6cbd31bb2919b9297d9da268efcabc07617187bcee2b01303a0e9b86cc07d
Date: Sat, 06 Jun 2026 18:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780770273
