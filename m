Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FF526059D
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759991394; cv=none; b=Is4Nvdyco4W/Mh1x3ff93IajH5FKYorlHH4ehSLJ4oDQyLFN+rwWWrU6vfcd55wr0lAwcpHmMX+bxsZdeChtxWUXwKbqQwaE6l0hwn0rqIy24k9CNPbynQQrxlBPVe9oRjM7TzV3pBSA6GTN7IXIQJi2nIhPEo6np8iziDLNizM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759991394; c=relaxed/simple;
	bh=0Is8YjQczkwVup//U3NpT6DvNt+Tg3pt+40wxwgg9EQ=;
	h=To:Subject:From:Message-Id:Date; b=HDsL+jAybJeDG9wzpYybqYWEJCar89HVefcn1MbInvtUD4vw4gMmPxjpzp/0UdTDFMx8PZ54Kd/lN2+5/34/TjxPN146SvqjWXuaEuJ1vsjStoqKh6ZGWKkPvTh5bPuQeHrfw0DQ3sGdFzO/4WH+4sRsLS+Kcz7wj1TvGmOkf6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSXH392O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSXH392O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4458C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759991393;
	bh=0Is8YjQczkwVup//U3NpT6DvNt+Tg3pt+40wxwgg9EQ=;
	h=To:Subject:From:Date:From;
	b=oSXH392OulDEQ7gurr3e992j9RifRiwDl/9yOXHxqVS6rpr8kHYP8sUDp3ijjdSo9
	 NryI1I5LdGzjHuNlx6yy0s30Ig40AB9s+ETs2JMJyZ8BpuvYPL54wW0Qs4YqOSVyOH
	 YH1QHHVHzae1th3VQ9RYcsDLx63gNVO9KUvWRZxf1JGY72XoNAQNFipBYwvb1e14Fn
	 vyKmYTDy3Mn5s+3a0dGtzb2wshtuzRpqfYvCzxApjWwroCvEpg7DDbC9JIoxRxGoSS
	 qF1wdS3O1aUHaHlTaM9cwfM35p+QiNTY++Rbb13ZpRq4lnIFZNzuFTA2QjGHuPSSjE
	 0k4039Ca3yKvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D3CCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999139358.5475.9011951566681008411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f9716c828010f725b961e6ecb9a6eeb39e7ab43dadecd6103801b823b9cf43
Date: Thu, 09 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759991393
