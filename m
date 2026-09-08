Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF7E3C4B81
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788901834; cv=none; b=ltwxEKbykfQKcTK67QL7eY5qalWECevk3S7phvw08ANgaP7y4kNMUExWqepb/3Oet5u+tS/nkPQJmQP9iSp0TvfjmUItXJQ3OgWBLQRrQV3zgftvWe55oJM6fnAaMnfu/oqTpMlV0opVIQbeIWR7ZN+IXa4rwnKjumEX2WpHPHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788901834; c=relaxed/simple;
	bh=X2zTGk0wdDbvv6+dRHDxTcxGHkIZ5sba23JQME6nZ2Y=;
	h=To:Subject:From:Message-Id:Date; b=C5fy/qr0SDp8LuH0UNxGGGNa8IK9Pdsc0Acstms77QMGSd5t0Lt0dmppCDeK23EnLBGG5B3+AelbQ7DAuM4iox/KdwpjK23qmG950/1gEu6fjST35C+senSsxYPptxQg/5PcSDUIiI9Q0Tr5nVAR7j5jQW/dsPv2VQhQH6j56Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcTSLR5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcTSLR5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF091C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788901833;
	bh=X2zTGk0wdDbvv6+dRHDxTcxGHkIZ5sba23JQME6nZ2Y=;
	h=To:Subject:From:Date:From;
	b=kcTSLR5fegEgSWznEkyvLeQEafVkVjnK/H4aNXmPSqGzQ0KU36YNRnH4L6ujSNro3
	 d0DcFQBUpHr/dBoXPYeIIW9ZhMqFYawcWBj67nd5NjeEnpvTvD+uq1mHdEAw6e1zc2
	 BuXOQfw8GsukODEl+7Ue+qA9qErapui+howydxFXoQffSmjMBeTtB6nKF8MmKhke8V
	 jIjOYMxj24m4Os8LTx9VrAd1dOLiPr3Jxnz2+ErNk1CZdVZsnh1wQr4BFx2qfXjK6Z
	 POCcoy81KSLfGbRMA0FdpiD0nM3so57T2LPRE4YE8mOFAXghwOFyDqJaL6rLBCOtXF
	 AZu9GxEa4/YRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEA2C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890183369.4626.2700752261605271273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fc7b4edcc256664a83dced58c7b45e780ecce01d5ee2ce18312943987043b0
Date: Tue, 08 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788901833
