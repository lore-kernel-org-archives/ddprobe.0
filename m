Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF6172601
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753024194; cv=none; b=aSMP4LBuqbdHHzzaI+sbQRcT11PgJS9cajq6g30rUAobRy17SCxjJm8XrCEoDvExcL2a1Tsjgwg3cbV+lJ2US527oD0fs3b+jb3HpmTCf2uJA7IKiyKN3tS3rIygwN+n8LWLnkhaHCSDJIx5DWe8Lf8BPaNavDBwNo46ByPBaqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753024194; c=relaxed/simple;
	bh=VeTKSkDtyn6Je+XOZ/P2B313zjZ+mzpfkCIA7EBAzPo=;
	h=To:Subject:From:Message-Id:Date; b=fvnfN/inAdiG7TVf11pKubWDptcoHg8MQTThclSq0mRdA394n+oukl1eQ4SLzz8VvE6hR345Ol7P71XrkMgAkVx/pAQbcKb+Ecne3lHzC7WNMAzj1L6olkBjYtLpogqNiiwaEg83cTBxDWq/09OVislrZeqWbVyvwKIyNYZVLog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsmdXgyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsmdXgyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6B2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753024193;
	bh=VeTKSkDtyn6Je+XOZ/P2B313zjZ+mzpfkCIA7EBAzPo=;
	h=To:Subject:From:Date:From;
	b=gsmdXgyg3xheN9B+/1MPgCrHrTc6K8mqbPzVUSVlDUo+91ghIBjgcLA1Kci4oV19U
	 I/qirZWQhzKn3pmsxlww5HotxYVf+fRPNQhx5IUGe6LNqnve3XaeB2svxy9qiXXVup
	 DMcs3+z93hvu0TLRbXObS46aFqb9DzBuDd+c1wAFG2gp7WkLPvrD+GyNJfqAH7puES
	 YL1ufh0PnM0ww3S3Aj3ZkCOOqIFuw47CtDxT//m9sC72LY1ax4yBSmEB3E9OKLIhAn
	 vtC+AX9AzBDcL5G6NphZ8JHnRr6yHv1PtLil3jr0TSa+Fmg099Rmm+GyRtXiSBl/qj
	 /SzwCUufyEfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EFEC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302419359.21297.513537315457196086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ec95c5ded7b27db953439eefc33fba20b09e6d2fa1db84960e231392400362
Date: Sun, 20 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753024193
