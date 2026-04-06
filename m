Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6D9399002
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775505934; cv=none; b=DvYzpVqMU+A5yGhFjvb63wtrQBmCmc2qDbRUCTBA6jTrIW8uolsOAvRsC6Rki8v5mDf1Y94d4gwXkde0q1LgziYLNLjpFlFkAY+ZhnYAO6YhXDFb4ElTDWGVfNJ6r9AQoigmz/1KW7n25WqTbn/+XrVMPansIalwZUc8pinqrqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775505934; c=relaxed/simple;
	bh=vs7djiB6xAE8FRJQn5vPh/BYa9r/Eihsj1CJx/U5YJw=;
	h=To:Subject:From:Message-Id:Date; b=b8sV9XlXj3CPZm4sDuErbmlfVApoSqt6z2l8aHqwJ4iqtj31v177gCx26/UJqKu2BZ7OHCIwT50JFPiYMrYry982kYm1Ql/TKzaTFszR80iqFcWrj6JmrA7CB40yS+7Hh+kXpL0e6bj6rKkOtsARwUjmzN2T8LK+Ixl8YZw2iCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOi32k0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOi32k0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A04C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775505933;
	bh=vs7djiB6xAE8FRJQn5vPh/BYa9r/Eihsj1CJx/U5YJw=;
	h=To:Subject:From:Date:From;
	b=nOi32k0NY/GgbDwuB2vUB39BQKyMPod5dcuQc9CcyvxlJgNC/FzTUoNuWjW1pEr/a
	 xa6IWM5H2WxBTbWStoVObW+kNiP3SxzaKEjGGmxJ1wRgv43RpMo7JzvjP1/wO9DVPu
	 RXS21GNGXjNcCTSxTEnZF03BVdabzoyfxjudgbr4ZN6z4R6E7lLuAVnXHpCh+pciEU
	 sRTtf52SOx77fbj21I+l2tWiZWwPGTLwfo6inIpfyWGIsIsOkoVsWiVkUvGIPSPcvI
	 lcY4UR3LMGLjph/nq2b57jub1cig5d1nlttq6bKfqLGE8nCePPEL46Pd7RZCjX3Mv6
	 zTPuFh6IGZTgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE94BF46C78
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550593369.12443.4901257772899402287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f63bb14b148b7bde7f7eed014a0cf180dc5011ef1b7afed4fad7cc5898ee2b3
Date: Mon, 06 Apr 2026 20:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775505933
