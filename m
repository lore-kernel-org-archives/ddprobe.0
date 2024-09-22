Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239BCEBE
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727045154; cv=none; b=ll8OI+43fnbFHOiZV75TbwtwVvOq3KI1wP5A663e5b2QP0V60jKX8aRB+Gk8RHSlQxYFlbPIN2EexkX44Om2Cfrqs3PI6FwEjlhxkqUc/T250FCcoFooJKnobcyGmNmePtvpZ2eYvduHxH21WupjNPOJYW3SXXLqXNYXGF5M51c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727045154; c=relaxed/simple;
	bh=B4lngB/YQbz4elbLJ8YbDfa4MiTESPerm5J+jZF1eik=;
	h=To:Subject:From:Message-Id:Date; b=IkX/tRi3nwgo0/EZrNbuiCNyM/Qc3LFd14rJMpwIsIkw1VlzoHNZfDDHd+ZjUtb8cI3jZk3Z9eRMRm3IU9GuQ9KZoBUqb5YOEmKe74oSlWijrBqzvSeLj0iv4+Lpvbgey9C5NdpQw4GhLXAET2Gpk5x/DIPbpbspyCpOEiy17hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcGbfiRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcGbfiRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D47C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727045153;
	bh=B4lngB/YQbz4elbLJ8YbDfa4MiTESPerm5J+jZF1eik=;
	h=To:Subject:From:Date:From;
	b=EcGbfiRyxnxjJGy30Q92H0UFqI6CPFNW75lF0oIrcnTDS5V6t5hr4rIi6ELDxLi2x
	 gDofHzvx4IED7AyDSPQFnXKW+/1o+o09mVgXKhLcJ1uKJuMiPZrNlMFeH6K6qa374h
	 87T78PYdkOWFdl2JGp1gHUGRycE25PpHm3UWHfaJBBDPReJK28W7L37WKxXokF59I/
	 x/jcPxA25tUJZNcx5vFOn64CX5nEby4J8X3M9eCIH1vr0vWVHSCh3n4Tb6J/Paefno
	 /NyO54M/HtydEek6/c6ua5ivS60fW+Us6Uto2TJ08HXLq1hCC0bjboEyFd8VIRuwEy
	 3Zm7MYvhzWRwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E50CF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704515357.15152.789994532710859045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a613dc6be7485445ad11e216f2c554de22976a4c475af70c3b703a3e9ece22c
Date: Sun, 22 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727045153
