Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CACE571
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749496794; cv=none; b=u8nadp4YCQ4YhjZaDrSSc63URWbzEe8IYCu1TZydWvJhVqRScx+ta4ePq4qe+7DQOgabRcDGa7gRubB9G/cY3RNVX6n95XBwSv/uy1sD9IbiYoT7t2rTNgBAjvMDsEygT8gUPi8A/gjnzz8/QvVrCcXGmKh19d6N68xPMd+kaGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749496794; c=relaxed/simple;
	bh=kYBf8umiU/07XAWEfCoU9M5aSyyw1jDgSOKHFuj5vWA=;
	h=To:Subject:From:Message-Id:Date; b=dC2w67oiZJNFFbpg2bHGWB3XOcXUECfSxlNxe/Abkk83LVZuNE5aFMre0uWDc68+FZDIo4SisoFwwcuMyYE4pig1hEDuXlKyMaRqTqm7IOOcRGivUCXT4iOPvhKFl/qLNBt9kVpMLZps+domUBynjZeu01yVlpBC4E4f7N6rsFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/T7uMcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/T7uMcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1075C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749496793;
	bh=kYBf8umiU/07XAWEfCoU9M5aSyyw1jDgSOKHFuj5vWA=;
	h=To:Subject:From:Date:From;
	b=t/T7uMcqCG8+4XbNy0KffaiTCJBajrvguvVTkCq7MEML9/yBGRmv+8rFkuNeOxTBY
	 WWB/dKL71i8t6LyK8uUpw1deaekwnup/a3ktPCjVTc6DoibH1uTbBzEkSmAVEQF9YM
	 Nygr4f4T4zp5f6o4CkNDgeKoLUW2FniE2j5tJEfrKGMGAW6oVxCxuY7tl/at370Vxn
	 tH0zDxDY8rNAkKXaIagWCigyc9YHX6y9abVq6auZoz2/05h4H/bAmpLI6GoRkH15bl
	 igtjpc9cwkz3mPxw3txQlG5dWLWoMW3Ca1xpmjG19paoJw6Qd4VaNsJyfsfOP/Fw3q
	 dyNhV3UZ/PTHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF18C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949679358.15392.4482602803903616927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c56b31676b467e611ffb84968b6e3dd68223b2812e6e4c38d658cf5567800e
Date: Mon, 09 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749496793
