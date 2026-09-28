Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423AE438026
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790629234; cv=none; b=kT7mh2tdfF6F/aQkq+eU265Cbfa9jcYSK+7P2+xpBfAx8mb8Ocxui/eG9ThGGcSIFnpfO73BxcQog1cTGroruBsOvbONghj0nUAv0zKr02UsTm5a/gSi6o/7MYAw8VJZeQ7T+eTo47ccIahJgGF0PITHoFS2KKK3tUrkAq7sps8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790629234; c=relaxed/simple;
	bh=lu34oGMHy/k0ACvhJpODyHzsjQPqbrs/IIePRnjW2AI=;
	h=To:Subject:From:Message-Id:Date; b=eKPy98CfTVx123KBe0pE/b00Tw75Dh0CVsVloTCMBlJt0WAMas4oOx8PhGEm7KMzn7eordULl3pj2rbvtCGkEWMhBOGqLt+8nCuyi6qDQx32Xf/SAacalJa2Gcq3L9emy2SA9on8pR3ceZ8yDGbp2Beyt+hUNDFO04Xr4WDYhpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyEMEYOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyEMEYOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEE2C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790629233;
	bh=lu34oGMHy/k0ACvhJpODyHzsjQPqbrs/IIePRnjW2AI=;
	h=To:Subject:From:Date:From;
	b=RyEMEYOhKn0K76Tey/dsNhcn/Mn9biMxneZqIskUagx0ku/vz8BQad/Zmn67Oj9kQ
	 YIm8ztA34yrnNVQiQhz5ACKc3bKbdBTxpshzW3wkh5Itto6nKOCqaZpNXgUF7L/TX4
	 GEUa43zcMQ7uftQ7KezvJiaHtPAMQ6jL50PRqG71GrU+X0VFM0BnS0lUYRwxHYttOO
	 ljU3YZlyGrQ8cO+uWuisbbZeuvd1OA5/PKFlKgtWFA3rVRVhtMkhpMb/SuGPjrHE1+
	 qkbjn39RfchjO+raLXRd75mlRaE8KG+8+vkUpYs3I1g8CucE9L6Mwn04unXUuiyQDb
	 4hzvlcfvStPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97BACA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062923368.8330.10265432126992219445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f9019181d8212cbdf9a04cae5e2b77c2c7a35b9ce3db67b0e80f06ee095591
Date: Mon, 28 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790629233
