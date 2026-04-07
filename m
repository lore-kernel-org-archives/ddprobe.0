Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500271FF7C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775546134; cv=none; b=C1fjPBehGC+WtDsZ4HNssN1Z+vBAa2CIUsn4IT7UHOghL8Amb7hsPFEciuNNP2kjTtF1QBfTxWAifhmLGayHcXCZK/KMwRUTEI8FuODIhbl+5lOz3KW6k4cyr7NAH+uZEawBaVhj22y2ImPQNI5IH3ci3XtwznkGSI5Lhe0DE+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775546134; c=relaxed/simple;
	bh=3wbjLhU5CjHvb4AsceSAFlOT2/7pgNhvDIQB8H7KYes=;
	h=To:Subject:From:Message-Id:Date; b=plg56FQaQqkoiv3kHMfG/td5J+fd2fmVoPa5R+vsrMcMOs7sox2R651pFlwQp1enEJyzNIjRKaQfiMNl0pfFn3opIFcg5V09zAf3Cc/IWFQs2o6gVhrxAilGYxr8AwJvc9Gc947T0GXIuGcvZurjWMSZ1SZX3qQG0tKcFOLhpuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5xkkJvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5xkkJvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D18C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775546133;
	bh=3wbjLhU5CjHvb4AsceSAFlOT2/7pgNhvDIQB8H7KYes=;
	h=To:Subject:From:Date:From;
	b=F5xkkJvgS46GU4OuM+3ecEooS7P+CqIrmRTqQs1FzcoDgYfembbjklFNVlhvGjq/f
	 Tam3I82aukbq0b5/r/Kt7w0sZJi0iCqY8b9ppG7E2KLxayrq2iVkdtrJahCZvWRaHj
	 oDcaF8mYwCjwm38iTZHrdHzXzEcQDmO3FsD67OEY9AZbZu1l4rzeiKAJPfwur0eJxj
	 KDcBt/SNhjTzreRZcvXD5Z18m1ASd8wKBVNMK02Pt6E/G8giHIJYtoNWgUjsxIo2pe
	 IWq3tfLLOTLtumYEtx59m9mWZ/CLU09t8zD2bha5fTRiWK7zeqtkeij6+DrLYYhk0X
	 TUV7aKpWp4V5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D127AEDB7C5
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554613384.15636.4421726243746152477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9326057e0bec3b6dd68dce03bf352e52ef339affd977702c8cfe9126ee0ac406
Date: Tue, 07 Apr 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775546133
