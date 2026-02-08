Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB785FDA7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770540234; cv=none; b=DAp1RdzEjk6eKfIdtY4RQ7OLYs3nUGlcn/nfiF7Z8jIhvw+HBrTqdNVenTpPRr1W+mFRPAC8qkbSkamUjqKkGp3U3/cquG28NsIMcGWI1KlWJNhe0boyk3BfXzqQb5wNMtKoW3U7IVW43J/BXuRupHiap1KNWxi0JoX9WunReLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770540234; c=relaxed/simple;
	bh=WCw1q+7hN/L4sRZHOGeMyIG1WPk7WsX+2Y/SNiyRRzE=;
	h=To:Subject:From:Message-Id:Date; b=H0/He+iX8g8QP2LdGttmK7ISA0kw6bKIl2kltrBfqETAQzczjphR/ekMzR8rMjLZPTRuB9Cdi3Rpef7TBl25gPrIwENY+uU6N4bfa+tETOJ+AV2ym8RLnbONkPyNwPlt1jb2+1Q3P3euLNmrblxba9iQr5YVpZgBHmT0cX/cq1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMFdeAgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMFdeAgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD4CC19425
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770540233;
	bh=WCw1q+7hN/L4sRZHOGeMyIG1WPk7WsX+2Y/SNiyRRzE=;
	h=To:Subject:From:Date:From;
	b=TMFdeAgpQNNEjAqkRkth65+Onqak0Qczy3261MmfbSA8T5gtOFTSOWuO7+kaoLQFU
	 wwJZ38gw06pDGVobqaB+sFWr1V5Gt+B28ck7z2QLQMlqC+j0hSQYMNnTL7aqeMTEaD
	 cVtfdTVmcVAEOAZGJSv7/YKWdQNkCIy/o/RzLzR0tlUD/TTIqYXPJquPXHAIdhdebf
	 O/fVHwKRpK0ZN2aarh3Me5/Wc7L9fEqtnL3zO08kMDV4nOIb5G3d9SKs/bV3oxUAxS
	 UQ7kpTUGyZL3SL6kH4p7M3UcKdnIcGQK8WAba4B9HmvUunlsAwYe80rUkZ1PDnoVEs
	 kWbKxeoaTY7wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D26EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054023360.19584.14775817000311518564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c1a63c0e126040e27771dc4b8fad61d17f6ce09c94efb5d924fbe571e25396
Date: Sun, 08 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770540233
