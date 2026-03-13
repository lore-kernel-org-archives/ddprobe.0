Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4D520468E
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773371094; cv=none; b=ty2C6DtxLpw9sRoXscBwXF6IGGaVwHuo1s9soJC7GIcZx/dcUPrXidYHQcTQfwzTz9WUKsl5VG/sgCpqt/qG9xGQ8yZOdOdW2iRh46uAMVo3oQYbu9SgqMeAfu28ckIn9o67Qm6KK/0xTS1UI1k059yU4YmrIbV2QsLWsrktNR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773371094; c=relaxed/simple;
	bh=S0hDSbv6ejhY6oQyvmZszF3maPpn4+wlrL6L1+25zjk=;
	h=To:Subject:From:Message-Id:Date; b=gFlEymGnj8pn8kNgb1zCXRglLAymPRJC9MaoCeHzbPHXmLFaAO1MffqUJP37xrQf67ByM7Pu5HfmR2PiGo76MWkTEadRFshS6ot5UVqTnkH7m/9dVPKlwIORq9oh1NUkcgs3ytY+7hZlibc2Tnty0RFZ32g9U81yZ5e7afGNntU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHvqW4R/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHvqW4R/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD795C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773371093;
	bh=S0hDSbv6ejhY6oQyvmZszF3maPpn4+wlrL6L1+25zjk=;
	h=To:Subject:From:Date:From;
	b=tHvqW4R/8ltooO89qp8tmF+R+C/G54ZPXX77nW0eStldBQDyfyUAhDnYz8JcyvOKz
	 zUMglk1nNFzR7zFgPgwg/k5vbKMpDE6vC56ami4iOWdluLmeJYoxJ6LApIHXCHtaJT
	 QqgcYHa3cTEnkCAuEhbJOINnIbME/azeTCVtxiBg0lPkd/dnY1rggFM95LwcShzI8D
	 73rxGVfLCQEyhC501IJpxTJAvlwQgHlSrnOcIENxKN8GXL/Hlt0V2DjQcdZsOmjn8G
	 rzQAor/g1c9axY4MGzOrzje28RRgEr7LD8k+k9+bvB1fRtTMUxaMnSym4+5wNx4GhJ
	 BSR05eeEvd4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97078106FD69
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337109359.1949.11863677081785640297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d27d4f3770d5c65fe215be0d6266fe9fc1bea4b0ee4a4802c2a32c5b895a48
Date: Fri, 13 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773371093
