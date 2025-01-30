Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B597483
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738221355; cv=none; b=Pgc1q8PFC4SkKNM5tZo7PAyDYxpHLru+67SwGATir0ogp0HFOdbQqq7GJtcd9M3BqtHTQ9PSL7HrJXyjNDbsEmoN/LLY0JWu2rP/DMXlH2Zze8g9wPbU9kBhts6IsjfJqtC/jHWikmfSPq+KWxu5In1gIE3v00FsocATz9ceqTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738221355; c=relaxed/simple;
	bh=NJ84dltifCT7I4O3O7kGd+oJWm4wNYzBd/oJKaXhr5I=;
	h=To:Subject:From:Message-Id:Date; b=bjs6ngwsKoRqIkSENb6/edhcW/+jUGpnq36PrrofQMNm+gYuBC6FTa9Fa30SUL9ooNpfklIBGjlp05tzLzOFeoCYP5S38mHhHFCgqL7wstn5P2i2jkpcI4UWJto9g9kBOYAPOqcl3LHq13n6FNeYqWltGBVqPNxpI11npBP70oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJovSu7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJovSu7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF61C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738221353;
	bh=NJ84dltifCT7I4O3O7kGd+oJWm4wNYzBd/oJKaXhr5I=;
	h=To:Subject:From:Date:From;
	b=XJovSu7i0Xx1m4Y1X/ZdcDt/NZFLFvUfzAivNFEuBlGKuAX9WPZYTNPyqptcuZ2i5
	 qDQvtuTy1XBBgC1hCr6z990ALT6jZqP/o1PgGtb2k5J5HmkZyAZLyLQw+elJHfoqNl
	 pwvyawZ5SWKAYMSCtGD+ANQdOcW85RESonLnQZZDhcGFaRlfCbjNe77Eqhzf2M6pkw
	 tsjKc5XTffa2cdsiPyOS7SJvauh2TksYw9SrJuWHKE1lfF6jzRjWez/nujtBKzi5yK
	 DfD53xOpK3M6Z2VnZW9Dunj/HEJKjaCGJ1k+jbcoT0BaLT5LHZ8eAi2nKgdlL6dPCl
	 JiPhahn/KwR+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CF3C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173822135366.20673.12551690791015322321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0e0d0f3e85a42973d03bb6e064f5ccbc37459e949a2ebebe06a2257e9dc1da
Date: Thu, 30 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738221353
