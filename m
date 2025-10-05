Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED3B4A33
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759705795; cv=none; b=fcOvRHbiuspYai6e7b0LT72uL1WC40i4mMU/6Pp9PRMnCg+/Dr6AvGsv0MzWgYp7ECY8+Cf6X/79zL1v/FdJ15XnmgGYcIjHywsx9oPH8nekpEMPSsF1X+IggbssvpIVKOndE4xlkr76mUdBCYIeisAV9ffiirb9GVc7z+MiCMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759705795; c=relaxed/simple;
	bh=gG0vjIX+CL4z/Jrf8TLL9oTKgP3aPrz0kGrdc3MlEIk=;
	h=To:Subject:From:Message-Id:Date; b=Ei2jY18uxeFuoDdLy3pSH9pApqhErjyan6cyA0+Tq27BZTS97vbp3LNjUpiKo4n5KdYB4L9K+KltjBDWsZmcEsELfPfc70gEySs9+TenD+4QjA5tgGhwYZt+Zcasf0yGgGrQNsPr0SDbMsfyxXYJ7a3kpHjayalmJogo3apd0jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KT4etSkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KT4etSkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26E5C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759705793;
	bh=gG0vjIX+CL4z/Jrf8TLL9oTKgP3aPrz0kGrdc3MlEIk=;
	h=To:Subject:From:Date:From;
	b=KT4etSkmbgIpz6JTkS/EDwjyq1yfFYLRKBLdJ1v2Ch9wZPRL1d03wyoyLevDn9yGS
	 gP3TptNt7RlaIJ3gTRutci7f5BS9t6VlAV2Lgdn2G5lMOaN3UUURNPoRp+L+ah/9U9
	 YdKhs6vRXI4+2s9LQZfzevRzfO4OMWgmrIn/mHV8BU6jhyI9TYYc82klb2YL5cdXGq
	 bGaSDZZO7mXBDkp3wX8lWN1uOkiK6xvytblxZC81ZAC7a24CaedPZE8ftF1XCuGIVT
	 KCU1pWmBV4TAhHkXkRWeqB03Kg6xW2mq7rgSss23un0ch3PIp04YRqaLmGPTthLmRs
	 j7hydcAedX6iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA05CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970579357.11121.18387983471067380154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843e55dec00f60e3e895706969fab71e8332e221bc43184592c93320c3ed988a
Date: Sun, 05 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759705793
