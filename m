Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0BD1A0727
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723578354; cv=none; b=VOPu4VUMsHR5bq6FwJu7vV29gx+EgWc3Ki/vib/dP0mea4fT7RjGuo18902sKqJiX2OcgFMGWC7i6YrGCFLsZyfC5sC8sz44bpL6JYGGosm2KmRljR8GML12aVA9gHAoIUHUasBuptNZdDRsS+ctUBKde/YQlceCSYVrwN/Y3xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723578354; c=relaxed/simple;
	bh=6Wo/5YVob3b/zBe/Rv8fyvuPWHJRs3eHFRlrqChielA=;
	h=To:Subject:From:Message-Id:Date; b=Tdimk6S20h6XL8J+RgUl6NAaoMs0BfXgTMGK+AKT6+WsNO4Vk+5ozVSkD3dHFEfloZDK88Jqob81RAQxCgwsob8RGH/zTCnoEDd14+lBZcskRwNOKRgxJ0b24MZS5t2MLFKS+L6RcqnGLH2Xo2KJbTZ6ZZTbKcZ2q9hreDKP14o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR+Dqr8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR+Dqr8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62FDC32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723578353;
	bh=6Wo/5YVob3b/zBe/Rv8fyvuPWHJRs3eHFRlrqChielA=;
	h=To:Subject:From:Date:From;
	b=ZR+Dqr8LyZoAg3XikMF+eIcp9Hk+9v0/cOZOCcEF9IU9UNcWj8Mbr6OVmFn+jIoCi
	 6kIydXlIE78I0BmJQDqHubNeg5UtDUvtljmPvZkEEv1jHHEkPove4Gaxcr+aIsgIt5
	 pjOq7b3NmXR9CrTh/7MbcwCpjB+JMWserKjBJUYmYJWCufwiEJDjO0xQJg2zrnpZj1
	 WpNB3C/OLXFaYBnOuKRk2/6p1sj1XZHlKnCgKlFHOWCMNIf35oCjMvGyaWljMzZVyf
	 Ueix0iH0A0UwcRqO7tpzgh3RzYDt5+qB6h6kEDdnCO5Bc1knL2nliSUtOOhlvNrKgU
	 5iA4gVvzaA9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9709AC52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172357835360.12267.17483543498036206765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdaa3522173084a6527a2787800cf797c7257d9e0ebbe307afd4849bed1e3024
Date: Tue, 13 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723578353
