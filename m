Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF1E175A68
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781931994; cv=none; b=Q72udcxE7YA9QPZN4sBISeazqL5oF96XzJr/258RlovWYanOcunXjiFhG+RriBIqiT4+Xj3zAsz1VnQtTS/XTivoLs4Yqb4Xpiuo/6Dm6i7uWvMObFTpUEIgyeS4aoVk/cU1uhnjuLcuFf4DwmmF7z+bNv3z9s0mt+rhhKhnVuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781931994; c=relaxed/simple;
	bh=lvNlFeoPrmDuddaU+WtOQcuzqcwttZGhZFfVdPNjXKs=;
	h=To:Subject:From:Message-Id:Date; b=IsT/iL+vVjJac4M1nPboeOwwErHHLQaFl3+iUZBu2NXv5POyNd5g4zlv83ybEDo4y2GVdBHb7+EMhrqGpokjmxcyvRpwfDvJjkoYd3tW2S1oD+2iZCRBFo4sSfHOiEsx5814fgrGd+Rsezl9WTBx9zW0dN0n5Q8uAa1CGy8+Irk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/9pU7Yn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/9pU7Yn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7F9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781931993;
	bh=lvNlFeoPrmDuddaU+WtOQcuzqcwttZGhZFfVdPNjXKs=;
	h=To:Subject:From:Date:From;
	b=t/9pU7Ynu79BGCzGlci6ECX0MucbX10lmrLew0HfehJ4PkA9eThdRFz7cwA5hqbxE
	 ksf6O4ujx9SrM8ia2C0ZT5u4gTVWk88RGRROv0FGge+ewu1wyUaEyH8b0sPHJE1+Sv
	 QYO//s7QoYAtF/MsUh25PWECPZLqm9/Ui3oBmI9BrcmfiPwtucboGDFJiVzMoP4t+x
	 1iV6zCc128sBrEAMDo35dBSa8O/f/wdt9e+fPOUlBjugp+Yt4vtFomIDQMZ+nVt1XP
	 3iWUW7SxThp30rO6+HPk58cMpPFXRIOSPt0OKCAu4OWL6SNgTi5Nfas6gFDKq5nGwm
	 +t2VyOlYgYXrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8F6CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193199370.9088.15477409044115976660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54946c68a4566b27dd5e71adf4ff6d8f011b8e734d48bc55d1afdbd96c6435a0
Date: Sat, 20 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781931993
