Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A78741C71
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782951514; cv=none; b=jgzyckub82rbfXJIM2GUL4OMSebdeo3fNmQZ4O5jXXmTmEodf4tApBcAOnOij03xk0SuCiwvSpnUNtFkaUcVweDI5mlVQJEiY2d7JSLnc85DKtREnaa6EhwMjatltTivef7jZJxmAl55GpSMgHJWB8ZlgWAXPGGrWzIFuZAdE38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782951514; c=relaxed/simple;
	bh=P38+E70DAdrGW3v0VUHksWCQcEYWdxRX6dl1iAxkV7o=;
	h=To:Subject:From:Message-Id:Date; b=oy2riCJGpO2Gx7dUckKH3FaqE8hv/k+hFGn39Pd7q8uGiH3li35dK14AW/IVlDCI7R27lhKjWFnpTS1auzrMKNimfT50R43mQBxVNm4OpuENlP+K659/JbVumtACSG2ZhLe/eQBgLg6SKUFn9hlaQyN2dUQBrdxN8190YESfsNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3ey9rvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3ey9rvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94C5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782951513;
	bh=P38+E70DAdrGW3v0VUHksWCQcEYWdxRX6dl1iAxkV7o=;
	h=To:Subject:From:Date:From;
	b=J3ey9rvlGSiMXoERTFz0i83GDnpWLHHjTh13d8QaEWXR3S7qyMjhcwBvaMJfyNnVD
	 bWIoXTDa2lKCsiu7wIrCAQifQ2RgNQZNHk9+EY4TsSdhuIWvk1XcYS0gsa6rqgLLVq
	 84m6OcJMQWTyqbE2I9jwJz5HIQVCEjiWqP9qX564JsDqL4DcbLgvOZjMWVo+e9gb2T
	 t9LNtXwb9Rw7NSkyZnhsJeJys7pKd5W/3a4ZJ0snGFcCsJdRVG+TyzaBfcQJ5Ds2hM
	 f+n5+/haVBF0gBBXYnQu6CnMr+X78lFxelOLzm/SzLqrgvAbyQwtbBawZNxxRZM4WO
	 OTXnR51Sh9MGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF450C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295151368.10046.9926125140157349899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f60d1fe4d641b64028e6f9c7f994f743b0f61da47938d8e025cbf7195f065e
Date: Thu, 02 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782951513
