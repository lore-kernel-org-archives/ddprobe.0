Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4DA352C4B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770978894; cv=none; b=tJht3nHn3X8nDBquSW5aVFfw4eqgxCpdrmVPDefEcKNxTAhAY1m9Kzp77K7NyGBiQKIs5D9jPECNX9dMcFADLVgB1UiHyjTrNo0rewi9b/HIFp3eCBUqzQbRYYMurH49Ta61D+EP9xwPU7/grAv5TTHJqzeKZE+oSAAlCFiB1IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770978894; c=relaxed/simple;
	bh=4e81+QJ/BtYYF/FXeWeklvoOBLIcxRbpVSedZwnCUjk=;
	h=To:Subject:From:Message-Id:Date; b=S1Bk5f4aAn/P7yieENJRmMwWFyIEvaEAKbequI3GsCnO+OKzfq2AFxhA6H68iKs3KPjsK9n9fW//9s4S8yrkSPw+cQcxclo0UxcxwJSCfJhPhHVcP1Is6LJRO75CMzbjNhpu2qdCqBvHXQ89M6dA+TCkGDi/G3cnEpw8+4jr56E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pu3B75K2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pu3B75K2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B620BC19423
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770978893;
	bh=4e81+QJ/BtYYF/FXeWeklvoOBLIcxRbpVSedZwnCUjk=;
	h=To:Subject:From:Date:From;
	b=pu3B75K2fYva2fuYGbYwwxKsiPHEXYn+HrQRIO3DSjQ02dJvBn6pGBG1WemjJIxnM
	 ivkVXEDPsctMQDkIgZifnDIet1XJy+uV21nU7NQQoV6Rp71aC4RA2Cc+1ikpVdkCXg
	 zYssktBu0x/uNMhGXHebUXmzIBbp+hOPCTmuXvfkS82yRmd67po38f/4G2UxYsvjF2
	 t6iHV9d0xJEJWdQlNqFKxXErvJ+WxSfKcf88IW8f1xFPbOHqSEdJSKIEVYJ/SeuJx0
	 Cvm6auwfCrlKHarzYJ6zAMJ3dVgk6aSuStz9iJGEDDn2tJ7PDSXu08XrzJtgWcYgyG
	 nDuU5HWfezSSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A296DEDF148
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097889365.7154.1134348333290138144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093cdd040bc0746327aa8b087eb8106acc536cdb8a1e390eba6820a364641a2e
Date: Fri, 13 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770978893
