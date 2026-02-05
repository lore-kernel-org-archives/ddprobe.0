Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F7D35E523
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770290034; cv=none; b=stPF+VlsDvf9LIkH0fZsDjrCcsqHEaC1d+iG4Wa9RdzFLzrw5BHOgZPe0fOYx31EH2vfmSnJ+AHDOqUbMTNPW4luc0IQ7xNffwfKirVSWn6DBZGvIdRCyR4spbxQlWLlon/aezadg7t0uAOPownN2njOZTI9jLlxPRw3dFcd64E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770290034; c=relaxed/simple;
	bh=Wtka+bpglrpuckCVB7gRx/doqgm/jMsrf2tXKUy808M=;
	h=To:Subject:From:Message-Id:Date; b=jCYStRuvjordPZFdxRZ47IQyowR6mTWvG9rI9gePE/L4TojJR7nXOFakPZ972TpNxWjD/+iLThoxqV7HsvWxC5MaIoY+zcQWJVCHFm3mVHkJ30/dr5WfinnHyeYzF+r7jUtETLWxyv8yrMU2KcxQs/UV2itaowEFWkfgtJ2J0EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWhDZIKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWhDZIKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07DAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770290033;
	bh=Wtka+bpglrpuckCVB7gRx/doqgm/jMsrf2tXKUy808M=;
	h=To:Subject:From:Date:From;
	b=cWhDZIKM224dzzo8SITROWoz7DDUgoFgaP3dGfLEgx2cF0ehbAg1+X83SsmNR5fUP
	 Zs6l+KjqhtkGRuQpF49w8PH3fKYY5OGc+fRHLR9xSmv2yJhYyfxQPeLHScQ+9VXzoo
	 A6eqfnn3eePM5U+JJw83SKk4mRNUlyQv3HE7DGUzc43F4yO7s8kTNBscLxLA6GGR0S
	 9UJTLbmGwRjwQrxH9iHlTil5BSGmAgh8F+7ZG1KvlwZqLlk+nRlLVFLIWeoavTbhHr
	 RyhL0VwNO73nQO7KiIBn43H+YGMBFTXu9T3nIubl2OPpeQE5LI1bbKm6rQ2Iv9eTPg
	 ILyWYn8ikdf4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9001DEC1E9C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029003358.8306.7143414443921638522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724eeb20a95cc8a669a752abba012bfba26cd177defa7ae97c04c8d07baafae4
Date: Thu, 05 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770290033
