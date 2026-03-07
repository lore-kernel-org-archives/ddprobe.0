Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAAC12FF69
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772874294; cv=none; b=fJZC9CL9M3e3t7GvQK584TXChtfwrpEOyq9g+nT3gjLwPjJej1VlCgqdNoyIMWkaFSLsq4aHOtCn6MQ0Igp+OeYMC9+AJ7MKMFIDltrWvoq7DC+jI8Y6PvVlrONZbk8p3ONfMHTFHH11pgjAf938Cw3ZoyHAiBEUsCMu8HqABVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772874294; c=relaxed/simple;
	bh=c5vtWHK6AYvigDQOqrOiJKbZCks29KYetVtUW97u3hs=;
	h=To:Subject:From:Message-Id:Date; b=VXk8RaOGN9Ck7Lciz3TRYiRYVMPBYDNJbxRkFGvTOpJnRJfW9YjjiEShnuMuo4tWh4Kyg/m/ZM1oyd97fvn1ZadcRaeJ1j4YkAzpicaeBqze3KgBuPJJp7XYTGoXG5HAfGK3DISRvORzWhPNZ6TrxVU2StZwNdYlmQ9mwzfmot4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCnQHkHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCnQHkHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CBEC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772874293;
	bh=c5vtWHK6AYvigDQOqrOiJKbZCks29KYetVtUW97u3hs=;
	h=To:Subject:From:Date:From;
	b=BCnQHkHC3rHzgtdAXM3SdirEZWWrUnZLWcOH4SfzQKV7mxtgzOm3Q6PP11bvXgzz+
	 5/Lb0lkgfPrTFH7ss2RXskLiVUdLRSkvzfgmarEGzS9yf8lcSNLKft+G3sjpTtIHRf
	 vzkXrAfsEDx1SE2KPxzjHkVP5h9b2JEM4M9qvlL3qhy1jTV5dKGrmITY5d4WluZYSO
	 RiQjrR8MnJcbmZTyz/j/cKMMo2gfOgtVwnR0nQsyzZWKq/b2IpjeHXM1X1qRqCgZ6A
	 1xNCYyHaj6/H+U4evXQcunkF7Dvfn6IM862I0EsBt/V7MX45EulrNR3smRY/ftmuKb
	 D3uy4xtQl2wWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB9AFC9EDA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287429364.4620.4035151058798965061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901b7197502bacff2e54efd862ccf039933622aed55bb52d4f2e78682068125b
Date: Sat, 07 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772874293
