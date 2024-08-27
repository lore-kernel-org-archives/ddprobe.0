Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8D71D1F62
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724779554; cv=none; b=g7zFlQ68WMrsk7R6oQmOdxgTpODSjgw4uMS3HX6XSlneer9G7V7q2LGOBsR96zx8+RHHFOokV4r5VWE67VTdsZa4i6SlCRRtr8lE0XMSAo3BxbQIJjfD8kTCKtVIHpWnTE8AfJ3lasulXBGRcSe/QS85ftI1z4Bo0MP7jSnfR7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724779554; c=relaxed/simple;
	bh=AtGfV15OdFPk23kIFlaiDVtOAR747s5Nk6KqXrPb2Is=;
	h=To:Subject:From:Message-Id:Date; b=on9Z6JMIHSy7vqA+Y9PevJl8Y2tl0TnOuPNZ3LKLxBe44IiMyPAYsNo1U1ndf8dgYITxK1ZT6v056UGMgnUx6XV0D14p/dAea99eWeSiwxWKv8nVwhvGnnl6eMpXKCN8acQKINplFGzStEI/qhZDeJ0uUCm4BG1LI3sP28uOA6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFbwpLn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFbwpLn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A017EC5830E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724779553;
	bh=AtGfV15OdFPk23kIFlaiDVtOAR747s5Nk6KqXrPb2Is=;
	h=To:Subject:From:Date:From;
	b=VFbwpLn6B07w1nISDsVW6dwYIAAZo0xup1/YMZyHZ2rERfRLGdAq7ppJ2fQV9zRcG
	 gks6NBJZtA0C9mip66DZtcAgzufNEckhru1b7fIw2NW3A3G5f+3rgEyLZim56EE2/G
	 yC7kpi8uYMr+WgsB/cS97+0bLU3RAgdhIh/vDVWqiAeFRNJt9S83sidZgv4HI+DRc+
	 rplkUlE9jQ9ur2j2x61VVVwqWam66Ep4MI+HkZEqN/e6lJZk2JJvud1pnt7/rpPtin
	 JkcQ8mak86jq7fh1l/H/YzuLXw5I6OIM7GF8qzNuTk41x1yUcIaYdt0tV+Rhy5QJ5D
	 RLSa4E5QNmijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6FC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477955359.6296.13960482678961403210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8beb1b98d51bb79c46c63699a02dd94e0cfd2ba9d9569c68c0a9694807ddb85
Date: Tue, 27 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724779553
