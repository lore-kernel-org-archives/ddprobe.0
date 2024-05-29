Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F537167DB4
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717025063; cv=none; b=klYpRdqLbb4jNCPp0cjJ2usxxAIeelXpBW4e0AcRQ/NQPlCNsydFrWVv6nG55D5eoZnmseSsbzz8N5Nn46RRlobs97WCNIYpDfR6B6yqysgstVMCKKgYEBkTCzRcFxicYo6VtzfFUsGwCrI87nCR6kpML/FqggZK6P5OQlcmq9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717025063; c=relaxed/simple;
	bh=JnyNxwCi2T5XfmlcdUhfInEpicIBKwOWsKaXZarLaIU=;
	h=To:Subject:From:Message-Id:Date; b=OClVIaXgKr5ifdbw9xAJQS3FV8jcmmX+cO3PPEm7zgnne0QdMt49PB1WZKV16fULXud6NSGJgq1EYr1IRChTSbXauiBMbcfCFSv7U8Dw7Ioy63gaEoGPgQjLbwKGJkLyIG7x3vxkICLYQeCuePEHqY6KYHXI4b3iGswPRbLIxY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R55VOXMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R55VOXMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5F8C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717025062;
	bh=JnyNxwCi2T5XfmlcdUhfInEpicIBKwOWsKaXZarLaIU=;
	h=To:Subject:From:Date:From;
	b=R55VOXMVgX11Z7q3jR6Sr8nK/12Pcjcj2doCUaOnYRqs8vlXVBANyMIQFMV4S0IZ0
	 JaQ10GArNnv6YX+CzwZu2v7jjYNV/8OmLZOFBPvXMiN5TA8S6bdKaSsa8eEYjSijZi
	 gkc06LMOtaaT2JnzxVS60VjmQyxCXoJbhABmUJpwDMw02oFeBMTGclQ3v4ssOKYhCG
	 OQZMotXAEKQd6CRGmKDphfHJ+wYMlFPrqmFdkN+DUJxCfckwGZEBlJUF7Bc3GYCJwK
	 lIF8Px0LY/y3Er5AkYzAr5EvrJNQfwsVxcgiCVTvo0H4ty++P8VfJyUE7RaY9f5Bgt
	 naWQeybZIBbHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0ADC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702506275.15436.12850506091082537991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6f40c3c9d9a3d90f174acf3fbd7e75aa5e9ea399f622ea0aa167ba1241998c
Date: Wed, 29 May 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717025062
