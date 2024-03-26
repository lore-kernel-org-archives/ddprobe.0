Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC42B1E534
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711496296; cv=none; b=SRcbdN9udvZV9C5EC8TRsTMFTqMneJb/dmvqAalnIW410Mo3das+qCjrmrijQV0AouNMwWBf0kAb7sZk8qfoY7uzoybYqzdaF5d5HW94+GYt2PpVuomVjH4nFrcbByyrtH1nwyml/ypGSNm5DMsSURIXGFmETb5O8sYlXQWd0pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711496296; c=relaxed/simple;
	bh=R1cLhIRmFmfltwj4eo1VJt23Umnc1WxCh32i9vzojaw=;
	h=To:Subject:From:Message-Id:Date; b=Vfvfk8oJj0sH6nFSqYitD+ZGj84jWdvBu9Z7ZHf0EF52eX5i/y49k/eJodolILi1EqsxzOPuOd9YdmyQHg74oDYGSLZGytTTYzFAHdlKF85RY1mG7HD3tWSrLfvfHhIc1E4vZpKUtkhW1dcDPACJXFkgQJhYLH34adNBiQHjekQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwfVA7uQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwfVA7uQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7333FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711496296;
	bh=R1cLhIRmFmfltwj4eo1VJt23Umnc1WxCh32i9vzojaw=;
	h=To:Subject:From:Date:From;
	b=UwfVA7uQy0lWO9JvB0ZcF93EU2ZAtzktWokEsOtk5PSGGLdBbGYsMSWW8yr4fRgBd
	 quA0H+lEJDXp5fJEBCc1o+9T6lNcy6aueZyMGYx9wXtKc+LAReoei3aXdw86Zh4VW8
	 pJVx+TWQTa06TQ1Lq1t5vHRpz7EUXpKW/pu4VoTn/S2TGh66R7VCYxT7Gq8feMD2qu
	 /Pnq5zeJcWekXrxfKUMFLT5eCgNvG2Tr7GNAGig2ZXboz2OPO00FjxSSB2ZDi185N6
	 trXhYzUXAlxDhawvpfhfg5u0MUnd1pEn8NDj9SbfxKQAJgmwbLwDpBXJlTMbdWp6ut
	 U4oKoecH9QOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F38C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171149629637.9858.4627234904404004381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772ccc9824625d0941687235938bf30504af1e6b90dbacd6379925a2f145dab0
Date: Tue, 26 Mar 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711496296
