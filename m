Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2780B219EB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753604994; cv=none; b=digB70mRjWKTVm5ma/JabR4sNffAD1yJcjy1+XIpYqDrJk7cg+PqGE1MKcigumIjzFgk4VC9cvDj4URJMo8JEbXGxFplgSXiF2aUWay4PajtQbixPIzc5vyrmBu5K2KZ1O4KObufQVl/F5Pcs1s+5uJFmG7Mqu5elB6vrUgnG5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753604994; c=relaxed/simple;
	bh=NzuHnY0Nk6mCmyEMPVDU90H/Ov9URGlcvm6YFd0KAvc=;
	h=To:Subject:From:Message-Id:Date; b=u7q9T15IUon9F/s8i0tcIz5rmU4MFBvKcpNiPUD8/PAl1Z5JmQYUFWPcPzIc3+obJ8b9MOX0jAAUR+/kwyEseFituaz58X6d0RuXejMSbUY8nSeVArweYB9cFGVKobVkVmG3ycktHJ0YYLUc5L9Ab8RHyWaIOQV/cDUe2LfL1rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ug37fdnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ug37fdnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6276C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753604993;
	bh=NzuHnY0Nk6mCmyEMPVDU90H/Ov9URGlcvm6YFd0KAvc=;
	h=To:Subject:From:Date:From;
	b=ug37fdnfHEipVbUZo2TGwRwJaO1GkJbLYn76MHuYzyAwU7fdfsJdSMu48F1qR1yJk
	 79HqQbIgptk4RyLHMb/a0FrklKEzJmRfU5eDDvf/c3DWZoSTM0PhFPrFC0uAk6toKO
	 T3ZxHj0fpLz8Bd1TexVGBipvf7umFmW7J1tsqbtRP6AnC8aMCTyk5qILLhQIOzTxuL
	 DZ2L2QC8Y3vS2WhHrQR4Cvcco6F8TecDvr5LBPYA4A4hCkBGUgZdvi/ks6Epv+9XNb
	 EEwK3UD2tKJrZijKoX0gfj1roNfIcP8j5+AW5T9CP+8hKbbvrlog5saEFBSbEWp5UD
	 TkI+7i6x4hA8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93299C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360499358.6634.6738360102220000092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221ba6cd30405d57d68151aa6a6d966df8f6e0204877a660f902d88d278d91fa
Date: Sun, 27 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753604993
