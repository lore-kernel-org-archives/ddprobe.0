Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F78938E11C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768388634; cv=none; b=TKYH7xNgBZidB6vRg6+9CoyNqJhmscSX3XX0N0qv8WnwAAVpLTrzdDbN52N0sZaXuykXeND9ZVnRhAI8unj23lu08COYGCFGo05lzfZFwk9hJkCqu29pctJIUfwK+fOEJJ/j46Lj1aflFn3YqddZbKMNeRYCEdsCQRwoBUzDakU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768388634; c=relaxed/simple;
	bh=EbBTDYbZPqNevocNtxmIRI0juXGgfmE0qzba2qbafdc=;
	h=To:Subject:From:Message-Id:Date; b=cKMI20W9aHevK3D2HlA9VPcsKsg4JZBm+Dbn/w3CWjALgLcvrC8Gv3YOtxpyL577HjllVd8ZL5CYcLaWBtfb+kCBZFLmxKFeN3mLdMsuRix9AYPbheQ17R/iW2frd0NkO8FLdi0oHGhiw6uEt/MmbkmAl1aDqokYcWEIWnIhhdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5n+6QDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5n+6QDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD27C19425
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768388633;
	bh=EbBTDYbZPqNevocNtxmIRI0juXGgfmE0qzba2qbafdc=;
	h=To:Subject:From:Date:From;
	b=N5n+6QDBgxH6T8hWasoBbqp8mjh02IqlVeZmQ/FVcIWBhBnOaO/5nOKCmxSjlGPX6
	 osgRhMPD3f2Q49ugdafZv37gW49zkZR4hw+5xS1vNd2KWq/3LV6zESBJxIm4Jlvc6E
	 MmIuqInbJwc2k6Q+jXMDNyvCiUjrZWIhCsiuw/AZdqcmVFQjlkGs/Au5FrAKDJhWdv
	 eIvu1HIg2iJVtGMXorlI4/F6kbEAFYJkdwl4FRf//XU/VKwYnETyooY4YfhuRnniq1
	 pjcTfcHFHcGXRnTUjyRRJkqHZVagKlDbEeSfX0DdUhKpwHGljOR8ydlMtN7ajVjxgo
	 zs7EstrhwJb1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BBD29FED
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838863358.27817.1680385868655957966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06695dd0184c3e293f99ccf060a04a66b6e1b78647bb10dcfd630ed94d8284da
Date: Wed, 14 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768388633
