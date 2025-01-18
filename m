Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B461A95C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737224154; cv=none; b=AtzgLfQR1bHGz0hVBsdT6I4ty2izu4zTfNUE9/xdMapkwYWBMtTYT3ZeEFFj3++GTjSqG2EQoa2kf3p3TmXGbFFsVayzsVwfkKUEn0Bj/9YX0FWeauadDj3ffLBzy9W9xnsmqE0rCOw76cireO2Ym/ZbCn8Shw1tCbzhyO27OZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737224154; c=relaxed/simple;
	bh=UEkgNBd3T73huhxFRnaKEN9aIsbV1CEHCmP2/9I0QjU=;
	h=To:Subject:From:Message-Id:Date; b=YlRO2A9mncq1D8IBjzttXiq/VlYVIkQI5DHkpaAg+zaGXaROi2BIoHppZ3CHpfaNiw0Pq5dL0e1XFBNm961RafmIi+CI4imIFhkRwPA4cKpQad13Iyt3Ef0pP/Y8SjiekibLX55O1xnsK7hKtIe8+IwMwbHvn9KDV45iRAl72B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr+OAUB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr+OAUB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D15C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737224153;
	bh=UEkgNBd3T73huhxFRnaKEN9aIsbV1CEHCmP2/9I0QjU=;
	h=To:Subject:From:Date:From;
	b=rr+OAUB2mMKSzwbDzfp4M/k5vg1K837buqQueqzbKstMozRo91Vx/eI3b6M0OEOow
	 8RSeo3nSQsoIx/bwWZIKJhdFRKrJkWbks7F3w+N1ampaHXkcUGM/XJg4ml08gXjqiR
	 2J/u+p82tXiglk6q6z2KOW2416wf8j8OYto3QjBkJRc2G5K/6UPKeHzLQInyLJ0sl9
	 EEI/pZnm685Z9bHiNvUnMDg5vZl3gBNlXBlUX+gtj0zUz0lf6SqqGTpgyqCmAXwwjQ
	 wAYIUVLhhxPADEqdsOZYF9kTeXEx/i4e/IoKEOtJMmuZsrfjziIdSUqsY4FDIjuHka
	 E1hktstg4uQYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1966C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722415358.5777.5060873030315765998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a518857079ba98253b18b6c7b7bb5d781143a4c0569f3251e0f331bbcf26e33
Date: Sat, 18 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737224153
