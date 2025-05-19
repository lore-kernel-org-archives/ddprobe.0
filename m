Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEB026B97E
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747662594; cv=none; b=EOW8LThFEvu25xu3ayMBYVVsarH3CW3KRr3iidvCRljAjheRyiJXn33ljCzLE5Vk9x1FaU9WrqtfOxqHbm8wdFVWR5ttkiPSK7gIEkVvPqzWeTewfA5mbl9ZgorOe98+Jgrsj1CIYLp96uDsuhXw40nIjhyR0nNI4QOqjuyQblk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747662594; c=relaxed/simple;
	bh=/skT63idr1xF6qi/GRmfPfs7kv9H6H548ZScjrjOcvk=;
	h=To:Subject:From:Message-Id:Date; b=pFgI+xp6TQtwIPQHyZTa35tabPqv88tBQB5nzqtQQbWNqrS9EuhDq/zuP7EfPZT+/LkmUC991N8alOCundSBMdNjqx8NZ8mNIWKTuNOGBhs36rBwTPaWH8Fx0o7ALZBY1dAKPILzCX5hAQ3XDl5NQcGEISorolkWz6RKb5hjPH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxVD7Xxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxVD7Xxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9BDC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747662593;
	bh=/skT63idr1xF6qi/GRmfPfs7kv9H6H548ZScjrjOcvk=;
	h=To:Subject:From:Date:From;
	b=QxVD7XxzhsnBvd6Dtw12DEVX1W0aEDbhJIgFJxindUGs9sUs/sxqq2U+e1jY8Of25
	 u42bPm9bcp33rKRTLs13QBSoFitM3iXiPcbStl+N3UnJgddps8o6P+b2zjZVCId9no
	 xp9smZXsQduhkhkcM6xqHUYTX8hniEUzmFqOrMhU5+QUCLpidLAOAPikY1nwTv0jWc
	 y/OteRHsbcSWwNOxLZhtfZ9vCmtkapdrMfJx+WsQ2AoYa+o92aVHtCKhL/kWcphweV
	 r0XvGYfYYD+giEkmxqjmG7b8UvuPtly0TRpRxd5iKDN2pVXwebhZVxsn3ZjeDUTRf9
	 PUnvXudVc6gmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00CC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766259357.20285.10943264131446586457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ef1707868435e2fbd4471c99de2839ab0a406bfe47bc478949c2e30e3dc397
Date: Mon, 19 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747662593
