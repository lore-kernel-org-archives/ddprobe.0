Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263A61ADFE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767760434; cv=none; b=V1S0eAq8swcglvc1ziM7e+wYUodHreKGHWi4uFjaKlvjdEi4QeuiwY88mGaGKZwN8c0Y6paltwCBRpvu0HXFDqdmB67nSYPxuwZwOOrixtRz1r3KT4gFrQ97TZZyH10qHI5V4Bxw+7D0/BilccK/Car5GiIceFFvrRUjIKG3fXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767760434; c=relaxed/simple;
	bh=xswk3GaE7FfbIl9dC1/8x9GqKdL67vUiVkbjmhaqFI8=;
	h=To:Subject:From:Message-Id:Date; b=YXAqom/UXR1B6rO6jy7B8O14jEA7ZpitFeJ3gDYUL/7rAC4gDKqeTwNVB3rXyUkiO0ncjIUyAw2I16/vvKyt/3iDjgeB/he8CEWojGBT0qaNYSfIgBdZGhgxwYkiU0LK6UeZnyFINnjFvskjF4VRg0ZuT2oVWni3Q8BUNnLyYMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ae0od+6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ae0od+6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF66DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767760433;
	bh=xswk3GaE7FfbIl9dC1/8x9GqKdL67vUiVkbjmhaqFI8=;
	h=To:Subject:From:Date:From;
	b=Ae0od+6C3JnxCMjhbAz9nIG81M4BfWs9CE5s+DgUH+/D4RzCekhH67gom6IFfzdUs
	 AkALZUBRI/wWoGWi/qVSA58MtmExVHdAVz5iHXbBnmU6FmCcrWZ1vqMJU/zOjg4znr
	 Mrj4PDHAKHN8Ev6ijM/MOctO1iI6xpScIUYhHZ0oiG/qoNG4bwA4KKWJsRP1Me7k4A
	 vWbG/3Rgv79eHbCLcFnYbjk2sRMzfI2EzzoMn4HPAuJGh8ksZGvhSErw9+bimAZNBC
	 RX7UBAdjHgHBiWRJDP+bLk4ZFtprTAqRE3BESavvyTgZqzJohGRL7AB1o9iIKMrMJV
	 +QwCPLyfvOi5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2DFCF6BEA
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776043362.794.15006571554480367753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad0bdc3a1cea2b1a52366a8faca73f2a967d9a442b844eb39288f10605171cb
Date: Wed, 07 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767760433
