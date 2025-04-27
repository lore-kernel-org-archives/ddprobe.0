Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3344D2AE89
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745775594; cv=none; b=nT/JQ6sj8VlTN2dwV2watB/LwEDGzdEnRxmrlgqwWndjgdW64Pjt7EIn3aZ3khuMavQE08Q3lue2LLPTbfvgihifuBc0P9cqlv1MxMoUA+n2GZlHvp/JH0+oUYEb/9QIfkluGrWbJ10EOEYHdfZLfRLAA3AHOFmDs00XerUYj7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745775594; c=relaxed/simple;
	bh=T3oR8ktg2vw4tM0WxWARW7ZZoIVjxkQvW1GywGFWH3I=;
	h=To:Subject:From:Message-Id:Date; b=b2LikBN7EgZY+ljEMqKmjOYG8IIYBtP4S/uIBTcWgN14+9zFSEiwzo0qzXfafMG46lPdcjVRMByFOsbJAjzpTemZBWC7J5bOz9fFreMHMMTUwgyWZGTlhmfV0gr/kecIto3AtTtrqMiM7QsxjBEIK5jYmQZrxycs1ilXV6Wm0eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAYSXCtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAYSXCtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC47C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745775593;
	bh=T3oR8ktg2vw4tM0WxWARW7ZZoIVjxkQvW1GywGFWH3I=;
	h=To:Subject:From:Date:From;
	b=CAYSXCtg9R5+fimdAQak0CasaEndStaJN28sLuVT0s02SiV90PAFh8tND6fohuBSj
	 3ZnktQ+10gTXCIVJKsHlP0I0n7OfP163rhzOD0W+vfdTkVzQQv/D4Nyxh1Jk+9NOA9
	 sm6BtA41dRIbnfmE9fI4F5UijMX8fh36DqsC3/IpPsX+kZAw1PVq5AxFa5bjNJ3E5G
	 wFmzTpEVeIT0519Azipdh70GSdsCh2awiDtazqtOXzKmOjHSLCKA99ucK54/5Anpml
	 6qf7cbP7apKrUHIP5B9pNMcuYaJ+d9QKwHzeIvCuTU4ChEXwzfdK4gee8mmvNL6GX+
	 q/5+WzqafzsBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9933AC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174577559359.6759.1366279784483533695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af0846690fb5b48fd1274db0716df686ad6ed2229332d5d072a38224ece5626
Date: Sun, 27 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745775593
