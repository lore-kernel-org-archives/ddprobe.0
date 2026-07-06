Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962583C09FA
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783318714; cv=none; b=o/ULIs0xEErpWzIqfaGro4XAHh7LawmUAaGZqfbVrx5yopdsHcbfgY4cz7o1F26ORkfGjyTP1aYFq2U2yX4AV8GUucbZD6/p748tqKauOeHPZ4lmWM62fGs+vCbsSOlm890GBrMyh5QWjULBvQmweOwDL8aJ/FD7sk8GlqWS0d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783318714; c=relaxed/simple;
	bh=5e0MudcLL2gK5kTJFyzx2g6b0aEqo8b0+14cQdsdkiM=;
	h=To:Subject:From:Message-Id:Date; b=hXhb3JMEH/PhWjkH4hAaT1nutjdLosTdRNdxo6J/m9e76gHsR8xb6FVoDyd64B0sdDWYhGYWhkLO+JgfvO95XA4W+uhcQ9lbfzD37DsLcSbhXto+uLJlIl2etmeAehl+Zx1lfge5qIaKhnRNawRyWLeC1gvCqvONQG7X5t9Hm38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suzIlt0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suzIlt0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACCBC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783318713;
	bh=5e0MudcLL2gK5kTJFyzx2g6b0aEqo8b0+14cQdsdkiM=;
	h=To:Subject:From:Date:From;
	b=suzIlt0ZKa6Oho/xxPD79gUvLrbtuanrwj12p+HKDTSbQ09fW9m3JVxOdzAnsEpxT
	 jwNlQOJSjBDqBfnv8wL9a3MG4cNxioVy20W8O7rgs/U14Xg5k5QpX564L7iTItkleF
	 8DZIxlW9oYHP/SLA0z2y1omnbAx5p8/QN1YQFBoIwbmaY0VlOBUKoEDbfsFEpHS54R
	 aRy/WYdCrR0PQOFzN6DTJDpA8X4I7ZIJ7f/Ulv/SjXOZOEQj9m8ZtkbG8fZq1g3HFD
	 yfr9JpSbseJmy28PN7585pWsRCGiGBoM9BsiNGOgqBR9GxUs5FRiTbkmoTlNA0+iCM
	 34IaO3z6iP0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C0C43602
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331871368.1925.7967030867275280534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90982df7b2dec1b081199d0d9be47ef9acef5776414d996e1134cc6cddd19ea0
Date: Mon, 06 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783318713
