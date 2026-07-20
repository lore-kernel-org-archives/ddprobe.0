Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B4F3B14C5
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784531914; cv=none; b=O5zwD1H29wJu9AemrjXtcWReMfgrWDBcWn6BiPBUY3vD7fVFgH2+QiR/csn2Bx5bSRZZueJIUYontAvax7tWxTg1oBSFtaXeyYOYzY44we79Zaquz+K6kqCiIX7zEtZ63O3FRzaUkT4OV1qUuF+4hBhSE64dXbZ9UFOxpgaJcxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784531914; c=relaxed/simple;
	bh=7lFednK7H0w267L8lkl9V+/Ol6uAKEVPTVNfIazW+F0=;
	h=To:Subject:From:Message-Id:Date; b=cCA3uScoNslnGkB1p3SGsmtcgsur+TXllgdrbngtnVFKiKbDApHLyEv91NF5uaZvdz/RSfy0cdTlQRlq71ok8tCXteYN650z/6C29E33HEJKxTUvQ0QrGZH+XvGdFK2VbOMWgkx2InE1tXRdBHwajrWTT7ZEusmazrp47K0foEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khQlr5HD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khQlr5HD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02C5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784531913;
	bh=7lFednK7H0w267L8lkl9V+/Ol6uAKEVPTVNfIazW+F0=;
	h=To:Subject:From:Date:From;
	b=khQlr5HDBTifTOiGHHd5zOz5jCZBhHFVyfEuj0C/opdyuxuB0yszYSV7qef2WlFQ0
	 YTc+Ii6o2M36+jDcEAZEuYTD9rNj0EfWDzl8xwoXG98cb/yhTEaB1+o+ZbQ/ZnBmLg
	 34V4GrPXOdz3umfercFLU3yVwlDL5zcAwpr3cBLQ8KxS13jlD0L4+T333Jdr1iGmEq
	 o8jlRhZugcEAyAR9kXDCG073CJQ4KZ6MPlcMOeT4keGw1tWDqNGF4+0WrLMscpkHW1
	 kRZbGMtBzobDVj38cnzXxXKTFa4iXnJakMq2aIeFaVfLdTsLM4tQ7snvNwdUikYx5O
	 Ku1lP0SHlXwyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF04C44521
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453191369.7738.9157473683261790968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7e23fde610bf166f31e54438ebd493773038512cc50bc34fcc99550f363872
Date: Mon, 20 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784531913
