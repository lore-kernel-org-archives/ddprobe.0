Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE0525D211
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744201194; cv=none; b=KsBpBz3tI50MF04YF0M7suFzyv6eQ6F49+TWMYUOjSXtVN1yqqyCtcH79E5kCktGJ5ilB+V4DOOBN9Rq3oxpj/DyaZ0oTg1RdSOOa+g5o6ZDC2hqZ1/646HAykGpQGAKwNz1WWUXIrlMHVa+Xsdsz5S2b0DU2SxYDqQenCDrPJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744201194; c=relaxed/simple;
	bh=egRtWK1RMzgjboukixaxCKXtsu0SrhDHn6Ye7KWxPsM=;
	h=To:Subject:From:Message-Id:Date; b=NIXw4B9F51XRynp0sncPwGf/kVJbh3eqMq7HT5jrpLdVAjOTUsL/E0lFesyQGpiKCcC6mA0WqRPJOT0E3EnHDBrsoSxqW3KBjLFqqthdCN7Hv+3AKN2RxoIUCOEabjZs1sBcV8t+hAQ+w8fY3gG9XpAAEX1ytT5+yAVThZmzyUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9dhR0zO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9dhR0zO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24C6C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744201193;
	bh=egRtWK1RMzgjboukixaxCKXtsu0SrhDHn6Ye7KWxPsM=;
	h=To:Subject:From:Date:From;
	b=E9dhR0zOcmwj5pny9Jr2Jrjpwgp6xvb72Jl8w0dZg6h74bu952Q8pYmmwTQcOQ8HG
	 bStGg1JKwz8bMTMWC+RP0wHUs1t6wEmOxfFjS2z8iMftW0s9miqDy6Y63Knd0q0EWp
	 gShsRaOlKAc3jkyALKnTNNLim/ZeSjNM7RNXWSSUHh3CrL8NDPYBMkyweeK70q9REG
	 e4Y6TP9A9/s1jJ49RCgTq/MdXZCSbhK7kZPD9V56PKKPgL8sSb8atzkwknq7pzaFXi
	 q14dxdbcSlT+gf9WAp9pVhERcpCt5SH7aPeeOvUqd84lfIqNH+O+Ov0pCpmsTe8x9d
	 l+mlDcMBPIg8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F38C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420119364.6303.10080181517198120738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c09e404a6007dae32a82fea0e45535788afc9811b6ae1c2fae15fe5afc358f5
Date: Wed, 09 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744201193
