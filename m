Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D481940AA
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729454154; cv=none; b=gzGaul8xSeyGOsgjUr2IGh1APktKyH4nyrO4etQJEYAh/z+6SA9kgkXT0VhH3fuwKCb1N0Sbv8CM1kBMr0gP5k9dT3scpT2Wz0RA6MomKONfIWRjiCY2LBsftMIxXqeykPEYcHzLVZoD+EqBmxGxmp8ZZIin3y62v9SUta6GVWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729454154; c=relaxed/simple;
	bh=u6TMDLaz04uSHDEXmhW87jhGKtc5k0JbC4xRicX8lF0=;
	h=To:Subject:From:Message-Id:Date; b=mVZLeFb4qiXlLT2rIU21gfz5VwiNTgaBPiFijKnC/cwqTBUCryWUpmF9aX6TrcjW4SCS1NYwVmazApkGp2/nYLwwMvvJkTfLRJE2o1N6sPAG1HZpzJm2Q8YMhZylBhO3PMHQuxmJUs/DwQ6Ss+Zge9aMsnTt+ERns3j08K3GjEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rz+SWDwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rz+SWDwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A04C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729454153;
	bh=u6TMDLaz04uSHDEXmhW87jhGKtc5k0JbC4xRicX8lF0=;
	h=To:Subject:From:Date:From;
	b=rz+SWDwbvBtMOKIs37NgPIGmVhuyk47hpaYzGJZB7KvjC0w4IZE2xYhPMBugUjLxQ
	 GmvDRly60DDo2//MGwShc9fI72APYoQDJjEsifVO3oc751Mc63JVJan6yIDbUihOUq
	 x4Vx7DgfQsRCdcyhrmowl2d1zsVv+y9U4FHcc4TFNAysj6y2qAL6Jg/tcvEj3d/bbS
	 EqRKn/tqoH9BIg5yJ6O5q5UAD7w0HDqqaO0tSdNvOMHejbOz/GvD1b/b+IL0/uwLbj
	 N3/Q0/jey9K3hAl3JbVXteISDcmExIPYX8uLjb9WLkmRfI1NHAueEMEtWKJe7pkkDG
	 EvIFGz1RVnCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C53D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172945415359.27511.11326398579358450148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da303483381d03de4b570a1ec539ffcbb68d3bd8b39413de7bdbfa4458a715bd
Date: Sun, 20 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729454153
