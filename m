Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E7E2ECD3A
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756373394; cv=none; b=TPXWr+UD/hTddEO/V0fkhqs+dNHJwdvaZMqBEcWQ54C4pAOa40UiCX6brWCOvIbFbd5vIKAJqvUEv5rnRvbN5v0FumFpzzQG0xaCHFG/C+Xi3Lc1apzqbQd79cYuVWEnkyOqN3t7cyUc+Vus6AZx9qTADK36SOp85H+xNu+HZpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756373394; c=relaxed/simple;
	bh=YxyALAVuYJLQeLvoNlgKLK+KApyrUC0TflNaYI9wrko=;
	h=To:Subject:From:Message-Id:Date; b=mhWhBtD1D3t2lS1bAjBbYabJQ2D1zjgJYBxin4q7zGLblgNce2NGmr+2lBaYPgALbLmJFJ5LUznhR8TFdLuhP1gSRT2VTKKHEk0v17mL9+b6Ozg7IL7P4BaFY2Wl9p1rLZrScpInPkAx1oD3W0ZSjUvNmGlVAO34YszxBtMPAqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHb/4zfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHb/4zfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED23C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756373393;
	bh=YxyALAVuYJLQeLvoNlgKLK+KApyrUC0TflNaYI9wrko=;
	h=To:Subject:From:Date:From;
	b=XHb/4zfMU+PfBH40QeO/FDFrndxPKhdQPhbT1fPdvoN9JJC2V4+ouLd0YOhz+8o6V
	 HblH+KxX7uF5b7ffj4HinBHNxBPiEHLuYlReu7+mJd5FLdZzp7Vv3t3sBdSnCLRuAJ
	 35v8pyzACwteXOcbvmPIBPGKpE39fBvhVNBqONcxqpl14tktOzKj4VXlDSh8+pYXFE
	 wOJ9YNK5oF3CqWforul/8FQagamo2GAauMS1C0msVCMNHw07AHPc/JHROroeaHG094
	 4s+Udg7Ee7QzyVQql5pBfY38MUpXD5WXQb/SUlZGImjknPxIL3A377iIdttBpGkUWA
	 +WYmZPnAAfgpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B4CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637339358.3831.18411909305668932971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35fe7e1cbfb8befdb26aeea8a6f10ed71e081070311164b948b878c22bbf6d50
Date: Thu, 28 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756373393
