Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A483207E03
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733723754; cv=none; b=geM34uBsw7NuWnCxT5qNEHkQIG9sRN4NCy0TPHdr95kE8SRFPJUnOi6E6aX695+aPC5PZX7ma6puDUmaXhPR87rPIVWgyNQU31yaY0e4rwI802D/KI1slpT+wajGJUUvK1OOuSwuVkBWsITVQGyEW8IcLcFnC+WmEsF/m5Ylbu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733723754; c=relaxed/simple;
	bh=DxvehgKhdAc9vGxT8LN+p8oEkp7eLKT5zBuhp4HkkgM=;
	h=To:Subject:From:Message-Id:Date; b=U4TmzSfRGJJrFuKPCRFCvwGidJBoE/+U970aXKbhv94EeZFyXCTNIS4uLHTty9A0AbLc7Qm3TDNyJf5u04vqIqAq9PlwMjlR9obyYhwR4vvMAq5XEZeWfdbGFbDbMwSCab0qXfLfR8UxHMkBE7s/aOD8B2CTTKoMmLTP67ztAV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaBlz3dD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaBlz3dD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB76CC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733723753;
	bh=DxvehgKhdAc9vGxT8LN+p8oEkp7eLKT5zBuhp4HkkgM=;
	h=To:Subject:From:Date:From;
	b=CaBlz3dDX74u1/kePcN6C1QRNxXcEmw/mMfabydeqRaa0TQEfhvaXH4O7xwrgFs+6
	 zVVmz2JiQdF/pHm9gt2yb6I97jzTud0To2rikkvEvVHQHkE1U43vnlQP4oWvFxexsd
	 l2QFMbeCnfQGdOXe7Dgq1+q2TUO4P5BjKvGgipcfkmuZ6T087djy52SNwdnzxYnkmf
	 1ZP2KvTc8xpodog8Aj6rs8/9MhSatyf0ZrDpQ/DjvRa/aYsK/3ViRe08hp97z7v567
	 FnRFSNoCI0fcnS9eWbB8zzhOtrgkUdXJPlB9BcmX5N9mBeOl60+wMzFCHytvP2WlmK
	 Rrtb3b92KslBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998A7E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173372375359.968.12749320604916100480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ca348c702ec183fc31e702667e6ed969c3044ee619efab9f6f64ac2123fdb9
Date: Mon, 09 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733723753
