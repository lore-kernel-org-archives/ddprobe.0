Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0925279346
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772913893; cv=none; b=fapq8U1/2mjEO1Ab73x33wV6MyQoJWBXQ/TlpkIlWoJGFjPpcPj55nTFTc+DTNgE21v6VjOLpt5qviu5MPWWI1LU62NFRU38yaA8AbapeLdeJxG3/R+IC5oTpxr5ZlSJq6z/HF/mAAeCasXEvamjuj5xwUngwXTYuBw4ydw5RTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772913893; c=relaxed/simple;
	bh=MwUUIByZA7+Y1vBMu+2e/inXYz3qOen9TWSqqLNChpo=;
	h=To:Subject:From:Message-Id:Date; b=gP0gsURuNOxSUFtnP4KR6fG4pHItStl/GFS3ySHAUEECCSeh6UTdpHquWlNS7h1aWVPCbE05L7j7pRR7oy/+t4yAW5LuyjbWWOhNJpqo4+BZw2jSwEq5oqP2Qw2kSpftgjJrFo3aF0vs9kCHjcUDeFlX3q5kMxrrsw9RzVnO/ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAdmEb9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAdmEb9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2964C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772913893;
	bh=MwUUIByZA7+Y1vBMu+2e/inXYz3qOen9TWSqqLNChpo=;
	h=To:Subject:From:Date:From;
	b=aAdmEb9+LU6XcLgZuU89oW6fKAEVn7wWOmUZkGiWcPfuR3ihhtZPNsaxSTBDZNG4j
	 QmvWJPDEy+AzstWZ5AYBQclK0SNAbti8e/JzcaDphNNEWh8CLlZ+DmSu8ST1jRw9hT
	 a0DYNMVsLxNA8KjdsyLuIleuTI8b2NFmgRPgULASbpyfY4RY3sLOF9dxQRx2XZuPqy
	 DW4YQCa5PAouyQZGnTyAB/MXNXj8hgE1abT5yZ7QjtbHkgYulpsa1+z/VQaxhz6WBQ
	 AasGdlu5VP/iJMr52NKcPS/QbtDsby5uyXWgURs8ZTyBUHwCictg0h4xf0NqLOaJj2
	 6WIQUEoCnLICg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5ECF55104
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291389357.18389.4568632977870802546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eefbb393ee8ac6920418d6188e01107366edee7a47f2b843de1ed33ac9820b2
Date: Sat, 07 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772913893
