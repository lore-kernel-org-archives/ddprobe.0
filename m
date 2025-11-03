Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AFE292B4B
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762197594; cv=none; b=jgMIH9r8fQ8ftIwp2AfLXC4wx+YnAa3d4gIMjR3Dz3oc6RK/Ovvle+QtuAUj6qX1nd7LGsbTSCTmWFsLobqbCaRtEI08rk20nenSa0vMJEPzb4TJSRzpOmMVBnEWV3iekvnAgt2TRga3ZgM5Q+a6IQJfd86L5TUkZgfW2xHhWw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762197594; c=relaxed/simple;
	bh=yi8ArL2edimL2Scxe2I95kVnFzyq0YTxZm+bVlAQn2A=;
	h=To:Subject:From:Message-Id:Date; b=UQM/ucQ5AWPTUEgYNWlMYU2nTK0Jn5lz3YxB+vDEG0ucOwthwWIdCu/AXvhjzdm+TdiUXZuhhOnM4joDoKOJBRMaDvR6zfHeWQPD7UPJMxw4ICvqTgvYJLvl+FdKQEturso2m71V67KOS0++EV5UpD7d61CmcvZsNxag2mUZ6j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpEAY2Sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpEAY2Sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4628C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762197593;
	bh=yi8ArL2edimL2Scxe2I95kVnFzyq0YTxZm+bVlAQn2A=;
	h=To:Subject:From:Date:From;
	b=tpEAY2SgdgLW0YyECPJm1ma2mYcQekkMtsT9BFPAipIi4RvWRvPXE5Jw8oXFsIFlv
	 z+BunSyCgW8SmQ7qcoAt9fbbS5U/Ix8mbwO7Ev1DsWDvmxlG7r/UfZN5u3FJQw31KU
	 7PmZR1OUam2bPIf+P6xQhxVLdfBL+Bi7xeaX6ObDkwBlkkimaBKlCdDhx3wFIR+CDu
	 R+sWBI0o7x/r4sLrGQGpnIycqa8QtP3ynJi/BnjE71ncH2Ppc1pjLaxkVP7sjyz8ek
	 lE0qzqZuN1hGnoEQtM4uqqnCnbXThXLcuK+MlUAYMkBYbVfVpzJyBZQcmKx5rrVdvv
	 hpCXM41ADYPUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9231ACCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219759358.8335.10995067499180603566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51eeb64c5041d4b309a7e8d76f8b483b680312f60e67a028518a23fdb48f5e03
Date: Mon, 03 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762197593
