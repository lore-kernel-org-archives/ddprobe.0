Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A22517591
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720872023; cv=none; b=H0JM3h6lcPZx/QagcmBu+fZRWX2sVsnAS39NJFo6X0goMBjdXKJCF/7ez23CAs/Tuj87c1yBBo+Mc3G887qeMShWB6MfIFC6qrUSGkpu3zSCQ5xE4AmbQAcwU4cIP1N5mHaR+NQ8CYZvwqJ6bBt8ScWio7Ygq5PHQZnEXt/XYMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720872023; c=relaxed/simple;
	bh=e6G8osFx8g9uyiCCDza4uC/Py/sw2dPm0OBAUQckBr8=;
	h=To:Subject:From:Message-Id:Date; b=MfkG01wXbrcSUOOQGvWnD0ws8CHIKpY70mr5aBazflVkjLLLF0vxZirREoN9P8PQSFRs4su16BS7mWR3oq44mBbO/Bw/4dCUXZOW18DKoFeJfDLC0TaTc/NkK2ihxWwLZ25JHpqFRgMYfeKPmlGE/mBXG3aeb5UFDqOY3UGz9Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc0uzxk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc0uzxk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2800C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720872022;
	bh=e6G8osFx8g9uyiCCDza4uC/Py/sw2dPm0OBAUQckBr8=;
	h=To:Subject:From:Date:From;
	b=Cc0uzxk79ByY81GHj6QDrvo37+NeV2a8gmBZfZldJvpw6Ks8aU2ba3D5TleGXKnZ9
	 7zUexyXeitOfgghJClXyYEf78h3PECKRlQVkf0M+vXLjiboaEwk+yJxTY4PcugrPIP
	 X44WOOEojPjZ04LZe2PUGt44404mACexZVYPEerLhwV+vDlZ2zvFu0+O4M+epO7VzE
	 04egUr0EWN6YEZ7kBcBhFsqSd5hhUv6ulBLBG8+5m2W+k4CYQJBEcs2ocGxLWeKIgT
	 lv9HAKXUJoPB60lAu2kLRZ8xxQiNQJWmtjFY5ZFScf/1QRvQJE87iQYwv15oEkYgUG
	 S63SAIXoiNgaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE577C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087202283.27723.9251095100847956393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58dd645976920343917cec748d5bc4174ae0ccb1c74ceda3ed4eb0b2f2a076aa
Date: Sat, 13 Jul 2024 12:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720872022
