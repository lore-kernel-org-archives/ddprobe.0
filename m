Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AB2161
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712102897; cv=none; b=X0H0A78jq2QX+cOlZ1/uYTOU3DJPDkOFvo0BpjeB0mMCE0pqw8+l2CemK76qRCE9mZemWWXKZGyTQLwFzL8pmnJg0U3+eH6VN8HtQ1Z5KcgAiljioCpWxykOgGYk+IDCzkh8FeOjBPicNKNZj+eCpoQRJsT734aKs6A/ojwEolI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712102897; c=relaxed/simple;
	bh=77iB52SoCTyu2aI71yOvJx45hLgwoAUKOnpVVpjBPr4=;
	h=To:Subject:From:Message-Id:Date; b=fZu8nDQyx5p22FqRd/AKyWWVem5iG9TvH+K7h3NGvLvVKs25NiBmwD56vuYBuYNPZyKkYpvhHBRuU2yJIrAUeEMgF5YKJMQwNxZXcx/zjYk4dHdecVy9OFg/7egdufeiH7LNeopmYSVO/tygZhlISmYu18Eb5KPHs1kQPU+Bqjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUq96q48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUq96q48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711BBC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712102896;
	bh=77iB52SoCTyu2aI71yOvJx45hLgwoAUKOnpVVpjBPr4=;
	h=To:Subject:From:Date:From;
	b=TUq96q48orgqM5NxTwpGWj+HJQ/c7YDypo1lx42UP3vMq7C2wTiBX3Wq/Cwjk/GFU
	 mRWiXLevbWbuIVsZ0MpujnB9v7smNnPq3OyA8vXpgMDHyDutUqGTJlZkrgfBDPz05v
	 CucQ22rKkuvlLs6nkT7FGS4cNh2YWCPV/AuFtyprMoJNaU5TFzwYtNOyBgKm1reDk3
	 POCEhowBRGGFZ8g7mPDrCHJC33c/mL6918z4KFgHhtjLXJod0gtCX01OLnMZZQnjne
	 KEWXxC7/bd0RR/vlvzWMLdsBDzqsvMjVtNuod51pT1I7uSKf3XCPcW62v0m2j31Ur2
	 wbNjPC9Dun7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F636CD11C2
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171210289638.17745.810722155480322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e985a57fd2132489d6584e38e0f8186e622ed8756a5c79766d1e27b769c41cb4
Date: Wed, 03 Apr 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712102896
