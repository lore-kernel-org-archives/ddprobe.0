Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2927C231853
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751516395; cv=none; b=gvqD+2zEgd2OczKlZiN2fCHxEHZRzHi1dQMS6BsFabJSVN6VUckNqNNK+ZJlPwXq7I/yditMlI4Uk9RXSsaQQ6l8HEdk2NCaugtAZOhs/APFgnLsc7fD+Oa4R1ztwjwdeSI+2KAQeN4rD2YXIUuZSuGa074O1sL6KtQ/ROe2Bz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751516395; c=relaxed/simple;
	bh=0ITgX0gswmQ5Dnzn2sxzjx1xpbsweO4Zh156X5oHcxM=;
	h=To:Subject:From:Message-Id:Date; b=szp4xJd43wxJas/R/OEKCDp0dug7j4nhkIZK/QLaCNwgJecfAwOT0hGkkefObzlS+yAPm7xyY4TbOYn7Z0n6vF+OyjNe8toIl/8L2h1TYG2AVE4BdSV92MWqvH7LvVpmSg+BCNjntHYW9BvgT89ntgx4uOJHR9eA8actgUIaYvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqyXDaIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqyXDaIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5959C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751516393;
	bh=0ITgX0gswmQ5Dnzn2sxzjx1xpbsweO4Zh156X5oHcxM=;
	h=To:Subject:From:Date:From;
	b=hqyXDaIX+sN3cuaRUUbKmXkIjzZiTWsQHuqk0nGZK/EWWMvamlmZ0DbIBGplIsbAv
	 q+q+5FpP0kL718Bm7Qd4da1zy9NCpWASQ53f3zH7CP/JdxaeMY8vthjuQYmo4KMekh
	 Y92nC/UcyNq/SH/ANpwMB/cS6tuJxGb9Zwi5DF4D/FRXYXGxOcocEcllaPV2MqOSjm
	 D9cIHHqBGix76SWvdIRvLSdkMoDp7IFi1WdjIsmFE18jBxKxhDsPTXgWlRuGwFI0CA
	 5oDX/dUEdpzWnLWM+FXLQ/9kXd0oMcCV7sz31/VG57DlxZ+/6fj43/QeO/kaHP+okB
	 CyMYFRXtkdmaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930DDC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151639359.27863.6801681135243207740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb516a07ba54eabca2bd4c124b55ee5eec1d3b4d922588661332a720e868a12
Date: Thu, 03 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751516393
