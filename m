Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB90307492
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750786195; cv=none; b=h6pTjvHLxiHgKe8aTrVkhRSve77qQU/yiRA6rNWMa1HDxUu8nX/bTijRpqX3Y+FhNEoTlI4zTNw1QpwCWO5AgWDqF6+IZ14PKZBtQkOIZ6iEclmq0AVP4PtueLJi77JoWCRA/D66q+ne0lygGEGXCzF5mje86QZIYoz5qjeLYA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750786195; c=relaxed/simple;
	bh=wAntNI8bXdHNhelBHhDxVplaLdHRZTm42Z+DEvD5Ug4=;
	h=To:Subject:From:Message-Id:Date; b=NqK1uDJ1E7ec15VtnE4ExbzGtN1lStaRcRDLOHq4X5BXon9CC0bl2q1WOMm4jdxd+teUVDXHLkZ2wAMYlr031eV+2zO/fimE5nrEtYnpQZyblepwbClq+IVQLSYSUpZfq2HXt15Jv3MrgtWEwAya4214MHBeHiMR8WHyTpyHDSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESopHMa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESopHMa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A6FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750786193;
	bh=wAntNI8bXdHNhelBHhDxVplaLdHRZTm42Z+DEvD5Ug4=;
	h=To:Subject:From:Date:From;
	b=ESopHMa47hJmXLRCDmlgt3UBsGSKCCEgAb418qk0BCkGgnUCUNUF6q7fgwTowgEKN
	 KW8rZ/eQz8OnnVgYcW75E4uTC0YZYzBkU4O5oKX6e+HPp8GiuOMzPaR6P8cx75zbR3
	 Wz+UU0aZ12A81mMX+Oo62DWiAY/xiiPGn1fPc1u5gzmWmCm02pWnqZKxzE6WaMwvj+
	 da3EWl6S6DJs6qK9A5JPm/a2rl0Govc6BJNCNn/V5ikYXKDU7Efa+y5H45oMJGG1pc
	 zgIeOnmuAx02+p8o/CqUXPzl5M6UBy1iSut71KBTD8LIQHBCeoARM+j2xbMVPlr1Im
	 gsWbjo7T5Xv9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E2C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078619358.26747.13772254331496041391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4590a85efcc2c965238f4f80e15eb88313268d94bf9425123b4e28748ce62294
Date: Tue, 24 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750786193
