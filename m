Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CEA1D5160
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774798494; cv=none; b=GOZzhkuDL2KSVaLyorGgnQtGZUGGUwjWD1m7TDWeUCjFCcXeVE9eQdRLvFcKiaMrTyuU5868ivFbY6cUKl6/dSLfcIHhAtqYyQ/Skb4VC5QJ6ag2xeBVYkKgAe+dqJQAZffEAyUlYq5Mf0tfWfTXU/sZ/djQdUzqPrWQYIOkfgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774798494; c=relaxed/simple;
	bh=nw0JcQ3piE9VzhU/O/Ga+4fPr7vCIigacJb5T6e0gqg=;
	h=To:Subject:From:Message-Id:Date; b=lIMYYadPhzXbgGOskqTw68DvtTbpVLhdiEnAHVG4OWM42msFiN0C7k3kTv/jFdNYM76dKQXH2iVZKZVwQ7cmB2CP+Hz22UyMrKtNGrwRjVF2Dt2EiE7SD0OeIKxjjvMbdVh8tPxp+cLGT/poiO2Lagqa/0yNUkoGnuwSeVdaQSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umukEnTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umukEnTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F1BC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774798493;
	bh=nw0JcQ3piE9VzhU/O/Ga+4fPr7vCIigacJb5T6e0gqg=;
	h=To:Subject:From:Date:From;
	b=umukEnTmECNWFYxnJzqduxK8z5MKgq1SQ8TsOl3+ZZIXNbsbjvcs/ox+ieXZLzb0X
	 Zj6gb1xmvlNvUc1zrnTbQzuhUl/XQ7ybdg/Slblj42WaFLjcA5tsi+WQFB6yr+Dqyi
	 QRbg9PwfIvUqhpFh/Dkwf2S62nRtcLm2w6T0/NMRs7CPtcTzIfYg7gG1IAVKX1ldvm
	 vGEzM5Wo4ez3g29UNBzbFwpftC2b65JhzQy1jGKaPuPXQjgXN2Gr0sit0VG9xZgU1j
	 VxEg4xa+cNSaLI+HEkUzv/KeZnhh2+tXRR3RVQ0fJwZrSyAtt/frBeWckjktCBsoLe
	 63xJOOBY9oVIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A75F3D5FB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479849358.22200.13373783404379713009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6477ab3b5bbc8070ac9cf954a424e121c4b86a09581b90967a7ba6ff122c8f5b
Date: Sun, 29 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774798493
