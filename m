Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4206130F924
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770755634; cv=none; b=o8KB5E79hEKIv6b5ysGopZfmZ/1+p4Som7Hm7LmQM341jk0M5C33pBQZK8jHsnpkpbEdYVYjwmFsxErgDkUy0rVTsjVS18cZZVHAz2uTg6jmZyVhVM2JBfup8xJvN4di0xaJyiVEgvRhAZuHQAHTxIoQVtLEclP/6Q087uT0PE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770755634; c=relaxed/simple;
	bh=h8kQ+W0mPz2yML6DQfnaN3iuUCqDyjx9ymfPQulWLlo=;
	h=To:Subject:From:Message-Id:Date; b=ptwRsStv0baOZaFTJViyDCY6srvzo8fjrqebzTuDWPKfSX9LyQD+0iyJgcYt0Ap/HmLOjCr1cDBvhI3ii9iQ0SM8Oa8Q0rB3se0qhM6DJ+dt+G4ruZDWdPK6cdnArrmZmmIIFKFWdGX0qaJ+h3sLWVuJealAG4xTy8247fbZ4zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5ZQCl8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5ZQCl8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83D6C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770755633;
	bh=h8kQ+W0mPz2yML6DQfnaN3iuUCqDyjx9ymfPQulWLlo=;
	h=To:Subject:From:Date:From;
	b=O5ZQCl8K0I4fps3zyebjPshd1OR7cvENHV0m5tTly4octFA6SpCZc2C3yXzELYaiG
	 uiKq8yOT9JID7NVqy8RmbLrZWDsv/j6EhNSb7BDRGx9DWVSeWaNms6H8K1A2IkZdjE
	 svl873VzJ/O+PkM1WF7Qmvdwos3f3/YITF4bjZC3OPTQIrWWTMxjo9rMzBxFJyLZzr
	 ZY8Hio8tOftE5wlpQQ/d69hfpbwa6mx1/VXUAq0vZd1/BULuGzgaERZn93Otc0Ml5G
	 lYzXtVjQ3/8A4NiRmsMDoXaE14+NN0ZyF19mDkQM2gIKQx5PNYJQfkNr+W7DSKuOSW
	 yMFoNzNmLJv2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C91EB2712
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075563362.17103.13439617243700999075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf73e55d863ac46566bc73000e00b20528dcff3dd0f108312a3b0ac98b87ff6
Date: Tue, 10 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770755633
