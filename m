Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C4E12CDAE
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723923354; cv=none; b=nfZc9FziP3CUlqrlVuBWWe2Wn9X4178bfTL0CkaJlk8iN6dgHKxe7SbadiZGrSMk73C9DQ3jEXJf0FnT0KCYadu9VyRUTrT1CQxooCZAhYeF8nHzLACyd7uI0YuoLbZ8uCRQNX5sZInnn7Bpcollgbcxldk3JBGEV92jgMHwfOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723923354; c=relaxed/simple;
	bh=cAXI6s3HwOkb/P/fzIVMUHDvj+R7kaeDlalWRlY258o=;
	h=To:Subject:From:Message-Id:Date; b=oxq4tB1ogGCcMvfJLec0aaM+NiJ6fI6mAAsf54ao8OhHr1mS63F5e+KHOcUV2dVx82DSc3oNUaiXnOcnPxmiTfMGUO3mGZPPzzWNp0uw1UbiBzNSfTJaVEo3mYMZ7sWLGmjFqnVpEDIJ4BiNaKSmHkflXzt1oc0bPXxkkh+rhjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dX2pIHuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dX2pIHuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F4AC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723923353;
	bh=cAXI6s3HwOkb/P/fzIVMUHDvj+R7kaeDlalWRlY258o=;
	h=To:Subject:From:Date:From;
	b=dX2pIHuY6f6I/r1SmX6VP9KF1spds+t08GNPuSkvZgjFBNxMyGF2kIoZ0ZVHOYiUI
	 WZIzHiNHmzk1MntALGYuYMauv8acJVDHWgnmIIiTR/KnX1A3yTXvSn0vNrL4ZsrVrr
	 p7Q4uO1jrm1Fm0xwCnjQ3xfuHyAzA2MtsVbP9Cx8X+5t6eIVpc9kmUeFFUx8nZ8Qfv
	 Ibg3DJo58By1b5+Wj4GoBK4Zq7gwppTlCzpcN/tE7/rxHBNT1F08elR/UKQgIjPqFK
	 M98GG+uXwOMxY/UybyezC0hFOOpOY0+hMthgf6IQ2+VyIb7nJcJHu/kePSLs6ltJli
	 khTx99X/bweKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96825C531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392335359.18452.14829516698829014135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2705c56c3bae4474ebfc83b45cd3f43e969cddea96abe8dc6d67f6ed2329f7bb
Date: Sat, 17 Aug 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723923353
