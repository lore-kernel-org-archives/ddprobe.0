Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A50121C680
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 09:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706173697; cv=none; b=PMhWwWocXbZ+Efwmjt+wn+qxRT6PjrPpzKNqlxGIf9LXjXUyxRbhNqCcuemRkrUgL/xJ/V8gBuLUbOXGet8aiFrg5FRtjmINrIR+6cMnxUZeDCtz4hSIMJk6bqXmzOenL2rDsu8xZ2qgKRmf3Jkhiyrg0L2dRisX9lgF4xpSOW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706173697; c=relaxed/simple;
	bh=gV3xs22JJJbID/g/LVf0DUphpN198sSUbZS+p6y4LsI=;
	h=To:Subject:From:Message-Id:Date; b=cF1elsiwbyQvYNgKtcRj7Lkt3tZxQzI7lo6kz3kmPdcFRpj+47aBjM8lXsn5eMmvvf/paimhKXJV5OniueCpeo/mzU3dKGdvI/O9bOoIMq8F8tdbrIrqCIVh6phNz5CyFnBKJmiepSqt3yDQHA16bkBLfk76tUutggrus5i/vkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j76+9kL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j76+9kL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C3CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706173696;
	bh=gV3xs22JJJbID/g/LVf0DUphpN198sSUbZS+p6y4LsI=;
	h=To:Subject:From:Date:From;
	b=j76+9kL/3MOH04Zce91ATPz+LJrYPG4zBj660srYrvCregDx2wpwdyJb38haokIi2
	 K4kIhz3ED53VSfyk7/6W7KCi8Fg/11Wv3w1IgEJoKZsBnxRVedtSd7k70OSg1HKyVv
	 DzoH1lSbr9zZE283poOfSWX/XbSWiEHYXHOtJrr0TpMoLyZUOU4QiCS1DnUu7zssW6
	 TsFEvJPqIGOk0RzXz3DXZ5KGPQ8NvFAm5bghN0LGoFeSP1MRNnLncXpub4Bq0AQgts
	 BzVGSop94NzbrEY7aPgVz1XDM3ofIYXK+e2ra0wb8xfroebLXZiKlcWZroehlrPywg
	 xd5peSNtmam6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D51C47422
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170617369639.29445.12664302081752093856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805fd7a7ca7c331a585393135fddcd2d9ccbf1ea62aabbdcae74d75dca87ef25
Date: Thu, 25 Jan 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706173696
