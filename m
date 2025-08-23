Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4962E6F305
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755918594; cv=none; b=Zm+hHp/XyCbqgAsrpuAxM9ngOFOSYe27qPu+5c6gB6EdDlGLWsS8gz3XwvOGHSLUl9JemYXzzwHT8NUHyIsLM1TazWvdh021A9snyjPZ2B9/mmy650h1TnuZZk5GOdUIlkTeit/EMPajWlzgQOtAH2aNwMM1mRGPhFfJ9zaqacE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755918594; c=relaxed/simple;
	bh=sz0y5Ov3C+aud3N7RQ3PyhX1PG+T/DlYNIYNV/4YTJk=;
	h=To:Subject:From:Message-Id:Date; b=ojjwYEfMrQU+YscwagICbl9b4SEoEMqfGMlzu6l7zF3/P25cqp9icA4m2nEbK+wf5S//JAHkswRRz5AfxOYV88NOV8kWiu9i7fMNxkdTxtaXfPv0khiwZGB72X05CW1IZo2AmXVNQNPQW6XfX4OzLt+lqXNTIu3IQUA3lSs6+Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlJhaIZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlJhaIZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B4FC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755918593;
	bh=sz0y5Ov3C+aud3N7RQ3PyhX1PG+T/DlYNIYNV/4YTJk=;
	h=To:Subject:From:Date:From;
	b=PlJhaIZgsB6+VrWlwt0jYPvUEFhG2VsJUeh9jjjEyLB1BOdfnWp+bYyjgZKxbnckm
	 bDzs/bVRrvRIp/dVxOwQqZ2Y7pFgJc672boqgsctPHazVbe58OArko86gUBkWIY7JM
	 jcY47vh7qXqHkaU2rr2ikG2YwzWVTTfwziCLTuiHsCJyTShkd7B7AlvN3BKigYpL1r
	 c9fhcRlMPW739jurZjnoQOJSzNj4zdGcmgRu8ZQn7Lxe/Liscedx2+uvEBBhqyb/l0
	 dtmaeGxzayRB6c4P72hDh0V2ubsyuN0k/9gwcwgDb6EOS2XEbkkbxK7YWkKQk02W9J
	 cyxeLNb4o94uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D02CA0EFC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591859357.17329.17667040242996311196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db32778b9a4d5fc343a4f903ae08cc87dca6b5ccb762b03e6e008c17dfdbe086
Date: Sat, 23 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755918593
