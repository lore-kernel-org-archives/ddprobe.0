Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF03919068E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735810553; cv=none; b=AnXgjP4kMq6v7xCnv5QM03v12OgoJ3acxjSFjqAMNCyntC/BPwPzjadcs+mg/swUG+MLCkbobIFpLrwymKQCcLKEUO7xWHLMKiWqMqZBj5RkhOnXSgxC74qeA75vJ0QVg7TqTz/ReU+tp2GNlsmM+eN2Rzr7fnYu6+pzHz78MoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735810553; c=relaxed/simple;
	bh=po/FGpITdOkSOm/1El4Qm7rFb40iVEhjLL1wT8gv/QY=;
	h=To:Subject:From:Message-Id:Date; b=k6kHEBC9U5e2b48Fxm6X8qV9UUtMGrFSNFKJz0EXKIql6ioKze3L5t3v6N4bRmFpRxLces92DrlConeHrEh6hojch5rRE2yLMT1bycbhdI8U84j8uyBaLG3CxNcvDPfjISJxnwqOuKL3qpsCw+oKEoSdVk819Q96XuuymwgOFw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heRt2c1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heRt2c1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E25EC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735810553;
	bh=po/FGpITdOkSOm/1El4Qm7rFb40iVEhjLL1wT8gv/QY=;
	h=To:Subject:From:Date:From;
	b=heRt2c1vrSiaGk+dNe1pbJR2fj1cRvnQJ/i0ORloZ97zGYPtb/wjcGJhNYxNopyNu
	 uC1cbpIk7EqiXYjXe68k3WRzaHMs9IGTgZzbHcBj8Cf//jmIJqYLG2uaTMgxmYX8Yq
	 Rn6qBRXcBmbmLBAdUVDxmduWukieJDJ+r/WYA1X7SnjlMM0ByO9zF7femUb9Xv/xzB
	 Auhd+KJkru3XPyt0gMB7nRqSubqnbbdwU5zCyuLtbbLPQMAm0SgmxCq30pzZ8J/SKr
	 TDBnQFNatTBR4imUpRpIJX2KT0fiqbXyaJBA30Lw9sKkvegTIN2kJrQNDTgwVk4502
	 LpupGO4hP/5ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7FDE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581055358.18660.8349195736622191933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0636b8f8625cdaa76794cc8169dee14d9dadd8745425cc4f0a24afb84895c7
Date: Thu, 02 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735810553
