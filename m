Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F15F2FE066
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777583854; cv=none; b=h80/gLsHDjgjFDDxVsEExdDyRwQfRm7gJY/0QMqg/Fi6ipsDY5+At5fvMQnuFc6VESCCD/yXbCESvH40ofd/v/sLzbiaqqYfuQ+cfTSFdbopQayzsdVbvbSJqgceXumudoWDB12mEUeJFyVpiF4SYobsTR7GrX37OyqMnZjR2YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777583854; c=relaxed/simple;
	bh=i0G5TK+bTG0Wti7R2RqIXguPCfUc9JcQdHAq8gYtEDk=;
	h=To:Subject:From:Message-Id:Date; b=DMcgCN2qjqIqLF1qDltglkrkLcdxUQOK2Gj6dm+9el4dpawHVaTOzcIsaffq3kztQtQ5rDYILG9JRNzY703kE5n5YlVxfcLwENqmd/+hyW4WJOfbzb7/uCl4MpaV5M4T16R+CQxlVTQTvRWfYg4Jel0NU4LS1O9Gfsr1sI85OzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuYHS3wI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuYHS3wI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD053C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777583853;
	bh=i0G5TK+bTG0Wti7R2RqIXguPCfUc9JcQdHAq8gYtEDk=;
	h=To:Subject:From:Date:From;
	b=NuYHS3wI4PPI/SF7oipPV5nI6InpAfn3JzGces4D+Gg8QPlAkt0qoyybsYYCkbv7s
	 xi8g5mm2lCw3eY5gm4WMHsl8fPBcFWc1MAL8QPPxbPweKYQG3T/+IGoQwGVBIyW8ku
	 OEFu/oV0Dp5SS6iHLlfNRsrb6mmMDGma4PRhVtMF8dZi07uZOHaEq5HN+cCy9l9HxT
	 7hlpC2jLOJ5BSJQPJGfcElpEHxKz3B/CYuuwTCNWqy9wddvVNg29c0PuaKUcZPICKe
	 eropJnZJOZDSKeoE00FbUNrzn8kuWDwFiUx9RxwPKPy1NUbk8wB12RxK1BnzEabQm1
	 cr6EXJyWEod4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD924CD13D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758385370.27284.14688535143240774471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef555319494e0750bce5fc16d1f7e73be8c285c9e4356ad8c50186a83fca172d
Date: Thu, 30 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777583853
