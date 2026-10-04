Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7460121D3F5
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791079234; cv=none; b=B1EL32LcvVJ5U7WRdxNANvZ/XZNTZb7qbK5ZqQYeM1p1h/cDAlwEO7tUFO5EBcaofQ2WTDA90ELO6YhfODGFm42wl/zlXrhCtMgIgz71FEGgHVlFN0/SKFdDlKPHvlEj4lBd8P89TL3QEo8PZixwPswEI7QYbQZGWeGo4coxL+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791079234; c=relaxed/simple;
	bh=feqJa+HZx8tpHAVECaFvzcND/ifu1rsfJclE7zUJPkc=;
	h=To:Subject:From:Message-Id:Date; b=T9mjQ/TGIdTCsZkZNWzVOTZt0357EsWlWpyAQT62HBsxadsOLUuxGIG5zIkOKajep58CmfxTvt935Yn0ZJDXeHtSWn0rqMlRT6CVl4l1PeujPNPQ3qfB/zupM1Esre4Zky3wgYfknBc6CvlzPCBDnB8DtVns9/B+TmHpgeyPQiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8GdO0/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8GdO0/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB023C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791079233;
	bh=feqJa+HZx8tpHAVECaFvzcND/ifu1rsfJclE7zUJPkc=;
	h=To:Subject:From:Date:From;
	b=Z8GdO0/22yUK/oh05HRcSwy2BKYpNHmmFdUr7s+XIkDYtcphLbcClRKQIGs/BuIf7
	 8uzRMNkNC2h/g5mcR8EIAe6UT0x3Pqq6qU6mjX8CASRX0JBhXePwizs4dJ99m8lY/z
	 ULj1/ZD8GKsm8s4osmD1f2xhs0Huo216/7LhcAltYJXVp131iwGZBv+y2Etn+FPMvK
	 PmpqvVvGrOqdoBsb3fGOS5nlm/z459w4IH4AquCmtViu6c1WfKSoYxIW4RoKbm/wEr
	 Eg84dyF7xuEgi65Mf/PVUfW2kTmH/1FeRGOGuK8QLkFpbTn95rn82loAKZn2zv+V/u
	 cugGN9vC0mx4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1894CA5FE4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107923369.11794.8584981052020729415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3604753e1e7a76c2764d01a852b53081fb52b4d76adf858d077456fb2d51d9e9
Date: Sun, 04 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791079233
