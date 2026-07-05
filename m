Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB96433E8C
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783228714; cv=none; b=Iyp9rsHj0hrzNlCM1S9LKG9jQxlkdnhq1lf2vC93lTEFWAp/vOFM2pCwFDZxvfDojwUVAIS/31vuz0u/VcsvGpj9SBKc3xvrX05N9qIvLrEuREovL8ONnouMa4U+vhtvridT16/XNhFN4VQUxnynCVyESa2Oft1KHRXPJDTt5B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783228714; c=relaxed/simple;
	bh=pkaU7NYxzCibmrk18VQyDfhS/I1Jvw6blELpqY0AXdM=;
	h=To:Subject:From:Message-Id:Date; b=gJRJnWVYNKIhe88HWIzvkfuwE6xdMZ+NMti5cmuIKQX76gAaM7ZpI8LPYtl5JyV+tYo3xNmoFhWmIRU2q9srCyTmbU9jq5C78wYyMTv9eT5lZOrDojIsmD3jaaDGAzIhXqdqAIeV5FqmSxH9wEMVGHF+XO+sbFj1qZFj2sBLcDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxLlry6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxLlry6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF725C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783228713;
	bh=pkaU7NYxzCibmrk18VQyDfhS/I1Jvw6blELpqY0AXdM=;
	h=To:Subject:From:Date:From;
	b=YxLlry6Z8ATWLxjB7fc1fAlcQ28gRYYm8MbY4JAqu+f/B3TAUlseCJKv11H07MgOx
	 hABCanfeBLIuPSKcpLF1qrilvssCU9B+V9YKep8u99yUSiEegDc12VYYTx5CGyYvPL
	 fvr6vQrRZhZ7C6V74XcFu3oLRW4PghlwHu47q3fg62n7tUxQzjDir9WFL5A1NbMsVV
	 GekkjmUBRslr7BMczpQ3+E+EPgM2uhYCQh+UIw1Yb5F3Sa6QhsHIvq3uj2QSZX973v
	 Wk4Wn2Ae220HZ/49Kyl4cL+iGJEkVrWG6sGPUkjp2kB/613YjhpYjtIMrAkh++DjEI
	 O44uvsTuuKzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB142C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322871368.8137.17461611940978983686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5ca675d44c3ee13b2ad1967fdf34d247b361bf5f19c1f5517c68c7fca16de3
Date: Sun, 05 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783228713
