Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374A2374D1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725000954; cv=none; b=h/xHouGWqz9UWerQtbg8JRwlC9a2IFmvHoZY216QimUzGOOYG+uHn6SHiEeeEyTCTDQmaBRCtCa/ViamB0T28VHEj2f4TwpCAgt23HyL1NFxGnc0mPcPPE3qyGbyTUuxtFhjmcoxGin5DxcdBI9Wag1blr24rGIssI0GSaVuh7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725000954; c=relaxed/simple;
	bh=HPUeKd6B5/rIygxbyrZUM8D8U3xEA/t0E3xgPHCxFck=;
	h=To:Subject:From:Message-Id:Date; b=ESaJgq4zbC+Q1Qr0b0BQIO+GA6GgbwVPWdwUXqUNG2HGCznyFfdiFqQBF3Q2QqCD7dKXBfjlWE63FNmmLC/tS/xGoGfZCrb73BvMPvq4Gs6BIVwtES33+GmLtuOOEcyRtUYn4CTvowYOmCvRqepuRQEb8LdeTjPYillptCbUda8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGbybe7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGbybe7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDA4C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725000953;
	bh=HPUeKd6B5/rIygxbyrZUM8D8U3xEA/t0E3xgPHCxFck=;
	h=To:Subject:From:Date:From;
	b=YGbybe7Qco7uCxKENRdfu4GDU9y04Z6f7VluoCNzap6zXGayg5ZknPgOdvl2F8tux
	 qtavqFdGC6KCapuvH7BnDpOOYOFXqyvWZgaittQdQwPFtFUc5Blb3qqCaRzRQyKRDk
	 eMdGRJzrkX7oLgtK0/rwphIxnfyUtQFHDysy77nbsNUq3Z7StLBbmQ5X6LRAIdsvq+
	 Z3tdqIwKNEGNFnZy7kTwNvVjJDuEYnLgOKPr5jnXpYO00B5eoez+l3ky8cnu+TsKTJ
	 R4oHHbwHQcob9CwqkCCaDR6sKzQWHHxRd2wJH8wOT4bJCTN2f5d8t6hgIcqUgtxFyS
	 j8GJZT6vbGlGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99173CA0EE1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172500095361.2519.420808123852381247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92edb0f72ff74f99f2ccfe76c24d51fd8a7f0bfbce5440c75e1312ae41a49dba
Date: Fri, 30 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725000953
