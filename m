Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484257E116
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718244503; cv=none; b=lGfrQUuc23P7lXu8lkSKzcJPm4ucYcarT/HcceJHk3i0e3xb9U3/OZX9Tp6P/ZVPWxHBd8lkbL431qiMLDwmL+qhVh1OV4AjFTzukgOCNpw3nMJ3Jd/2SFC9wubhr5nBaMssUyki94DRn4VJa/sCFE+ws5aYphfr9wNnYydYTOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718244503; c=relaxed/simple;
	bh=WlelJFBslI7Vw3+tYg6mNZyf1GiZL6mE+bxyCVMuY0Y=;
	h=To:Subject:From:Message-Id:Date; b=OH1LP+18UQFCJfRgNWflR1MWarMd2KAf6eZMa0OUaiXuWyXwqSv2yztLe0CkC9zXlBOThul8v5iq7oj8XI2AiAjsIHlHVgUNVzsHeylaNWRVJap8onI+Kovmf3hFzvU8ARhzIEDTalSw+knjgkwKIrZC9N8SmwqazaPA9mahnrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAR962on; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAR962on"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D47C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718244502;
	bh=WlelJFBslI7Vw3+tYg6mNZyf1GiZL6mE+bxyCVMuY0Y=;
	h=To:Subject:From:Date:From;
	b=UAR962onM7D3fnKjWv76wzF1CAhS/Q38pe8g4rJ17foo7EIyNrVmG6sMWBMZ9IcDv
	 VnFKROdIWQqPoy5gnsiNU6F3WRawho9zH0qMhmRiIxiKMvnBA1mdYKev/S1caacwQO
	 v6uxXEJixDZi2cN8ES1BnSUVQDr9XWo6wN7sTRoAol/LhqmsIQcV/4qQqgMQLr3+w+
	 VIAG9Cl8+Nz48chRURhZvQd5HZDp8RP7ij2ZelbmMG4pz6MiV0jzMiN3p6TDy9B6kL
	 XZZABX6Il8PE06hoPRuZwC8avZiNAOtjjv17c04WNqEs9fVW/+P5RkGdsx0+rApv6i
	 MBkmJkAtlDlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47DDC27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 02:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824450278.7640.1480748405167207646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d7b944bccb1f539c1260e7c93f654f9644e7d287d01562dcfa27618ddaf286
Date: Thu, 13 Jun 2024 02:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718244502
