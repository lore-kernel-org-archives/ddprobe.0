Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE41BA3D
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777922854; cv=none; b=hrBrG6TID7fjKx1Mhw3G95N+46aJ4XW+ytFV/fzXOEq62+33VIzJ5WviLzZFpeazvyD/T99YX/7GWwz9OASGuWaDJnqp/No/sao8cYrxI85A7Ssaa3VGT1B9/Rw6m/MYVY9bg7RTYcHMJk+gwadQ7slgpG0LoBvVF7rYjU/T8jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777922854; c=relaxed/simple;
	bh=ezb0Z8B8mMliFh7TFraqNUiXz+r8wACHzHBnCmFm4kc=;
	h=To:Subject:From:Message-Id:Date; b=HL9zsqqgqnRJR/ALeAHy4nt6Z4UIlMPWcS53DUYt3ktrXKYQGnMpdZNXLlnW5rUGn0k335Fr/VBxDSfobXc+T4G/BMdOA6/ycbiJGwKk9+ERzy5UhXS4WTTllRrxM8q8rWWRsJceMt4Ha4UMzbLeM78ky9+iByAk+P0dwcFYmP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQ1FO0of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQ1FO0of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95CDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777922853;
	bh=ezb0Z8B8mMliFh7TFraqNUiXz+r8wACHzHBnCmFm4kc=;
	h=To:Subject:From:Date:From;
	b=OQ1FO0ofnBKJwAVjPY0NAk4w8Y1z5wC1QqZyB+kFxFG4kULR68TvCXMi0IBVUoTJW
	 dQvRh1fX0n4FJeeo+fTbfZPegXy8GQd6sSqCCwDJ4Jj/fpGxeJ+dj7IPHyROx8OSwK
	 aJiJVPeLQkUQ0wHQpk44ECaOm/itZBQZUrgHsGwH9PiQkKhF0EILgEmpNnR1/rZYlv
	 qF5XC0AtRPjz6M1X/yPUdmqGe+yya0DDsqh/okw4fvy0u9uJ1wYa1wXlL6e0oYAoc/
	 PmD+QXcnKPsxyf1vXvERP/Sw4SCM2NQa1vuOkGeChQFS/Jvq+3gDjjnraacHxbM3a7
	 Pt5CUEmMdnTFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90CFCD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792285368.559.10053891953390680022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7da2f32b72b3003f949248e1ff0c796d6a002baaf835e5c3e3b778fc40072e2
Date: Mon, 04 May 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777922853
