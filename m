Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E3E2594
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725927354; cv=none; b=bJEhti6z/wHaJfLE/IT+ppH+mu0eY8spXfDSs7MEVaX5PMYxD2uBVpNkmTOVNWeXdqSWRNApEtAB+eAsA23XRTVvqAOl5yDbxL8G+YzaZwS/lWz4yYOpYTps1FfHQoGcpeto04ezZUp7Ic+Wzo1akkBV1rHppsDV22QjzcjJ8X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725927354; c=relaxed/simple;
	bh=5eU+Z3Rb+5vMSWDD737z+wSeY9Su4YMtHO39KOrkBwg=;
	h=To:Subject:From:Message-Id:Date; b=hh4GO1J6UfvLTPhk30jbANlta59Iehci1ljyyozKCe+2JO6o+2TiBbKUpzTm8796NLYUgbyOpWeyZ8YNoMEENP+3nPFY4Y665/fxhIIqp1Qw/9ETywfUIjcvcuQdGW5Th1LTQAwSbBCiGzuswK6K5NTd3Tp+Gjv7hfDCto9wR9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG+qjFAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG+qjFAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE20C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725927353;
	bh=5eU+Z3Rb+5vMSWDD737z+wSeY9Su4YMtHO39KOrkBwg=;
	h=To:Subject:From:Date:From;
	b=SG+qjFAMEpBxvQ4vkhKKLDXXyeV8eAtu8d8IcMBiKHogmruP5ZiCzCLu8IzJck0L4
	 Row0piobEwXU0R8xvm5pUkPpWi+H1n6XbEU+gsOg0YliJ8RChvqxhN1K32adBO1e0f
	 9oot/9rhi2e009CPqEiDhWU5THoWWr9Oy+J2W3qZP/oUj7qnb4RmaY/KBdF9qaI5gu
	 lQfqL7pV2T+2dpbSxXJS0juzpYgktcm5tODhIG+bVshy6bl1cFSWgTFbqqrtQqa8BI
	 yLFzABw7xUMN0KqkeTiMtJIOHm6fxcHt6oeWXKfpN1YEluF68RhcYdB37c2KQiZ9T7
	 g0VSfNzFX1RBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2619ECE591
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172592735362.31229.17674053470479719846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2d73fdb1a779d7c436fccef3499219fd21ce751248a65a11c13d9e547599e4
Date: Tue, 10 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725927353
