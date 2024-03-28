Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122F12030B
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711666697; cv=none; b=Dci/NEkTTdZYX+4+8cchI6fD2HU30/JaWmEXoQkeC0d6Irj+AMwTul1t97P9v/HxoSXDcChHHMn727SNzq+rT13hdE53HaJUP28OIdwYljeqkoVGnCjPpyjZ3WLNoynCXEJ3GYV1b2X7LCvPpYTDGQmTaCZFsa9yRNOtQlH7+ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711666697; c=relaxed/simple;
	bh=ta++bO1cLqjBdrTKlgW42Fg84wCVwNuOXbeULAV20Y0=;
	h=To:Subject:From:Message-Id:Date; b=Ny5vvQDkvpEMK7COD7s38SOLCQ+wVzwJZ6IFTrFLIAXKhLgTMv+aZQ82weonJIMCXnMC5QRCNDOVBmPuB8O7ZXU+wT5yKn0RqppKcYQqq1T/1EsMsD+tY/B8gaGziDG/7k05LazUhESzy9r2sBvUdsYmMr+MVfikSIftX8Ku0wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOmYBW04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOmYBW04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95863C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711666696;
	bh=ta++bO1cLqjBdrTKlgW42Fg84wCVwNuOXbeULAV20Y0=;
	h=To:Subject:From:Date:From;
	b=UOmYBW041zFm7uR4T6Kj6oK7RR5O90rfEaHQkZdlFgVw55vxNqZkDMwsm8ZA0a+ta
	 n0/Vgzy6FC6Op2TAk8oMvAjz/u4yngsSraJHsxseCdKGS/9d9dLFfyfTs0SK/OHzvO
	 Fho4RFNvLkUS1tTjXqsiZFEY5NbZoWOXOtMEcdM+NYMp/Ujp8iWeEqip4lsYH4vULB
	 1VDha5v3bbAN42/Y1jA30kSCjggdZYVcZjrKm5dPgHNl/UH4nirYrhkD2eJNfNcxz3
	 4Thzw1AoRk2wG3SO2RrIVQcIumWfZpjXkD7++GWlix0dPdke9JyVzv6g240KPERHSx
	 RMTVE9TLceIDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 842B1CD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171166669653.5316.17722008821124170965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e69ac0eb27c2ff6eaf8dda12694f6d4373eb2d31448c2ee2bc7f825a4de7dc4
Date: Thu, 28 Mar 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711666696
