Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2CA36D503
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763812914; cv=none; b=fVl7HbhKTuy/oK6f6XYDHBmiNLvYM/l7TjGwmY8AtXZoiedswYTVpmGVpUky4Yd5ToE4rbthLEiK+kSRQzOFxucqryz3HUf7rc/AlA6o/aefYIEVzrGqA/PwdKFJ/7JLayFwdDuKWozM+yljq7BUnOLL1Qw4o2FzJgOkWodxmmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763812914; c=relaxed/simple;
	bh=OuCmQNT++wLpJsjjGNaha8HD5TRTc11LwISXDkSa3Ic=;
	h=To:Subject:From:Message-Id:Date; b=tTs7HB4DtU16/ja1QIUCe9zIZS+/vMTz/qzHLsvuIWnJYCArH8CEICEJMr5aLHnZsBHCbWSxdyIamtxgq0ZB7OC98h5KJQOL+7wldgKl50JjG44EsLeyXmbFedcLmk1dQuZSGzLFQM+Nv9K0MjbLTeJDX4flyJw3EpycpjUMgmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlPwJJTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlPwJJTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8D3C116C6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763812913;
	bh=OuCmQNT++wLpJsjjGNaha8HD5TRTc11LwISXDkSa3Ic=;
	h=To:Subject:From:Date:From;
	b=dlPwJJTV8XCPAZyq3SKSNg4wVy+gaG27/wUXfVvTn0hx1ItJBriHpmKRITYueTtaO
	 KDNxQQx75bRvfLuozalO3Ekaj2979NrH0Xkw5KJrA4lf++hIGXOhGTe/yWvPb+hq6X
	 TNEgkSD0JsqwF0QbunayM7H5RbN9jN+yDhWiDPcNXjUFjPGMqVV3c8mLbAs3LoU12l
	 AjiSEmpetpK8o3liT8J126JsEy1ZpT8JfaHaDiqbzgQPhdh4cYxMNa3i/uSMyoYqsQ
	 maMnqZe+kRy/CwC4rfqFHSSJT0fowZ/C8kFrydiOA1d3BBxtVdwShuxkBVLs8qHJAr
	 cyZeVIefHuInA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D751CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381291363.17008.16661244789856914822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14c493d741c3035969830a7d7757b2513f3a6fa8eb3a41cf7f66a753ed34d66
Date: Sat, 22 Nov 2025 12:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763812913
