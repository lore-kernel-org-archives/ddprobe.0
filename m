Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1DEA48
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750551594; cv=none; b=VwadhBh8v7RKQNqlJ0OWT8aXu//YzWT/VRo9pr/kknSB0Q8OHzOtOrglVuFAqeXWXNv137k9M+15OSCPrNQSHIOOhm2zzuar/TMURIWBl9B4TW5unqPnA/GGM55KvL+QahGzbS08dx7c/nsxo1kOIwG9V4ZIaaxiN1BHvzndscE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750551594; c=relaxed/simple;
	bh=WRaWe3MCAVCMxIb94gcDcZBVnsTo4pCsZhAuVMXiMzs=;
	h=To:Subject:From:Message-Id:Date; b=ss8C2JC7LHYAoaMNlF8Ft9SkgTzWVkBIBhqqoRI+yDANLhymfhA9et3YLtFgF56SHV9FsFtHXRoU8xib3OhFsW//+nUZdGhQP1csPhUbXPJyes7jzKs1OyrH7+9BSEyxOIUcKO6TXz2wLuQwgBL373yQOnmGjAf9uBDZNG2e6IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCtv6j1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCtv6j1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1022C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750551593;
	bh=WRaWe3MCAVCMxIb94gcDcZBVnsTo4pCsZhAuVMXiMzs=;
	h=To:Subject:From:Date:From;
	b=MCtv6j1DBuG7EQc/2nir1H/sVSa//lEA1467e+l1+mIuRNliqj8E/IZhqIzBNJlUU
	 axR2sbul9ZaQ0FAZsB+dtahuKPWWrNXXrWeETVThGIDXddqwDYaGE28j5Fet8d512R
	 dDPk78T9tMbtWpBjIXweOGKYzSuNYWWc8rCDgmiBr7j7AFJO131vagH4KwyKe/rYbd
	 BuNt6hLbLhlwPhvo0x7rAPfCAywRjWiLC/iR+D9AgsVDGs2zLrBoQmSMaugtx1auP8
	 Spd1FYRs/BIZKRI7umOoa+YvR6O8JLSSrXE1E+sOD9nxIgCldWQH4IoAtEzOS5Ck+W
	 IbmusSPzYs0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E588C71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055159357.30647.12723798466550829878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5eaeb5ecca28f53711e952d4ef7b4101c5b401c4bebfa8b0fb52b0f0a61e29b
Date: Sun, 22 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750551593
