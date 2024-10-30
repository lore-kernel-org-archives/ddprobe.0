Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3684C28F7
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730259954; cv=none; b=ULP69Hhm8Veqh89EEKgOGuyDk/wVWf6WVfHKUqwkSutdZ74JO5WjNQqhX1ZpErnWJ9fUl9riSepW0vorvQHb23QA7eRoiXDimNokIpeQsALAMUj+cTMgw9rGlp8jRFLzwjnDa7lYgEA0U/7y/vQfXC2/T6YELEluqiaB6CcWhv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730259954; c=relaxed/simple;
	bh=r+XG3kJ9/BLih4jNhhFgshgtcFKAE7gwy3/RWbHvNKY=;
	h=To:Subject:From:Message-Id:Date; b=gHUB+YRSAELvDTG/Rv9OKAPK6sQwWlQhh8uPLmdlQQz12FRvk6AFl7vezDJ0TvLq24EJWPNwgyrcBhzXF/CENBtNelJoTKSFDFbcz+E0+536QiirSZHZgN91Sj7KevQcYvcf+CSvaC0ttv+Vh8LdSuvOTSQsRraKwmoISSfHJpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCFiuOK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCFiuOK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1A2C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730259953;
	bh=r+XG3kJ9/BLih4jNhhFgshgtcFKAE7gwy3/RWbHvNKY=;
	h=To:Subject:From:Date:From;
	b=RCFiuOK8tTvr+NzBsapeZnHL5+/hRcXO0wKgdSZeA+MVnAnJokEMN+sNfJPqFJVcc
	 MXQ4tqq00/kCfXW0NvtZJb3/2kSoPgS8s0F/+xAhQ2fzcQ0whLaXI+nOt3NYX+3zc+
	 /7yoXA2PnjM5NxkUcJs+yNrwesCiMgTYRhirj7NeyuYnCwzD4cO4zFi5mt8IwtGZlT
	 3X14ffekG7+FTUvEyvHoAu1/4phduVjQcEB0YCTRkl0PF8z0+lPY+cyQTAevUZ9zZ0
	 PJzKMV2wcCjAgeaOJtCcvrulv7opSzKX3zENNR6t6tGKvfAGJF+q4DUK1zl51tAkBa
	 6sDEChToPpG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971B9D7495A
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173025995360.1112.17585767630532149015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2841bb688f6fdf65c71f2ac8aeadece69e6a21c62e19eb96c723b91735e31fea
Date: Wed, 30 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730259953
