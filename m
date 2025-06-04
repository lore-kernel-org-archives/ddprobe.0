Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F6A339A1
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749068994; cv=none; b=KIeP6KutOWdLfNjhUxMn1RrRKnAC2ey3fk5fF9I2PHGbllxzmIpYz2KLcJkmZpGQaQzeLxoDcSfNRWJVZ4CCE2qLuvuI+H3aw2SApF4XncnG82S4bHWwrtqxCUv+u8iUypJg3+PUw3tAnPX+dlT2nse7vv0njHugLTDEuTYR0nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749068994; c=relaxed/simple;
	bh=gn021JxNP661y0b32o3dSf+Rjl3idQJTnWt7NmRM30Y=;
	h=To:Subject:From:Message-Id:Date; b=m/APUUxyKL677WNwv/STy52HK8UmioO5WE2CxC32R6uk9C43hiqScQuQHHkk9lW4KWmjvGfWfe01veQhiLlwBQT/+LPWj8nbm4sxDf/shnggxSWdz6tVh07GmPCbwjlUrcASSXuh0fva3GTlC8XN5id3AJzFxTUoINqZpP/Ykos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgy+2S2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgy+2S2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C6C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749068993;
	bh=gn021JxNP661y0b32o3dSf+Rjl3idQJTnWt7NmRM30Y=;
	h=To:Subject:From:Date:From;
	b=lgy+2S2Yg5R3wRwJGKigxhkFtb+lasnXXU0YXzEvjQAHwu4n9uHOOp6HpQUmppNxX
	 lx1H25P5E05YA0TUz9T0KCYQPTmEsy3HUAOh7nT5ywdhRQPbGCVd0nA4cTOXDVYYxw
	 nOtDUYP+Uv8IzBAedXqFzOnpMAtjBwUHM+G8Sz9eyK9bA3r5816fiA8AToHGUBiK+J
	 BbxUAGyG6i+EjzvpQrDQ9NRkqJLBl8afgZrXhGq3+ohlxL/c3tsTeT6lUnMZocq4Ku
	 be+ukesbPZS3EmrcWdzKWJp8RzaUKWF6Ed3QLiqXK8pcRJoteow5QnTCxotOLiQdLJ
	 suSFKYC95gvdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB98C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906899358.22556.5152576783553641357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3445223438eccb0af8c9820c2b977edd6b5b886cf0c6fc91f61f8f99bd0ecb8a
Date: Wed, 04 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749068993
