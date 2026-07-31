Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3554A3090DE
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785461434; cv=none; b=PVNcRDNJZIjY9LMGAEw6+WEmwhb4ofXZFD/KEVBeccDfI1pHHLZTCJiX9PfKESTyP4m+IJyF2lgoLd65YBt1DI9MuK7/bwTf1bOWQhuZ+OqvFfrS5q4yHzoDfvnw3ENvc4JA1uRqAq3d3ekani/TBrWdYmmON1/GstMvZcPGJTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785461434; c=relaxed/simple;
	bh=CzyWQHw2j5metCvUWwbK3o6YZYMq92IwD1h7xeOmA/A=;
	h=To:Subject:From:Message-Id:Date; b=dUxN5tSVLTWjGIcvqzY/TfI4nl8qq7LfVHFRQfdtngRcQ1hiM5vc+2T7hyGSWZs6DFQagCfLVWhmq9kRE73no7SQlKNgt18s/5w5rHFanBlymuEv8WzoOGo14Fk59tg8moMlQMmkVHvip8Y1f2ylB9SFURrOi1oui6BsqREf0Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpE1DZPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpE1DZPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DDAC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785461433;
	bh=CzyWQHw2j5metCvUWwbK3o6YZYMq92IwD1h7xeOmA/A=;
	h=To:Subject:From:Date:From;
	b=lpE1DZPnnj+CCOGMIxlpu434Oq1qRdq1fxUf+Ao31s5aWayoQS9TjACbVGai85yRP
	 rNaJe2I8DBpG0CPrx128vI/xOOK8TcVcAcAdXd31RA3Jq8gWvKlzpbmGgphbuox0N2
	 xAojB/UeIcEPeWZavr/GH6sXETEpCdKo/i+8xHetR5CAkQiTn5TBqccNyqCqalOh9h
	 PgPOd1TCrONdPUtYbxKRqZl1j1v4fnDGVCBnwyM8nV7Xz+qPGMjh85TibfqYJ0+lQF
	 np//ST4Gcv0S8z6wrw1tozQqcT+Wat4lHaWkIMeRTY/MhlCDh3ckyuZS52BhrEWGPa
	 sdyLJaEZJI5qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB60FC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546143368.30293.2225889355333181514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e61870527bf3c034331313a6ac70c069f3040546d1bd713708b562706984b4
Date: Fri, 31 Jul 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785461433
