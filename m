Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454E42753F0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739489934; cv=none; b=VEXzgTIVtP6DGFk4R9FNU/LbeYf98qG1BPk32cfIX6MCqeWXBL32pU0OYZqQfScSkTRjFe3yENLgJbm0CCXtkCxTr4mgw5uK+VO1YSp2fyGw68ltlAokqX3lIkEjbHouTnM8w6R/USu7qbh4C3nCur4zEM25IIYGHzBl0SaPXvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739489934; c=relaxed/simple;
	bh=wPvcs9UqAHC73OrXa0Qrw2mteZh0/HtRPsJjYvXt2ks=;
	h=To:Subject:From:Message-Id:Date; b=YBjgFSz/1kCqzzywG2aHtMXA20AKzaVMBhgda4NzZD4Vok5sH1p5u06eICK5g36FhUgffEmBGSRO2+FzghAuXllpWHXmZ+fNa/mQigAn3HoOaXja2RLO6ifBcpF9C02VPOHgQMXRmCGBVNJPMWQjDh4Eri37kXzphtvsB9Wl0rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpK9ZjIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpK9ZjIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3441C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739489933;
	bh=wPvcs9UqAHC73OrXa0Qrw2mteZh0/HtRPsJjYvXt2ks=;
	h=To:Subject:From:Date:From;
	b=NpK9ZjIoMwpQ09ZmamXR77HR0YBw21m/LgyBVqy4ttlqKzwSBZWo8NbCTZ7d9I0bG
	 QxaNPQ6ULo9vL11UNuzyJE1PoWZvWRotwcIhZ2/rRtZYx6k56ymikOd8ByKc3+nCT/
	 CRh2kV6MuSTfTxyCbWhMlMLHplbJsov3Scla6frc/64+N0zpWyqepxFrwTE/LilZsf
	 MOzaVn2OV99igs38088+KgiIBooC8T3g6ES4sr27dBkW2V5SdRglYgsqPHuWYOLePs
	 m781uhtPHEJO2fmPXCnTd07kmsEOsOpWBoegO4FnvgbWUs2fn/Rp923RbjNZDqdJXm
	 USNEZI2dmgzlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE1AC021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173948993360.21980.11842656800123339358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffc6e0dcd4143e61bdcf3ad05b3d0fe2447ebca8a2d268fd0c590c0f36ad468
Date: Thu, 13 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739489933
