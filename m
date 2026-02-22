Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C9813959D
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771796694; cv=none; b=ev1+Na0ofihTkwexjQX04d3BB0BDGCcXNJXRfcV8wu9CfTCh93symmWdCx3ZYt0squGE0z918SMY6RD+wn/kKtnNnXyKHmXr3aiXqXfZ43aoLYcDp8rus13txNRdqGrzOtLTSx5RPfKccExRTPeJGsIm2G21KV6914SQ45hwqqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771796694; c=relaxed/simple;
	bh=slNibdbec4QD4xAvguixnDmpny7i+MZParT9r/YQus8=;
	h=To:Subject:From:Message-Id:Date; b=hE7cYKmuznXZ70UGcw12oZybKYSIEJI8XQP8Y5WXy8uaVEzQfi4VcvR5px+458NtSnPlGRcbs5fdSo5HWZWejpfpWFGTMYFWjBCY1WkKm8YhSQkzZat3BQkxGJv+v+ByWODIgJBn+6JibehViQtesVkk5QhZe88chdXe/wVbRK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2uzrLz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2uzrLz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB755C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771796693;
	bh=slNibdbec4QD4xAvguixnDmpny7i+MZParT9r/YQus8=;
	h=To:Subject:From:Date:From;
	b=J2uzrLz+2dCsVFPqDa3bcFAgYZo2QghOHp2rXqOGEZCHKT0ipx25Lo/ScYRdNFhkj
	 v4EiFr77kKwBdNbB0IuIMdlcX624Hcl/JetK+hZxsyMpiYSQd10B0MbLKJBZO/yVnB
	 wIeEnSwdT0GCRSX87vGQaCsw82zOPaoRpy3X+9B3JfPok3zpMLE4Uk5dIZ2Lhg1lpA
	 HOK1gFa/ZCDXGVExfzYNa39VrxJSplClxrLU/udsg5O5cLaCFkHFFPfVDUghlWSEXj
	 QTsj20rZSve9BNXU9Zz4UAb+ejDr2OMlRW5itq/kAZkdXQf6thfkY1TcCJr/zrIYa+
	 vSAtXSPDlgDlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E54C636BE
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179669359.2615.16182359892876167655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c616b12cd89fdf62ddd041a02f274736d3508d2cc2981271fa06da01c41fa61e
Date: Sun, 22 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771796693
