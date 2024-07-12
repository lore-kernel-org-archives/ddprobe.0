Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD2E17C69
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720763243; cv=none; b=oJpP0beEvQjAg7QPWOSPNR+8gQ2ADOMkF1RtQeSsuhbLNxXUhIWCixaSn8yCASH2zxVX5aS+tydtljalTK+L9mcYMpT4sPsurt3T7zDTDMeJUAEHqPxEkCE6S8PzRBxSaA80Er4U3SO1WyaJhQeEyDChSMoeVh/33mK/Tars3UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720763243; c=relaxed/simple;
	bh=ZjsZ/oMIxjV/AoaG/YAJn5PHH6OH8l6d/odGkB99sDM=;
	h=To:Subject:From:Message-Id:Date; b=h4HXxL13/fgq58DkUKUjcadIQzzWRANnH7WIOK3+GRaX/ouzL4sgBP1VH7rC0g90ifjc1UO/60ln4Jo2tVqWaUlgZxj5kDSHnk3jMG3uIMMK3W+S2/pqC5p++2i4sLjOjIFIpg5p+7um1nDB1e8exDUQfxuOtOmGFlY2DhaAQLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SF4OoMAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SF4OoMAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF283C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720763242;
	bh=ZjsZ/oMIxjV/AoaG/YAJn5PHH6OH8l6d/odGkB99sDM=;
	h=To:Subject:From:Date:From;
	b=SF4OoMAT9JH4DrFgBeK6j++LxDG0oAERGaI6KAdZ7/INSYE/jSNa7tLRVPai7ow7o
	 g0WOGARTj2lj77V/QJLK4PO3zf1EZM65M1WXF5HW8MNuyQ81kd15xhhi0dUmfbGoiA
	 lfs9Oh95NJpcT71rJjgGrR6ju1J3NLyLVmJZbACSJd09S9CoPJFshk185fYRNnDyEw
	 XyH6w89RxrGDVv08T69lDd65WaqaaIY0/kFvv3QWIswo2m76MLvoAov9fkmfy3ubUo
	 +xlbLwk9l8nKONRakhxwZ4E8ka5OsmYi0g3FiLYYerRtQTrYgUBWgy93hXxbmL9QFT
	 HrnkSy2l/xLYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7162C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076324277.6862.14177469430181933334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de08c262875b19503d13eb3c4499940e35b9fe52a4b62908edf3ced9d4ba5ae2
Date: Fri, 12 Jul 2024 05:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720763242
