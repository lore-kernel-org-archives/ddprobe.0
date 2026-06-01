Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43130314D1A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780286674; cv=none; b=cY3Bu8X00fZ4c/FI4PC45soYFCUWu/DGNW30nvhkPWDu7ufnMpROE6JuI6+oODIx2zs2OlW5HyLB2GmweI11z1aDOKJ3E2JZQOQNwEi8UpqB8vj/8qhGNMwFaTYYR/W9weI9m1kc0p2tG4shzmEkbvBzTFFe+qBx7DcRCdEivWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780286674; c=relaxed/simple;
	bh=UYd/7qVlxk/birfhWhYp0R7RXhAqdNiqfg2sRx8Labk=;
	h=To:Subject:From:Message-Id:Date; b=Z+fo/ms/IBvnFcytkO1RcyFkL/S8pqAhwKhxedReWijFoGa90sPfOQCu5rERo77PPlzDopHBx7SVnGp+t16g1D6R+RSUFMZV9LLCKhV4t4hRofGLG1tSKcPm6QmTv9XIe2h6rO3kmyV3wiUNLP/Fzra6F/yQz5VVDE/Ko3HdbQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcLNwCkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcLNwCkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0973C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780286673;
	bh=UYd/7qVlxk/birfhWhYp0R7RXhAqdNiqfg2sRx8Labk=;
	h=To:Subject:From:Date:From;
	b=WcLNwCkmSh0DWwpUpElyvI8F9qk6NC+pbLlLMcKz7eb05AWhxkJYfJHL/vPEVgCBW
	 Ug1WVticWI14neSndu8L1qu7pa6Bgx/FblEM0ZxZmLw87sBwPmQzuZaxYHDu1yia80
	 3AiaFzuWJ0dkQzVI6rxA252ABaQyFPsa6MM+UlRSN7ISUA/OQR/9Tfzr9Bi8gc3lQb
	 qLMis9Tbp+GIieegQfiNV6HDu8VPMiLpF3el1nwUBrxsf5Wm2HvVr5YvruANfd5edx
	 3kUXI0SyaX026iHutLVL3JN281AXUjAkCuo4tlCyvhWXikVQkVd0Z0gqoAfNcROzux
	 +Kg3s7NORm4wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CDBCD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028667371.7271.2344375811330633874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a600ef8ea8ab7813358c7aa1c09826c98c59c281061b76fe547a90ffbea50bf
Date: Mon, 01 Jun 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780286673
