Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330BF1A7065
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727976354; cv=none; b=FGwVfW9sUKMghhivQ99H+Wy6ZFExghFdhYDvHrKdvZxGNx5Txl1J0e5zqm1gTgnvzd06iCfLOEViF8X8OVvO39EHmb7I5BYUGTpx0FNpibwna3v2MbC9dSK5KkUIZFWJmkvZCGUL5HJlPakpbZYeCLcn7UtVd8EEThn7mv93CXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727976354; c=relaxed/simple;
	bh=6Tr4YpUtPhf6ww7xRzQKL7d7Andyo0ny3fAmBIx/IRc=;
	h=To:Subject:From:Message-Id:Date; b=b5p+aHcEQFm0TBgfUuRhh1NkdaAkQPdcs00rNIiTat1MtaaOXlUoejQ2oMyRs+SPLlotjDm0jQP4o/JQYYlH4xZmqc3QJeBjSr5C03QpKg/Iuwdka/D7vGd8UrvPXymXOqV96FUQlowP2R1BA+RBzAq9i2x0sAyPKzzTp5TmwXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/PhpRWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/PhpRWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727976353;
	bh=6Tr4YpUtPhf6ww7xRzQKL7d7Andyo0ny3fAmBIx/IRc=;
	h=To:Subject:From:Date:From;
	b=e/PhpRWD+e3MiazFrJxbEbKO+BP8bTd5Xk1rx6V6NPH0++NhG4CFmUuC4jUfSE/Yw
	 8y4Jb5gnUXBt8/Z21bJ4X0tsnNzxzoygHhQNtiolMI1WP4b8mc8IZH+aNU3fsMkMwQ
	 kurMibTHt9vjVPMIubY9EMAw4lKpGEb0/kjALQOnfI1P0/bQVsxwp2JsaPYVVdV3Bu
	 N28pfYIu35ZSiWCmbSyRFGbOcCOLHIMDsbtwiu6i2v22E+P8tADGu6+FX6Iny6WiP1
	 6PBt5G6bKfs7WqsxlId3klVmFqBmgNqOoxMp/1qPAWJ9p2PIDt3/DiWeHWcLzFj0mM
	 CpU4CNw2JhVtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D59CF34BD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797635358.5769.9289151398073507718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f95b7b7e4781e410db8799099b750ffb77780ca43bf6651bb12c05b2e7489e8
Date: Thu, 03 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727976353
