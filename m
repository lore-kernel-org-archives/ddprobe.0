Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A88DDAD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742332795; cv=none; b=EfJ+3Dg5nrO/rRSjHJFZvz2PqRnkXFcKHzOyGEjKqsxdcCdmbI2HHYk3Y8gO1zgN8W+jWcUmygY1Xcwz/iKF6d42OgST8f7PhtebYcd3K89jra6aH8an0F+uVowPvCMhbiG83BwirXVXISxaXQnWR/a/8EfBem3I5Zj6sI3nTlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742332795; c=relaxed/simple;
	bh=hzByz3pyd3bed+9OkzOg+bjaPeWhGCRZeapAeIO1pdU=;
	h=To:Subject:From:Message-Id:Date; b=eTihDlfbXdPNpU88pILwP8jzwfEsl46+I1tmjvGyz5xoZONnrS5yJB37Zp+qHDp8u+Z70bZHw4KXn8GepYUt5Xi2tggkykFHhlYvCKcOsgRiT4E8wmy9qE9sOmk/ABR1FN+ivsLA1/v7vWxWt+oiVRtMSW2MgWk7kYwW7f96C0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhjVwtSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhjVwtSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0CAC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742332793;
	bh=hzByz3pyd3bed+9OkzOg+bjaPeWhGCRZeapAeIO1pdU=;
	h=To:Subject:From:Date:From;
	b=rhjVwtShmsTFcsVgWLrjuyANzudm8J2wV6Zsqey50xr2aOxGhjj30CpsAOL6LYUIt
	 6FAnrNEi5HuU09gZ/KfTY1lGesQys2UGObK2hEF+NUATmtS3vq3XYXfM7bUfQK6RRX
	 BgvRbRKHg69DwdITMp4fMPvPZkba0pHZZLQO25tTcoPWR0vP7VgXub8I3tXUTZK1x8
	 DueUAyvmeACK7kY+Je1UFgOv6HZpiq3tO3I//IWd22v8mnKwN2jvdGMkNsMaQLeEJ7
	 KKfiaONB3Ml+n//U3l97DAmu9gENCnyRUmbMGB9AklwNluoY57GuQGfiP6TsJu4V5y
	 MpRz0vVkgv/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97069C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233279360.7086.12074160515472366404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abff3bdfb0c7aa37b1cceda5ceeed71b305feb872095ea1ba21fd9329c4825fb
Date: Tue, 18 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742332793
