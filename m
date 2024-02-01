Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DB6EAE3
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706755097; cv=none; b=TdySMnsycjaYxJ9Resa4bDsI2O3Y+ooBJ/KkpcvxIj+ufuQ8lUe4fsHyLRR3jbA9LutuKeQ0YBb+fsC59iI8OrV9GwoMhl6vAKv9BoSEcmWD1I2sdd4ZGxlcF+oYJEmJH70bjpSAtfPJKzRhOiKqi0zdvvY8eJhBeBDWqjhVeWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706755097; c=relaxed/simple;
	bh=HLek8dVHZR7ZaaDbCu3yEbB7JuDyvElodrG7D26DuaA=;
	h=To:Subject:From:Message-Id:Date; b=DBy3tatIOba4ZC0J8OOsm5v0bPsAs7XPJNckAjMsbwMnkiPiYv+dQItdobAYopiRB8ryeKCl7TSCRyocVp+Q8P0bGbXquh2UzJDxRn/7DFZGWprmkZCk+YODlaoYLAdQChqVpwkdWs5sOVvzI1dp4Ph9aTXgpEONYhSZmRDDTlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HS68HeMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HS68HeMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D69FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706755096;
	bh=HLek8dVHZR7ZaaDbCu3yEbB7JuDyvElodrG7D26DuaA=;
	h=To:Subject:From:Date:From;
	b=HS68HeMhyD6xI1TCvXvU4iQkUauWw1X8ac4ZZOX+b+vVlF11pV9iLRxl8Fskm3afF
	 PDsTxR/3mBwM2kI1GoIq1Q4Wun0LQ1SMeO6FPh46VlmPTVGM9sJOm4I1HjPwGSMYPN
	 VZC1dpmKVI7NlbUXDjTKvlEJm/f1WJGvyjj0gQMfCGzQg3XrX31YUpmdzAqgU8n9IO
	 Pcud5geyC2xvq8zcYg+rKz+XRbF9dFUJevimQwK8LGtVXxu9JuMyhhcqZadveGxNyg
	 dVW2oMXcVSsJTupyAaxKop0B2Fpi3y62RhlQdiOmuMW34XRXLfIbdQSl7+cQIpRwH8
	 HSjxIw349QrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF0AC47258
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170675509637.25723.12364955022387704964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d379f730d199f5a78a2579972aca220f15bbdb1a4376edbd5679e303a51b97b
Date: Thu, 01 Feb 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706755096
