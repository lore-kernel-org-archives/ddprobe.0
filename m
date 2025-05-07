Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FFD13AF2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746627594; cv=none; b=jE4MuUkfLLxiWWo/OoUVu8ijHfjHDRJjMxt6F5YDNbDcR81+k1XQpX/gmafpi5olrn67Ho1Lj6GnEFleN2mdAql2fB04ufY7hSV8qlLh0aezSJuio25EfO873zZlNaQoTwCVleFXOvJGJxSoZfvh2hPBNXgpEYbvuBQM34Kd5pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746627594; c=relaxed/simple;
	bh=OHM8HTcYRuNrF2dTHWHaYQtqT4Xuu6AwnnNWUh3WI0w=;
	h=To:Subject:From:Message-Id:Date; b=RCSr3IDOZTyop4LhapC0INLThFj4qlScXSiBXUb0joFYA0cwHWeJvnSJvsTKFRnODo9Kb6nmC4Hp+CngJT0YaflXrHE5eFQn70sMGyW2ZKwjJEmUc7sfAeLjsEqhXrI0wOSubyyMcPBMRmGbXF7HnxAtj418eWPZhwxJ8Txz/AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOrFaXoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOrFaXoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF606C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746627593;
	bh=OHM8HTcYRuNrF2dTHWHaYQtqT4Xuu6AwnnNWUh3WI0w=;
	h=To:Subject:From:Date:From;
	b=fOrFaXoZ3lcwNopelBfWBT+8kdPnNSdO0x4QGMUarUceNZRiE5LCX4NgwHIFw4R/s
	 IMz2XTNnKJ4/ftFojQSUF4XkgFpCwzgfusGRdlJYiP4cqPdHJw02HGaqOvd0giTx83
	 gXnZw2Eegk+usDx/hJ0Kd+o1pisndWm6fZrF+FE2FR5gZ6uATeFoYzKMOHkS9coC79
	 F77WhIOz6bDWa1in1gOm4HUlBtLLd/p5v9WXzU3n8In9R6gEz8lRKdTZ25QoenVYh0
	 6gaGxsZ3HLsb+iEayueJL+UGouus783BoIAc+cbRNI/k8KtrFEeI//dRmv/SUA/5hU
	 2+v3UDtU70U6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA27C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662759362.26131.8059823551510974400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03faf76dc3d5f2026c545f854ec5b508b71861f744a412b76fc1306ac6abcf47
Date: Wed, 07 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746627593
