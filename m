Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA67118CC1D
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748855393; cv=none; b=LnE06/JkhuBL/7jvhjdwOHuBnT92sMYsVr/QMHa1wCehSiC84HTXhyy5jKjAfasT7cqQgGzPZWcUGAL3kLlHmxB34rb27YYSd6eaMg8yWh83iJs4FdttbqvmCqkp1JHSQMuFlQHf7t5vgqkEhh4wG3e2rm8kruFlgg0q2aKE60Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748855393; c=relaxed/simple;
	bh=Pdy/XipSMQvKIcX4xBUGR/3ItXCn51mRWW2yg/h30r0=;
	h=To:Subject:From:Message-Id:Date; b=g8NZBePxlompgGqKCsx4nDQBgLLQY0Zy2EOCAzRW1Z7e3Tio7bjOE4ziNuKz2+o0xvMNuOEGTF+UaPavSvHsfCJXc4DVjvNejgNbBqiVocWdfHDjtI/1KVJgrVCEFoKbpXk8azQSh/5+oMn3iOW6apSR+FMfDiXrRgsqgXpeP3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpwiindh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpwiindh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B86C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748855393;
	bh=Pdy/XipSMQvKIcX4xBUGR/3ItXCn51mRWW2yg/h30r0=;
	h=To:Subject:From:Date:From;
	b=fpwiindh9M+iUqjCYOrGz1BrKRcND36OG+HDhMWvwX9tfonC5efbMybr5z1q0qN4v
	 DDjJO19xkBMcROJzqOgKO2QwWhLxVYg24Af2wj0Zoj6elX+bxprBmxoKwSuYqTPNOn
	 F0RE6rQJJcGpxI2+iL8qXMR3hXi8Xp+Gz/pxL34B5W2pQHAJQ77M11UlsMNURUDIuY
	 CFFpITBBYDBGCDyjGo7RDC9AjnwIZGFWPzJTYRZ+6JNMK+zS6QwjGWqtXa951KQleI
	 urZTSETqosDtaKmPdFfiSYLDZlqYv9JoUxDxs5ev1xrDKypG5+VM5ry7rmq9SXSKB3
	 mOLnz7/L08A4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90570C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885539358.3434.2578988313654383147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7ab76d464285f58d99fae6f2188377b34196d5895de4f12fdf0aab6e42de8a
Date: Mon, 02 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748855393
