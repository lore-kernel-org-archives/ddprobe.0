Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB7C8632B
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755365994; cv=none; b=fjxfvl5IV731E5uCuFNvWVgtQurq4Wc1GencMu/zLinNyATcxmmNk5sC3LcwYXR6tyVumNE1rJ1NH4cgrvg7GvODuL8mhBW570euzxZj/OKeDVCwDUSTWVYl3FFWGJaCa9bvIePbyRQlWPZBY/oNcrZ/QleO3qyHdKTYLDxtG54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755365994; c=relaxed/simple;
	bh=Y6T5ypA+UuUtnoZ7oMdBGRBvMspNLISqWTsx2KGxlK8=;
	h=To:Subject:From:Message-Id:Date; b=CFVKTirnmEjv+/eDjwwRAj/gaNlFy+s+dnGvuRovCM29Fm5JokzHtflh8j52OL47rLrxU05UwAuxf3i5Z/oJiPXfNN4tRniXBCpWGI9cb3rV4dMSBq6pk65geA7cp6XFADP2QI/R3BymXU9c4WvfDM/WXyaWn93pWJp6JO1/Kv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBjEjCbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBjEjCbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755365993;
	bh=Y6T5ypA+UuUtnoZ7oMdBGRBvMspNLISqWTsx2KGxlK8=;
	h=To:Subject:From:Date:From;
	b=gBjEjCbfjXXKbEfiuKPJ202aegMLDgm0txVytpnKqD3xRse+FEhrRxSqA9/AfyQfb
	 kqaRpLv/rI1hMzXDLoXYHlg4hAwzpWy/v5UAlknJG68jdg0Tnz5joK8uw8+0l9FKs5
	 Gu6nW6cc1Ws3lauRGX7eF2zZXGHbMh1Pfzpj2mv+xNdM2i38BoqAnFNVW5+sid45fY
	 SHFVEkbFndV0hodnPX78eGIA68h6rDe1Npxk/sLia8zCpmFObgAeYqAJ+E/VbaA+/y
	 RnGEqcdciWCKsCuUqbM+relyVb9dWW+vm/z2vXPirEjnmHtu/YcZGX1O1AHwZHu8Bs
	 MU/tI6DUJFSXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD83CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536599358.10091.6415004311572296382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227e06c0fec77da6a36139649430d576636d6d21173a60ee7cc035d532860f0d
Date: Sat, 16 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755365993
