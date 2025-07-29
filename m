Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374491A76BB
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753780794; cv=none; b=Zvh25jbrGHkNdhwqfyD1f9CzlBm2juxOmA76q5e2TTVQhK1Y+HHudYLwpIHxCc0MO7rVXOHcc+xL+1RlmMQDCen2jGZ5biXWI2vSeOngn0tPtgrDIFrYFmmCXZoUETaweSkLsseOWldxZK2aGffUIFlDk+ueT9dT+Od123jC4Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753780794; c=relaxed/simple;
	bh=3SBTUxL7nuXfSIGpHkeTBmtGoYNbKw6iIvRC2Fhsj/k=;
	h=To:Subject:From:Message-Id:Date; b=FUm3E5d7Xrs1qHT0xWUKyfxGPdI3qxyXztx+Xzis0d+ytipKvnn7VwE9lA7xaXLkGSnNsrsOaGuMMiXTOVtculvFk+5QbkB6VlljANZI7ruqk0PMdyIF1vu8XvGgvEG24S/AU+Ltu5xVP+p6ydRljlsMjvWVGyrACvr4TCORevs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNaDiQno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNaDiQno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3833C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753780793;
	bh=3SBTUxL7nuXfSIGpHkeTBmtGoYNbKw6iIvRC2Fhsj/k=;
	h=To:Subject:From:Date:From;
	b=MNaDiQnoIw2lL+Ca2A2FeEfRIVAZwlF5IZ2dQcUfn+HsOmkcaq4qN2MIAYXCxd74B
	 ownOzCcIlqCxwGONA0uczYu06syqWUwDQJtAnhKwP9/dL/UyR+EY+opdJbbGhP4CeY
	 ASORAip6CbbSOg5eSIGJD7EGgfM4bMoSNBrdyly9aCGCD5rKXdVruEhG2UsML7yJcS
	 WwMo1RxlkIJL5y9COrA1XVAr2OLwh5lplEqpdEH8JF7yzPbXNdyB14JXr3ktbnB6/0
	 YWJobFi5OCwaXqTabk4YuTdETgKPMeI7LRoL5hAeC2NfKeqBR4/9HjXswjyQCW1G+Y
	 4fMf3xazx9fNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BADC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378079358.6816.1724083763517894845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9616d5071a4b29e15a20100d856d923cda2acdaa104c58e664e5d7eb2e14955
Date: Tue, 29 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753780793
