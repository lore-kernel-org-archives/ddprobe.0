Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237CE17BEBF
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777081654; cv=none; b=ThAj1V8DDcdLcaeQxh2yNAXkkfmsfXmdqdfhAA9pKyubACjclXsoXbEvJyZcr7fPglCdICtlBOTCgwCa4t2UH993fJX359QcNvdfYvp+wM2WbB+7vOd94P48Hcskqd/mkjt8UdZJyXzYsKVyqvvtfdjG+f9pbKky7A7AKD5Lkg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777081654; c=relaxed/simple;
	bh=IskWrmoBYM2XtSvsQVSNZtdJ0AQGveNyRRee1IIMC24=;
	h=To:Subject:From:Message-Id:Date; b=FgA7H0oEi+4EsQRCj/UsM+iPzTgSoxKBfdHgtCau7/ixQB1HrVv33fqEhZLDcbD1+iiT2JiLl8XK5NCMs5FlFAIVnHfxPh+Cfh8f7Z0/1xBTb9EBVFvAwjzyB8epKtk7jHayuLmsqpioF+443Qd7l1QufjPaLh+2rtbZHZmNetY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCqFMw5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCqFMw5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1412C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777081653;
	bh=IskWrmoBYM2XtSvsQVSNZtdJ0AQGveNyRRee1IIMC24=;
	h=To:Subject:From:Date:From;
	b=jCqFMw5xW8PBDu7OtJhLhGr1rjm0KXbr5CkHXF3bvyWkGIOu1L4+UmcML+uXjIisj
	 R4yjrijXhgYWy3nba6RVHXAfSUO9EdNnkR4ctOUZPl4h9b755r4xpwqprd0RxZvfco
	 IeePFQjcGTluqBhqxg02tMkxo1WWm23MdqanKsD9h/lJGN/M66k7VBtRquAbbLvdc4
	 RCu1JHKugaYd36YaBxVyAD6mnai6BGtYMX5BVZf6jKg2ySWadpydVorLCkGxBeQSK1
	 zhFKYqyEfapPXpaWXYvQgzyZArC5H2SYt2HV44QoU7fHiOmOJIXJBvDj5XHzXF5cVr
	 1GdI5zfClR0Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBFBFF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708165368.19838.12214394268138644595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479631f8d33560c3e16b5bd5e95d30fa1a5c0ff3c3feebd02ffbbcdf22aeab7d
Date: Sat, 25 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777081653
