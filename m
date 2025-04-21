Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5221E25D913
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745228994; cv=none; b=GAbVgSvR2xH/7zfDbtp2sPsS6yL1zR2azyERFWaDzjErtqHtFk/UNp6Gf+idZQqNAVUY7TgEL1VS2564AppXWAe0BhskD9S9TWZkIiP/HWi1HmBKhCqw+H7WPANuNgDvn5KF/Y269gGfQSfxkyJ8gfI0DwK73HeW4Yn1eooKtZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745228994; c=relaxed/simple;
	bh=T6on2NLbnjI/y8XFQODuqaAlxcEkhroHg64Akv27qnE=;
	h=To:Subject:From:Message-Id:Date; b=YFJ6rzBvIzUSmWbKQQCyAUUGmW/eHTqH5gNxAFDz8gP12689Q3YZblTE4g0gtmPaOyL/FWqgkkGypJ3ma9LAWzmjIEgnEDmkckUBWCIV2p9Cy4H3dZH0uTMnTPHyp8AgEEKUqVC3DvjKjKqaVJA/lF81e6h0OQe7BgdXbeVOOl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHqNG1H3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHqNG1H3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B8C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745228993;
	bh=T6on2NLbnjI/y8XFQODuqaAlxcEkhroHg64Akv27qnE=;
	h=To:Subject:From:Date:From;
	b=ZHqNG1H3wxmHLuJb7orfqUPPPFrEXbnrMADTksQ0Pdnd14J9aL+ABj/2pQhgqVCjP
	 yzvZ4FkowxAHjXmGRoX4b3MDiUPpy4fGD3SztpWJ3e7AuSf3I0nfXC/TdeQlZMFvDd
	 k9s+NLor+/pj5qlwsOZyaQ6f1BjPm8rnw/0julX/uyDCzjoXMOb6Ks7Lzcx7u2a/KG
	 o0+nfgFbO5cu8oe3MqO6DWfkyQCcSSdW+8oz8JMFxaUZv2SScyRG+6RgrTfmmI/Uyl
	 qYUjK0QvyrjqwP2+auhC5wBZirtViVq8/kqy/aMzxzfVJORHFc9Pm+GmHWQ/1xMc2d
	 tzxzDh76TaL9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91326C369D3
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522899358.3670.16667130446624194021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd079ef01c319a9c7ebce5d58ae6be08aec6687a4675359a7cdb56b214a7d6b8
Date: Mon, 21 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745228993
