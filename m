Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18862D9796
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421694; cv=none; b=hUiP9TxxOOPUFmNbU7wBNN8foQPsZfFF5bADlZmDxo7ZYSLHdzALsFrFS0HG1ERLfZrUXKYE07Dthw389Hg/BVavgdhK/96lSYsWq49si1Os4t1w5FodYf6kyytb69Xd5HyUiX8KqtcIknCaAyeG95HGP+he/O6tAEQMfNcMano=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421694; c=relaxed/simple;
	bh=QCX9aC0PkJgpC5eYgRrYlafnbHf8fC1J94srRvROOqI=;
	h=To:Subject:From:Message-Id:Date; b=fFSrh1nvAO4ZqZAGHVY9BcbuvDCrgI8LkMPyNOm6KrgBm29GoQR6+EcSv0ed2gvpPB5S/CaC70EHyadqwOzBRGEI4RsfbYWotO8thuFlQEvC/UGIOFl4OkLhRJj/q6YIt7Gt67c1sRfqLbJ6jnKU0WJfnDeij9itPciBHVslLbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIbstnib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIbstnib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64D7C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771421693;
	bh=QCX9aC0PkJgpC5eYgRrYlafnbHf8fC1J94srRvROOqI=;
	h=To:Subject:From:Date:From;
	b=CIbstnibelNhFh0kAYwOW5pikjHQXxbTuFmO7JaKsr4hYp5p0142AMJ+2R4GefLMk
	 s+ucP0DPOsOftvsMIzNtHCct92fmgHWiamAKiaIDsn2SEiPAqofuGNMJqoADeRS0Zx
	 mRwBKjCUwGLFP0QkV3lYKqhsF88Rt+dzjlGcSSjKPe4FZalfy8yyuCKl+VlV1gnQK7
	 Fy1iPIiy/wyDKFADs2bTNg+xpiWmuj0b3OGVB99+vW/1rDv2ENEW5nFeXz8xPxmtIQ
	 WgjdsI+pJ9UI1Jj0CdCPVE/uVbRMk2YIVOCO49GUR3Zy2RCLTi7y7e9Vznj9K10KNB
	 txkYYOgzrUdtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180DE9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142169358.21947.11827191450097343469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549dafe907c845f8fad846e9d6caf398a33cacb4304d69cda2112d2b2b486052
Date: Wed, 18 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771421693
