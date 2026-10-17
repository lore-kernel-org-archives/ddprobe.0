Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584963E49CD
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792263634; cv=none; b=TxOSSG3AQLZDsgvIS3a9tHnUBUo09BNusQ3VGK2a4s1XQPGRTJEUdi3WtgIu4zJa3yrbmrm81XUElrlnOthjYYW7UXWlhOVvJiPawJgtPwH+nfQuxlhhGm8PF2+whxtQuIGu9IGVGWACsxK5yRxuHR3+V54TCow9jZ2GD1rrJxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792263634; c=relaxed/simple;
	bh=QvhXEMtAJ+vVic43/QpItWL4SFAZ/1rHPkufUTTHBWM=;
	h=To:Subject:From:Message-Id:Date; b=JfNMM6CV0m9EuXeT2uppt3sQrMv1MyhrHvkxGi7wJSe4pGqu2JwtORZ+iIPlV2b5mWnYePKvbR/dhRHpXwl7fdpWt2mlY70MbbDmgyWC70HM+AR8lQ9yhm+MwzYttBgNV/gcHNTmsh/x5O3cNLZpIVkBHlgOF8vPEgXgM/OVx8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZN4KrfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZN4KrfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE01C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792263633;
	bh=QvhXEMtAJ+vVic43/QpItWL4SFAZ/1rHPkufUTTHBWM=;
	h=To:Subject:From:Date:From;
	b=lZN4KrfOaBWXKyvnu08/6YW24VPxHyKmnXmiqv2MVBNFTG5M5iLQoIVL5BAK03KNA
	 U3w59gZKhU7aNg8oWnG4YKRleBlBGyj691fer4EugFeYTQ8/D/PWtrFBLkNFlGX694
	 QmFiO9q1UF9L+vdBzLo8g0LXYYhYTImIEezDWv5ba3ZL9OTjVbP+XSt8hTYBI5MiBO
	 ODkjfZnrv2aPHLDMsxuedrqN477mz8zOo235oyPlJC7vQgwq9dPc0G1doWU5BG40u0
	 M0mKYldK1HpY8ha1H4vkw15cmVKn96oPGmkrJG1UuPudfcp1MWU3cOGwTGnZzQq3lZ
	 Ualn+jt/zEf8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6883CCF2CF
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226363373.14233.5900304554936031493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a8e5854a7542dd64e7a55e2983b0d2e7e5afa2ddd3daf0df2ca70bf31315c1
Date: Sat, 17 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792263633
