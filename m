Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293862D94B5
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761758394; cv=none; b=cUN9ucCaL6AGK69TzJPo3QANwFoC8jpab3obzEzkM2kDz3u5GtqKpKhKDbI10noUhVB6sqyTi2DQ265sNmCXWlJm5F/MhyBLv9W8nY3TVj2EJPPYJNgJMbzET2jJEbjJFVRS/f66nPhLPnDsP+QVO36aro6qLcvBYjeAwZT/q2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761758394; c=relaxed/simple;
	bh=z2flx738X8RVYRtgU49/D2THdaTwUcJt9XuVm1NXJnE=;
	h=To:Subject:From:Message-Id:Date; b=Us6lR4wBGQM7l4EQw481SSXJ28mM9Q2wAmNTIEyCxUmyRmnvKTdclzPnX85wP/aX0DJBtJ2oqmaA0uMMiytyrQEM5Qg3TCapg8PTcp2/2FH/rD0rOoF9FAgHvfzfQ7vDQoEpGjsPKr1AAvhuKgRmnSSQCs3erWoXJOMB67/RBRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9kE+1ly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9kE+1ly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A813DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761758393;
	bh=z2flx738X8RVYRtgU49/D2THdaTwUcJt9XuVm1NXJnE=;
	h=To:Subject:From:Date:From;
	b=G9kE+1ly0g8vdcPUxDYxD1ygKf/yZywtexkxwdCr3AqHPRfrZjqtIVppbAZ79sH3w
	 SbKQmvE3z6k6Qz/H0qnbjN57Q1VsbEK3rjaT1qQAYez+TfTNGYQxVloKksGuyghk+n
	 5NaCsmJj4ggreozAq9fOItY9iXNdCheVdT5OoHjK6Js7szjqkr59N/7mj4y53cdxgA
	 ydG8oyxc4Mr0sYMPzeh1Dwb46YubAe6R+E0s4VV/fUm96tT8HpYMA5QZw1YKV97FNc
	 5LA3CAUHe0AgiPSR5JByHaAfdSJpeuT+AtzQnjKlZ3ghIftuKChvPracGGz0Q9jW7z
	 3AqTSMP6cltDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965F3CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175839358.13376.11603727583203768280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cc911ad5e5ca71476a06382ba43d2c68ede162aba1cbf6694162125ed77d0f
Date: Wed, 29 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761758393
