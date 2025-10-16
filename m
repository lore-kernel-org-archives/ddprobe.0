Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A9332860C
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760609994; cv=none; b=mJ2aGOoSOucZTbhzOPfRD/tl9VOgexKnx0NT5AyWT05kBolhzq58WduAIarJglvXoForYKU546KWpqT8f+2xSdAYHj44otGPS5Ok7SvFWITHHjsMw3Kw1QY30/BKh/s+IJ/6uRBqPOyr1Vne9/7UXGohfRwnzF+Rb9Uxlc0B7C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760609994; c=relaxed/simple;
	bh=jrZjzKebpZiX5+fCAK02joxe7rHL0sJenQKwcRzlBHc=;
	h=To:Subject:From:Message-Id:Date; b=dnq7SQmOXBrZY7gX68DZtAHZVgLnj1bdKwjXFLXXQV8VBtcEX9ZtZGAIVYmFu5TCL/zL/tHudHVr28SVHaHmVTgGrIZaoi/iOYyZazH6jaWJju8+k75GBbfiQ7/2FWDT57Ty7iYJkIvzsnqgCCWh07NvCAIXue5oV0o4sVzP3wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gA8ekndD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gA8ekndD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B50C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760609993;
	bh=jrZjzKebpZiX5+fCAK02joxe7rHL0sJenQKwcRzlBHc=;
	h=To:Subject:From:Date:From;
	b=gA8ekndD/q78DIc1O9A5iAcms9TxjMM3/c7kl9xpgTCIoTGS3w5dOphMim0gMIlbE
	 +ZmcViAcKmNrRXY4LntbnTnN6GYfh5cF5zVsP15Vz9QwHDHTbfbghUuN+qTRLi0Rsr
	 xXCHno3NgrTGfe/MYIiIsp0SUB4zsSRxKLm8zo6A+21ZIBCTt88PbRy9P8oNpYKmbm
	 qqJCZaS30/Kr8h2vmeWw5fsKA3aU8nDOeBIqV94LQXyFLvI5MM1fNjCQMfztJIEz27
	 SGcOtVk4UvQ8KwQrW15JeUsu66N85kRzAGRv7IzkMk5Sk1D0SgfD5JZ/oDZLAcHeZ7
	 3IczTqiSCGxKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006BCCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060999357.8597.5495207644678865968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2eabf081d559d7a7f850463454f4e71e04f15469415029effb968fae4ce473e
Date: Thu, 16 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760609993
