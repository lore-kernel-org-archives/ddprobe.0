Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F6C23FC41
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787324434; cv=none; b=cIYxncy0wk1GAmF33NUTP6nyQO2lpJX+2wAN3yau/z6tC7fzQQVdQ9XSniPEsJLUHt7GZhSPh0h39W7cr8FhjgWa90ZRpMk4Hxu4336PkeWfSSDePFMnHv7RIV4EkgL+w+lsU1348keQeh7Kojl/QPGtZHcJKZpd4YzLx3W0xxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787324434; c=relaxed/simple;
	bh=B5IUHGhIM374opHMJ6XG5i4KGIrHk4vlaS02F0omFyc=;
	h=To:Subject:From:Message-Id:Date; b=qZqNSrk26JI5Bt6upSX5RvOq+L2wH3uvUOytjt8JcrKEb72WFkzv44Ch3GLtdkCufb7w1dhZy0ojDM1sJz5+ssASTB7kDAAHZxQeXD4KKcockND5qfZrG8nbeATPDl23k9SSKQyCZi7E94sZwe4HyUXT3Tv/MatK4ljwrm7cEW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFA0vxCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFA0vxCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD96AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787324433;
	bh=B5IUHGhIM374opHMJ6XG5i4KGIrHk4vlaS02F0omFyc=;
	h=To:Subject:From:Date:From;
	b=AFA0vxCK/ql5iXxd8xIAef9jfb0abrFiguF9cniTWhz+2W8TJ9kr0t0mzPInR+uqd
	 CDQHprCzzutdQa4GU4yGUTYxogruAZgrnSKaBDwALyDvDjT/otaGLyrW+48bMWfygD
	 FLnwG5WX64dOXghK0lBE4ZoOkK2gC/CoD0N3CSu9XxAdC5fKJskNDGocfIH9DeF7LD
	 iV6v8Ka3Qfry0MJzvt+8Zpy1fTqAWsb46zG5+srgLakETK4DtRmfV/xgsyYDXBIG5M
	 6pDprQ2sk/bFkwo7bVTlAScxF+sSBFw535a8d76MgE138U1Yu+I52RoVmupIdXzYtJ
	 GB4Yo4YF9ZfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B697BC5DF93
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732443373.28333.1756039867896328971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef1a2ddc508faa4bbe1bb3541faf3f1f6e9e7e59a26bf0ddbf693bc02c262a5
Date: Fri, 21 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787324433
