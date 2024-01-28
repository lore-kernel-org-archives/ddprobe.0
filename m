Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7C72D04F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706462297; cv=none; b=LTcT8ir0JwO998aPFx/t6Mof6BsAS2iicMPuNr1tmFmVJ8mPQR5Ym2HtjvZzFeYQ+E1x4ghmoqYyIGuU9PLdc+drK1GvhEBZ6wTo4+zGLvKlo3tqzuyJ/2dwcgr5G+XFTUWFtFoi3t+k75+df04ZPS3VaIOLInWHnLOUHugn3E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706462297; c=relaxed/simple;
	bh=2T5za3INw68e2qeGVTFTHo4/MMWoZmE+4IxYxpNqsb8=;
	h=To:Subject:From:Message-Id:Date; b=FcEHs3dJLK1khsaQBcpm44VmopP3DjGnnFG3UcQWwCOg3vV6p3koMfJoC63arIvQZhgaxgJGDpUyDF1yGbqQcjK+RZtEXg7XORdKmVpzEAb8heEaOe3yxVHIhfZEUpvNAF7gHKrEQNtJBONiNgBY1KvFw4cB+IvBClxY7PoOzOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzBrVLCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzBrVLCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EA2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706462296;
	bh=2T5za3INw68e2qeGVTFTHo4/MMWoZmE+4IxYxpNqsb8=;
	h=To:Subject:From:Date:From;
	b=jzBrVLCMn2j+g90XBFIjiBnGMUR3QqYEquGu/RHgzkkrwH6qem+Xz+p0wDVdIaVoq
	 dS/S5iJnkZ14bMpAwJDTAVu5n3x0tDPR6gJuFK8801s9p7DUGxr4Y9KwaW2GpBVPAK
	 j3FJoIW4B6JMmNiX08Qn/GPjQZAm9i1DIdHlRvoJATUUsje/LT+ehtHghhOMMv96mn
	 ytceSrkogBKkI2lYiBp1VOD28Vu2BO7m03WjdRLRvqmixlLw0kdmUuGDGag+x1JivW
	 YTevzX1s9La/A4QFQSOhz4SvIDVMbTSOkb9s7skPn3Vn3n9G6K442M1uORdo8aj9yZ
	 B0OfNWZRIMgRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697F2C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170646229642.5196.1936282469816137190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88fc82465758f2a8ce42976c6ca6b577b398b10a1acc5871508fe50a10641f14
Date: Sun, 28 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706462296
