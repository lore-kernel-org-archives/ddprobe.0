Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B351DFF0
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743647394; cv=none; b=YF1opvCkpY0B7VkJhb7lIcd8TgEt7MSBpXDcTbGtda+X8wRh8ebE4gcVaxiBuEAzx/TP7bpk58FgTZC3A7QSmNbjywkHZnNevv0VQn29IKGF5CLm8I+NNpb0KwwJUsrBwf08r9StwAyBUyvk/7AcNAuV9ya/y7kp3VTIjBFyZpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743647394; c=relaxed/simple;
	bh=mR1PVAtBbjGr3M1i7Mj+vfzI9XVo60e9Y7dWbOFs93E=;
	h=To:Subject:From:Message-Id:Date; b=EOOLtwo4aP6RO8/mQtkF7kDMyh2lhEQx6gjPkopHsMvxTp4dVDTn1vi66vKaEeg43Yj36CjOwqFP4IplA6kR9x55FFXMdbsRhspUGLzSm1l+Y+J2sy0ifolfMvRPufG+VepO5bWrlLvFfkyD0MJbXOZIuOvcKz4udxEy6LIMBXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKERrdBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKERrdBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF78C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743647393;
	bh=mR1PVAtBbjGr3M1i7Mj+vfzI9XVo60e9Y7dWbOFs93E=;
	h=To:Subject:From:Date:From;
	b=RKERrdBMZR1vSfHj00hhqQvvrvM8FummDeyI0YdcOn0Dpz/HqMjXRVnmjB/2rG9yg
	 85fzS/Pq+mMOCydXy45KyVfKoxSThXJmAyFscs4if8z+9J399ORpevlKHQ8btrGarl
	 tk0PpfJW2RKgHrgvt5rPsX7p9Nq2qSQZ/W0qdCMH32mjmlH3l5YKl7if09nGATZlpP
	 gImfpFsNsXKoNJTIPoh0B95HwjSNwIXO+W9GMX7nTxYJAvZScPdlWrM4j2Eud3bjhY
	 jp62fYE1ldnhdNqWZuAtYKN9Jh/Mn0I9y0KU8rFXbLxgEO3RtV6tmh9c4lGcE+6szu
	 nX3v9AI2K4C4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9924EC36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364739361.23643.4343583952128659973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee509ef9273c8c9decbf4ff58a7c01d219b103b96760c9addaca9e940f36af8
Date: Thu, 03 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743647393
