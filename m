Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EC31DE887
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759195794; cv=none; b=phVHjqeq/HZk3rvS5sD4fkGYLVeIKIEXTKGzxLGCC9JfrMyVBxycDxXg7bpzZXuD3v6vVnIx7PiTEKZm7Qrq9mU4c3BTgQIGo/boBQsEuT+jcpTBaGFVKoCJ1FjlJMOQ6eUzkjqTgTcLcfjtjyQIr61UOPq68JIMuzCE6v4VANk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759195794; c=relaxed/simple;
	bh=kl5htdOe0Dpq0VSKo+3K1J/igcO0ZZmQMGn55So1aOQ=;
	h=To:Subject:From:Message-Id:Date; b=CHLXE+eQcSMeQ5VQ0dV5VOB0AFnbSibecAZtTX0ZcbhUHIwmDEKClgXudBaJ6QZUQ69maQUJzzO+EJO7Sc6p5+eQqaw3qZbrwJ9KuhsiI4j0TmSLCKCDgyU8fSosyv/GWm5qxfODHPLicSQUkYyUUf792Ntf8YFAy+XjO4JG/+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBvJK8bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBvJK8bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A478EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759195793;
	bh=kl5htdOe0Dpq0VSKo+3K1J/igcO0ZZmQMGn55So1aOQ=;
	h=To:Subject:From:Date:From;
	b=HBvJK8bvf0Zc8Z2v7ROhIE+2LRuqw2i2JK0bjdWBFCjWuIF9uH78BYtBsi2apKkSP
	 hKgqZ9n2mNB5egFq1I2JXZRU57C5KpOtfOEMGgzBg47K1zL5kksoCTGfpP8Tm3qlTM
	 QVqCjJ32hDbW7vNlK/klXiYIkikUDWSdWzjgE/l9moNn4YopCPvCcrRPXXCXlS45CB
	 kwIzglLDC+Z9zok/eYPIRSRBlLN2tQ66XJNqlVxdvNzKpofufVBBD3Ufp/JKKJDIju
	 VdBgoew+4TxAA6iIlaFDXzgnXIeyWbVeBWuCDygwm+SzbrXMHsLiEumbklMOe30JPa
	 0pLM1PbKSzVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90100CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919579358.27935.18007850347605130523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3220f0efc32b09ab370a78dafb5e9d8a93b3e86c6a997e65439df7f67477c37d
Date: Tue, 30 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759195793
