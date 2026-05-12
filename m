Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC073E173C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778590833; cv=none; b=MD1Yq8E/rcip2Z+xhv6X2NA+IPJo76VAmyLFghOieRv1EhE8YlaiPcf5658FUQDxrE0LIg7m+fsvBBaxbt+s6GAx96wpF7D2Vup0Yj+7CJ966OmqyJkUwIPtC7/BmEmfExqjfUlM0fWwknkjw36tKhAUFOm8d6IYwevEvQAo3Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778590833; c=relaxed/simple;
	bh=+SnxFtm6K+BNNAgON/XzP3svpdpm/2nWqMwkTEnMOgE=;
	h=To:Subject:From:Message-Id:Date; b=do3rjhi2ma8aTfes+NV8F3ehN0O3UOhSBD8nkjuI3Op8hhZplsHqmNqjlRQd+Ogheva1Pp+pvjq7q9l0+9qoEQ801qm1tny0rtHawGpOYqYPGpnI2mk2Q1FcjWwyRcOeuzxLjn4Zqk9je6MAXV0XZfZGVjD+ZeibemM/XJT1G3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gi8p1I/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gi8p1I/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADFCC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778590833;
	bh=+SnxFtm6K+BNNAgON/XzP3svpdpm/2nWqMwkTEnMOgE=;
	h=To:Subject:From:Date:From;
	b=gi8p1I/ura2EPV6oLrqUvgFlnrTB36VMo4ocdPgy7e2SvqWoAR1Gp7C+tlyXNE6Yn
	 BCLFBHg+EweH1lSt9VilYziJqWaPLEcLezOOZWR0us/P2ALK4eqI3AJunJ6fp1tR/O
	 20G424AowWuwzAVakpsV44s3TQU3yi9PGzs+TDpgiEhsJZSbiEEoW8lE5w3UMVR0T3
	 71eo+x+YV4y6yfrBjYzs8yWDNgnvNG0zEPYncZL5N88lGWPB0hrEqO4LvhuZ/6Aqw7
	 uGXSAapy5Jz4YoUZkeyIMRdS2ZXJo+OtNZ8dE2s/3rb+Lz41Gd1/r6ZJWlc8qMxruO
	 vXlylCUgK/NYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB78ECD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859083369.6651.1821478398412969314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0eec103eb7eb3b465a00e4e4da80083273a3edbe5550528b3c7c9f01f2cfac
Date: Tue, 12 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778590833
