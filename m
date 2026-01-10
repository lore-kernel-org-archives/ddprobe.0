Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6BB29405
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768079034; cv=none; b=Jwf1SJgpTTAFrYLMk+UuvILL3EALfUMpHaUu3693PVzdU0DIQ2SnMP8penoOVzUo4MDdjuPvx7zK/8UX/V7lkCCPvquwcM0jR+WonT5iYD2Te1P+md5snR68CEWvLoLBVrn5IaFhiPZdBKr/O1TVpnm0/y5UoGfmIk1jGPndmVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768079034; c=relaxed/simple;
	bh=WA5oCgy/RuDwT+ndrM6bmyHAqjm7WcO039BDCjd6ro8=;
	h=To:Subject:From:Message-Id:Date; b=GXL79X0zby57t+qQCtsK3K5H9gptcUpAcUuK1vY5+EWelRIn6K1LDRAgWHGSD7Xq34iVgKkbvEy6oA6ar9BH2PupEF+bQ0xJWfn1ITY/5UpAddhsIV0+0wRUvAXfQA7Moy92I+215Ipd1AxsA7+0hvGk/LJx4hdUy1rBQ6s0UHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlu7m8TA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlu7m8TA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8187C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768079033;
	bh=WA5oCgy/RuDwT+ndrM6bmyHAqjm7WcO039BDCjd6ro8=;
	h=To:Subject:From:Date:From;
	b=hlu7m8TA6jTuCUxc7vA2GMtxO4WllHN4WwL0v+OMgl2H+KgK4PCJv6AsImAjVv6df
	 4ndjfixHJVGLunEWtVz3ayFb/VPrUT3lsozMMw9KhlZXofRdir9CyKOsy5mB4ICLS5
	 izWbYmA/ceZkHNl1zDEolfbGoATPHy2LfEay1spSzarC6dXHaonmR6x9H3EO53eeNW
	 e0w1lei6XNTGNNP0lonlI4r8Sy7hRUUi0MrAU++XhpSRWz/35ZnFs722i3untINScX
	 MfwVAp257NmKSSinBAF5tx2xTh6qk9nizb62ZMZPkt4q+5V7HkQY0xIjKcWQKvltd/
	 lCCf8Gnx2A9Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC3D25023
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807903358.9982.16855106927600796965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41a49bd42b7b728df85b4a814759b51552fe00f3baeb5ca65fa445439b50168
Date: Sat, 10 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768079033
