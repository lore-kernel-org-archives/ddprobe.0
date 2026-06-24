Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0E0388869
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782287194; cv=none; b=DYAHbnzitXZa1pWT80yV7MvUOV1FeoqL9Yhl0PzuhkdjYwx1ZBcQwOu3G/YDWw+5+MOJea39XF7goPiQFBZR6wEj1qo+DqMvIi2Oxc+S8Lhbsy1frhF/kFT/RUJVA3P0uDKUyOZtfFaXVXRuXuBNK3oatLPCkz51LJb9bggvuyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782287194; c=relaxed/simple;
	bh=QGKTJLq/LNwxEwuGDEj97YaN8wiggeCMPq9iA71F4vI=;
	h=To:Subject:From:Message-Id:Date; b=QEJ7Masll8/E8kqFbHrZzT1dK4bBtPYzi5cLVKfH9jq4fhaHywpcq6nEDt1XTzN0Y3P6dkytjpZ49e6L6yBUNAphKnfgmwWeTTS95RqNxyjj9YIzWf08UDeW55DXYz3yEpmRNvUNyeZB7FOqimCtI3fboQmnmV+hnlnT4raFDQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3SR46Cx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3SR46Cx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77EFC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782287193;
	bh=QGKTJLq/LNwxEwuGDEj97YaN8wiggeCMPq9iA71F4vI=;
	h=To:Subject:From:Date:From;
	b=G3SR46CxCxWGOLCuUZypE/NLAm5mT7aurGUp4d8oOkC8qG25NaCCBBsMfUhAWctW/
	 CiSmTmdJ1YCQl1DEL35YuJcwNrnCU0bOjyIUiVQz5Kc6+iRNsp2tdoFclmQwGGMuv+
	 vWuZiPQJQqrL5GQ6/OEvDT7PbM4FDYubE74dYX222/+n6/biHvqLWckDqDoCOIAryW
	 Z/2nxYMFGORYoV6MyCYuILl+7+CgclvHOwosUlf1rV9mYmzutW+tTM6zSWOe0qjLvU
	 r108O3mnKJZ9vze2f8UGqCmDBhV/ghHTsIJksTf+ZQXG7cO8JqG6gKbgFem2NHyCHF
	 o96fL1OUAPrnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE209CDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228719370.8188.15402725246330027580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c57d8be29c4119fe95fbb8eb3070b3491e80a680fdea9f33b534f9bae7f698
Date: Wed, 24 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782287193
