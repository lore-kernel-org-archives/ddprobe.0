Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B1EC8DF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737725154; cv=none; b=QcFFclatJ8NlczFCpMgJWFpX/jjCg9IeSfY9d0CtbYbcHRcASY/k5f+YIxNCcQ8g36UxCsilzM1dWbNz8E2xf+yoOCP7j9DEQH4g+8fzg0/3or/ouDOANVBQMJiS5oM2GtjtkHJozpRB79LA+jqtIz8Dg5GbNU0YWBXK7mu7HBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737725154; c=relaxed/simple;
	bh=Zr6Jy2mHctpb3c5bYFP4Y+LT7r3lp4s+e5hR2RCT1Fo=;
	h=To:Subject:From:Message-Id:Date; b=pZM1ZZ41Ts+WvPH1a40VeIsZGzHxa4U07YKMO749MukKl6+vvKMFIIIZMNTGVJ0niTmVCWUoO65vQdJKCtC1JxF9XsNav0WFwVIA53wFTE13Gl5aUfWd02FKdUlMcn4OiLLu9nmYGc5H+22lIo61OqvuvHs+ls3cEf1rsalp2LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6IEmL3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6IEmL3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF1CC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737725153;
	bh=Zr6Jy2mHctpb3c5bYFP4Y+LT7r3lp4s+e5hR2RCT1Fo=;
	h=To:Subject:From:Date:From;
	b=n6IEmL3HKgv/oH1iaiXWkYoBwJTBJuWdE+KGlw8w8/fpHi3UaGOVJImXXBNVjdrzh
	 KKYCZq+LjH3i/+cl7p7gDuuK21s2zp5yKYFa+vhDCqE509fxUplZ3XmB2qEZ4MC5mA
	 0rMX+NX2F6jizXpSklvafB5mc0HKdVd/Qlrt/f7poXLEhS+uzp+cFzFNOVhSSTt2Bf
	 pkYi3nVFUKI1u942qVjR5t2sY7t/drZkqGllPck7XMITMs8DNBnf3D9zHUp8fp9ZeH
	 OjMALSfjwKfd/TSDFOTSjrkV2fITzFwA2P1IAGKWzR5M+Bt8FSgGKyDqmU8oy9oMq1
	 uIX/p+7c8F2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A19EC0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173772515362.12406.12136011781825573401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a76109e61d46610e9fd7081d91d7a1a7ab683cdc7ecdbc3349fef92b8b9980
Date: Fri, 24 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737725153
