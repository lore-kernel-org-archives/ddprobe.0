Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C763D2D94BB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760642993; cv=none; b=NzvrDf3nM/b7/SSbPFO3iDwXq8b9i6e+MohtjAeg5OpmQ5VDsLFjRO6ayD/hDKe/RpJoQW98I0cwj2CAsemOaWE3gzQ3JEaTEfokHgvA7uPsCVSg6iVYd9G49ZQ94e4Jfqzy3UBxORD4mlFLWSdBxgfQolVoRnLCmacb514VAV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760642993; c=relaxed/simple;
	bh=73TtkOSWJBnM34aBhC63b6aZN5teNksxOxj513eyC7A=;
	h=To:Subject:From:Message-Id:Date; b=NX/ns6RfIY3m4KMTAWTHkDgXK4nZ0IbxK6Js/zO3b0yxM8Vat/pTpJJhjyguKcZfLW8FKIZ6EZ0KyTPR92GakaC30O7dOLRrwBQIzCmxHVIPlGB1a2jX4tVK2OhoFciFE/1XfWHOxCKWK7RBH4QWb+Z4tXUKbaWGx7WIrX/OWr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbtc1uu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbtc1uu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4498C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760642993;
	bh=73TtkOSWJBnM34aBhC63b6aZN5teNksxOxj513eyC7A=;
	h=To:Subject:From:Date:From;
	b=pbtc1uu2hrexFUyHi3ufI1scVxY9ihQqwbgs96xG49B50N0QuUraFV4W9brmOZNJV
	 hNRLunzjMY3j3WnOfdP06BH6PHBHf0HXIS4lS8dlvVqv7tBEyDvbGZ7GuQV7D//0xW
	 znP/qJA5VcAqbcvRaEt9zBhukUlRQg84kmx6qrE/o4yAPYIWTKB/bov9ixH1egucd6
	 bu1p8WO6nFOJESYuOdjThGXa3Jz2h+P+aZwP3U1cxGJ3WAvJJ8SZWs46tDP0dBtMkI
	 QpchOv2e8e9t1vjJZLxxaMB74sOXgSjavVtNwv9ifV23FZ7dXZjAE7pamcVMilWiff
	 XxwVD33srjKCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B2CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064299357.32138.5713116081463525015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad6a0a08b0ad87c9c135433f94806347f4682969bc108a29c7b833ab0aed85d
Date: Thu, 16 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760642993
