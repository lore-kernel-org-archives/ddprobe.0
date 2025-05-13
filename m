Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C3B13C8EA
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747099194; cv=none; b=JpulDVnTOxS6TENxNpGkNWiE5NcN54DDpkoY8woCT2Jw1nwZCNZVbSBBUReKYsUroaxPJAxPFpq4AHO9bb1Blj8F9ZKpVLPXycWICnx5aLswNFgUpC1wauRl0XP/sZQ1G9+bcwE40lUcDpUAAB0e9YubIHcr5a76AgtKQXsA42o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747099194; c=relaxed/simple;
	bh=uU/5jgewKUtHlGOgxAqu9q4kEK0akIU9v/L2krrIO24=;
	h=To:Subject:From:Message-Id:Date; b=jvOMYNAg+ebko4K1LTCB0smD2JPYlHFVfPCQowv9KUr1YixHeaWfrERICSLlcv3xKDIrQFL1qQN1R6uGZet1wFQZt0sbb1SZl6iYbSE3moWNxZ7teEX+4oBJiMOlqYJgD3NG7UT8ChHgMNuyBVHwro195CDtEUESYg0W8sCBgKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvd0hBK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvd0hBK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E08BC4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747099193;
	bh=uU/5jgewKUtHlGOgxAqu9q4kEK0akIU9v/L2krrIO24=;
	h=To:Subject:From:Date:From;
	b=pvd0hBK66IaEPct6eTZdwEkHhI1NWOnymH81oOjAtI8Qbq61ZO7Y/SlufPOC8hbwx
	 77WOfRgyHZOrQMLIhpxXPwNXCqimDol4z1EsGXcy53sCz94n9CvDardRcjaju9Htly
	 LbQceEBhgsGAVyEJ+20AN9K69IhPWbmGKuXF1QsHG/GzfdlT4xpZ80I7e6fQwSBXR8
	 4D3BNJgA2UZrJ5hXhzUavKu2uKXGjruD5bnu1mWpP5BC5oPaTxO6YEu+rMD5GGfZGf
	 xNLSHX1q0dxSu9DiH0XDrhxQhcEY+/7+BXCaETc0GtkbRWHg4cu7u3dvmwPMWYwyu5
	 /gz9m7tp6NOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F041C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709919357.27140.8210245563233250387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460bef4fe2db907bb0dfd55213dece7e44f6b1b95b5f440fed3f5c5eeb804d10
Date: Tue, 13 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747099193
