Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7D04A3E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779063034; cv=none; b=f0dmB22kibYfp6R0FwGUG9Thfd9FFiQLxdIbVWSyXB1bNPcBTuoCbtWUxujhY5wUjNuFwFIOoZGx+ttKo6b9sRIEuPEY+jnJfFdJSapztvMrbsHp43dJlgG85JjktIK2px4iJGaxv4bMHAlIDPhsfpYs4i8THBLcUVVoqKY55do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779063034; c=relaxed/simple;
	bh=8ZtyrU3kd72mwKtuNaflbQ8pT4vZFTS0ddUuNrXN22I=;
	h=To:Subject:From:Message-Id:Date; b=Wt7FR1x4O90aY+40t1cfwCcrJmGFTSD6aIca34gpuDZDfkcdu29B86WLb/Ht0cug52nqZZ+eG35Nzt/8TcH7q0rL4Jkatwr4u4LIaZosuKzx4vCLHsNCKAIGqWkkRG8yAlnSmtiS0AoossAULxONO9v+vJRKCa/wZERk8YmsVnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XstQWA9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XstQWA9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41EDC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779063033;
	bh=8ZtyrU3kd72mwKtuNaflbQ8pT4vZFTS0ddUuNrXN22I=;
	h=To:Subject:From:Date:From;
	b=XstQWA9NbRgbuUL+IbjkrmCflI31wbi1FnfMn8ZVXt4t/Tm6TxpatFgz6n+te9gEA
	 lXdaD1v1APqqlYJxJ8AXYb+Vl6RwaziR57yMcn40QcR4E90Gudy9hPtgERkksoGg24
	 KOAZrUf+Wd72T4Ot8q1DMkF4Ap5n+axbW1wEV3fSwNlv3BWpHG4MX8L3eqlRvlf4MT
	 +NSIsc6D9cMnQyKMjz/z4SG+ByS78KP4MXft0h3tLUWZnCP1U9Lq9I6AkB2my0eb9R
	 rFfJvSRx2xW+7+IOeKTP+YlscCa8gSMtDxew9uPG3FIO1r7bOMA1zcCvnLUNcDpP+A
	 spE5tlF0p863g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B072BCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906303368.6265.16897112208767742198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d619fc8db50bca8ea3401f40a8d08cdb8e19dd4b7d4abbc3e27e3d21dcf77f2
Date: Mon, 18 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779063033
