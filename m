Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2707B14A4E0
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723445754; cv=none; b=pNEXGiMUaR5JoQNhLHktiLSSPICsiL2ggJC/jex25h4N+zilZ2Eyl9SuZBvpp46Rm8sN9VWY6W3e+sF6muK1i8z1QBhqo3xQn7qjrU7E/KNPMlatgb/YAY0t82Qc+J04UWSm3GJXUAZfmLfQY1mng4pzpSaPS0l7zuEBzqfiMxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723445754; c=relaxed/simple;
	bh=hSvI9UvGtnSWZhIfAy/DFhiifo7D6so2J5Wb3m8RzT0=;
	h=To:Subject:From:Message-Id:Date; b=XbgLDkyALD+gpzLw85g/gRpIQMttx4RNBh5yYt3y4uXdtSgGeW9NajeGrMksilcQ6eaELGXKuhyl9UhRTSVrIvG7flk0Qd9h4Z5mFqvXLyTTw1FgxGiCSn69q4eyuALts9mhqNOdIApYZK6D++q8kvEQY3tLtu+DngDEfSUSATQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/hMLkjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/hMLkjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8DDC32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723445753;
	bh=hSvI9UvGtnSWZhIfAy/DFhiifo7D6so2J5Wb3m8RzT0=;
	h=To:Subject:From:Date:From;
	b=K/hMLkjMMwtiTd1rwYXQwfvivpJL15sKeWWY9y2A3WCUf9jlTe1TrMmP2Y4pMrGx9
	 ANCjzxarA23SsNSKDpgQf50e94aZ24M6ePCAjvCVk/tvogS9QFWlDgbhSkY+NwAqBn
	 +rvRBei7iIyXN4f76uUdARkvQH9osraR0ve+iXV9bleTkgS2LYdVqw1YderjCEKkLP
	 89WXBSL2Epr8QfQoz9p7pP9thmqnYFrBXiCj+mkYwpn6ymXinvKKfBow/7p55hSUJ8
	 4jR0IdcKmYHzfD8KOh7m8Ta4a21fCDbIvrKLcVXuXqQtYJa8QLxYE9+0ks28Xvwrlj
	 od1mdr+CIKo0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6A6C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172344575363.30448.4803425683081636294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5136b148182f6e02a1aa50884dae7e92ec1b65d4f3b00fd52c3e7c675c4f4e16
Date: Mon, 12 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723445753
