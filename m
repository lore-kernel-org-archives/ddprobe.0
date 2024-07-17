Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8B6183062
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 18:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721240723; cv=none; b=meVLBwa00wFaqXoXO7QIusMVyl3EVuz1VSLZBEOmocU0sIKioR4debmfdaLsDqt8xiXbT44Jpezxw5CPPyBP2tDcxl/RSWkmUAeb/BcH8DJma3bznx9cXjVWenQhZxu3xBkeW30MMJD6oLJaa0doWDII0M2LuK3b2SU+Z2kws94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721240723; c=relaxed/simple;
	bh=GwtBtkjSSCerg+HB21JffjkmdYlmB6DWfh7Cf5VKjZc=;
	h=To:Subject:From:Message-Id:Date; b=mvIT/rAFsuTFqIJ9cun1Og8NcXIwYGUaqkcwGrVsiaNuJu3WlVYSzN/KiVDpbrlZ6h3cDw8h3n8D/OZYzzlCMsFVL6lz/lB8R9Yr0GJBbnrxSvnqpT3MCCa6bAAtWJ72uh77H8IWtU9m0FTFyagEQFlBeWITlRA5DjZKsC7RSQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnwXujhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnwXujhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B94C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721240722;
	bh=GwtBtkjSSCerg+HB21JffjkmdYlmB6DWfh7Cf5VKjZc=;
	h=To:Subject:From:Date:From;
	b=BnwXujhdqwBtFKxltoq1ORGdET/7H3KOpxXmobkQGDHQ0f12rY40PNN18PGmXSj1u
	 Cgu85usfsB4ujegu3M3FIzg9yBrW5CEjT1rh0uuUh8tSjCXHuqNT6qucE3OrpsLjvT
	 kjfSghemckAJ46zgFt06sD3uGePLeluPsRbASN/88XCcWkrKlweSvdfLl+pwb5SXzS
	 4yjfHNx5Iz+rccdGdYQINvHW7Jes0jsXGCbTx33UP/1lOQVN3fQTyWfj8T4VRV6srB
	 YUhYT8eb2qviPtJg9pL8bzag61imIYGpIMgTdRY06kLCOrWIutsY7d9YSdyyT1NAHM
	 4xqHBvj+En28Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4837C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 18:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172124072279.19475.16707989695006951354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dbdb19b7e4c424a709162d8977bc6504e063d6c1999abd0ac4696540d6c6027
Date: Wed, 17 Jul 2024 18:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721240722
