Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780DF317162
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777775854; cv=none; b=U4Pm1HBNacC3XloFtlFOpYvaZDsZZhhpjH2XkuM/lAnEa4IiBOoo1o6k3aiKCAMb53Z3y79u/BDclrSmbPiaefqDjasX+uBrq7viOADMMwxavYM3bPDbysJl0d0tUiIG+fTw/FAlutWn5cgmsgdXAqyUSGPHcQGXnfiKzV0ovRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777775854; c=relaxed/simple;
	bh=Gfz06pNRAS9ZaoME6Jan5g3AnNwOejE7TS9TQpv8/GU=;
	h=To:Subject:From:Message-Id:Date; b=DJKa+iGBaptvdD4J2hTu7B+6Y5BiexLy3uCB2WWJURb4tpzk54UZAtSI9YxB26LnBMW0qXIdarqyEVZ3yhuIRlpufKgFpld9NAwoNIx2oNcrwJuwYG5wG0cMDJbd+qNOgjEsuVtMjwy7RRh8feuRdzxc81go4bvrF+2wxFWYiFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ForwUUL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ForwUUL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0269C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777775853;
	bh=Gfz06pNRAS9ZaoME6Jan5g3AnNwOejE7TS9TQpv8/GU=;
	h=To:Subject:From:Date:From;
	b=ForwUUL+cRsPG0zx6CYtW8ccwvraZH2WRoKEmtRtjmBFqlVRs39xB94SyCJfmwohd
	 2sFUdwZ7vPBbx0MrNsOBsVEq7uIiPJ6zofac0MigDXtHheojsJVgGkge8/9N/E5Ej7
	 kc+U8eVWyMFwDTuIhrKgU6qnIulosJeUGJlErvWbjkSA13jOw+0krBHEMz7BYamM9r
	 DzW4+0C+xviu5TwnEBJZzOGj9NUNgN5HJ+oLyAkkcIycwCwAxsrIj77OUMzKcqtc3t
	 UM3bzLuw54xtePmtF6FmgN7f7d7l5NlsxnmDANiKmgg3BimlUia3jfRnouVotNErTc
	 E6P55q2S6hCGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8AFCD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777585368.7031.1416171156704274207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2a9badb65b1b6a1d2d56a33ea4047aa5ee21df5399676057879cc4713d3981
Date: Sun, 03 May 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777775853
