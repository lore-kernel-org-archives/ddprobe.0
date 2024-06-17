Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F1B29D19
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718590103; cv=none; b=moDVZ7P6z6tFE94zmKibJCz1NfGWORTePPM8Kq/PkwQpGnIUNUMv0k8K/QEacvlN48HQ5imQ8P6K0vcCGhiVnTLKwryx9qFS3mem66oFLoiQ2xMbr4WahUGcUENwjoeMvLo0nTQObMDpHLcFe2K8mLUPQgnCmR9aarfcceHyKwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718590103; c=relaxed/simple;
	bh=FJNlHhEIslbfIX5sz/ecve4eOCQU4UbZhTsRXlgsvp8=;
	h=To:Subject:From:Message-Id:Date; b=NV695bbbCD5eecwOY4E9AGnE7TsGLTa4WDd1TXHIH4fF4YXVfoZru8J0pwoqtMm6LeSVApWOjxorPm4fOXGsYG3Fco+C9ZO85WYVCr2oTPwoVY74PO6o762x1z30pT56fP9t9k0lFk45DcYjrXtt0HbZY6ffdyDSOTJPQYbYdPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/Dcx1Yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/Dcx1Yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CC1C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718590102;
	bh=FJNlHhEIslbfIX5sz/ecve4eOCQU4UbZhTsRXlgsvp8=;
	h=To:Subject:From:Date:From;
	b=o/Dcx1YuXttl9rM1yWcB0FGx6+VX0Xxrgd90DSpt/VZBNc9nnYkftfbqV7CsdXea0
	 HQm1WnuuqvyaWe2MxkVcLP3UqDtiuRR55ZQEIba0xVnPNlFRO4AlXFM6o4i2kwaU7l
	 luFJYFNqJkTqWHp3CCsN9mgyqyrAwKoOa7icT3U0OyK+cT211k7k5WyFkjCq0kC9jT
	 2iJOZB6VHuXqoHXdy9S85D4ouA0msB1tcIhUcfJlfuurltgLIyhUV43rb/QT0vUGTL
	 QvJTxdCFfDz9W3eZxZZC8rvDKxACcNBrLnK1YDa01wBO5U0wtjCVQ4jizOFoOQCEJi
	 Cpgb8WTe5oKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9A9C27C53
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859010280.2678.13039254266576132982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48783fdae5c8dac2a194335a9c1d7ece3bf1f54a6cc6a00aa045ce56b62e2096
Date: Mon, 17 Jun 2024 02:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718590102
