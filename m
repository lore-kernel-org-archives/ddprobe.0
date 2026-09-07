Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EF4483BD5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788785434; cv=none; b=buz2r61HGnvYkafKK8uWaAuMAroHQzvZcmxdVJV2+ChOMNO23Qd6z2r/TyJa2gQdU/2Ax0EYVBKO1bShSGo8qEYTDytwKON7JdYCf1BJ7tIGRz81HSTTElNnCgPSHCqouTixS33QLGv5P36zBcP8eOC4kGCoG1B4fkqUZQ7Vjhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788785434; c=relaxed/simple;
	bh=SBhie0qhYjwRXxwvuVngZLH/zo/YtAgrVwBqcMIoBZU=;
	h=To:Subject:From:Message-Id:Date; b=Xk406sTmGZ1hzgT8O/A0SGCnTYp/55AEh/vN/dRn3XWvZ80cNgEdBQVbNsY3b2+ehAZ+vZEVQcIZS6DY2DZzDXxRYt6w0gdC5vf/wLIlZiA+7D9D7zAgJ82vOVmBoPd1uV6yk+rOKjmSHkFxI8BY3lGYZYuPtiZhXbUyzrYaezc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebj9yqpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebj9yqpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84EEC2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788785433;
	bh=SBhie0qhYjwRXxwvuVngZLH/zo/YtAgrVwBqcMIoBZU=;
	h=To:Subject:From:Date:From;
	b=ebj9yqpBaqFesvT4NVhpTG1VI4qDvbw4c61M+gS5VmtIWQZ92D67M5+p05xH//WRN
	 irtyiXVkCzADocQWP78nKMvUQ1dXwSmrHE3HkCDtsIvJAlNOObVsMPZFYHZgFJrWWh
	 xEznWB6t6ELa2nxsr9ApqOxDXKBUoiGM7n0+vcBDMzSlYAzSwkr1sW1/j99gyK/0v7
	 aI9VaV6bGpJHkxHHNRyn3VBQ78hcAH8M1s7GHC0mdc/Bk7/rOeL6YBXUrJMWj3uEik
	 lg87qwECKkmo63ZGWcEw5VUGXZVub04pK2VRs2d3OteIWLv84VGfFx2PEV6Eiia9ds
	 XY4iaFr4PWZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B069DC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878543371.22936.5951582852823585673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acba5155fb7bc9636df5f8edbc70ad6ea9dcffd5a817b6c9fde88df67b7e1fc7
Date: Mon, 07 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788785433
