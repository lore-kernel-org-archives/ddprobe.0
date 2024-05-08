Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D60A83CCF
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715170943; cv=none; b=LGcxsyjcFzBQt3/tL+0FWOYo/ZQWTF1AZElm4euwwbIKqC7oBL8reyo7/E7tVn90YB6ePHENL9SuumAaluEsH4PNHJDBqnLC4EnGM60XQQtyHSNy6UZJLG6CM7NxkaNAsjegrcQgtpPcleXH4SSYXgwKYW+GnGCIOvlB61dBZG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715170943; c=relaxed/simple;
	bh=/0fW92Gf2jQoQFNcBB960kaESnZw7rC6sT0PKk1TCEQ=;
	h=To:Subject:From:Message-Id:Date; b=t40viiGkHx+EJ3K8jHpxVRqBrBeIhHwgjY3bFiCToWqOqA98HrETFcyI354FVl1IL1hQ6Cmqdlq0ptyHhzPOqth+cgtbsnfTU9cBd2qPsjWu2NIXLWTFhavONaqVumOSShZy4EaC/kAdfoUdJqfKhVK/mnxlHoMgXCVdLciWw5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbWusYak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbWusYak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5263C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715170942;
	bh=/0fW92Gf2jQoQFNcBB960kaESnZw7rC6sT0PKk1TCEQ=;
	h=To:Subject:From:Date:From;
	b=EbWusYakAgDLKGG9qXbvOVrn2CtFuZjqkKUEjAx/W6LerJJRF3vgYtnc0a1vCTln7
	 d/XsHHPOxh82rU1YrxPJNCGkm73MscvvO2lhKcr73+yxm8ATPSQ0piPvUCaEqVFfD/
	 lw/TwvvmZAp1uXNO8VatZATwPGgsBa0S6voQh2L4C0ka9UMLhd+dIvuzbi6MecrAGj
	 KghDKwz0nzTLjJvrvLX25Zaw6mX8zleaSgekiEBoRI7ehWZ3+EJrkWmadPM3mH6o8H
	 CBGiVAEcfMFwi8gILY6cvjXhZlFV2Q0NALtNBNVsPIia1Yk983jYf0Bze9C0K2mge6
	 8sPkI+07nbwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C04C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171517094278.22943.2290034496156818105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bb0ba8fec22458e8b534ed9e4af8345afd204bfb8b9dd18c1b7f55cf85f364
Date: Wed, 08 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715170942
