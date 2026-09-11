Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BDC31ED8B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789170634; cv=none; b=aiR78te8v/mmmd/zTts07lmGQVrbY/FiWgNpy4pcniT6WW2Um7SmUIxfXC123Wr/fOgRJ1ok+hez3Q7NdQpamkOfult32vHQYGswBRRtBerDaa8x+3Cg7fAezknZOR8COu9cqAd2qzjxQyza6bPDtIOoCjczIfczxZ4X1DJHWQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789170634; c=relaxed/simple;
	bh=04X63T0WcyiJpL217uq0Y+4nu8zNuPHtM7wut63cpyc=;
	h=To:Subject:From:Message-Id:Date; b=oj08Q4PASf7dhy6d+6CUHlzOg+qrJLhHePHkDJu/MNkH1i+mUvT00fbVqRfoa7vXeHL0yrWaQI8Ds2cncrcFKA0WKoL9Vy0eAaTPLw0BY1iuvEZbSx/2UPnGBfuR6SxuLXt+1Hsm9Rx9ZHZMvoackmn6TTrFYz66E4gIYJdMiDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgwjFyV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgwjFyV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC37C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789170633;
	bh=04X63T0WcyiJpL217uq0Y+4nu8zNuPHtM7wut63cpyc=;
	h=To:Subject:From:Date:From;
	b=SgwjFyV+EB0ZWTiyxtcWevgJ1RJS9nqsytyDxZAGorxK4oqwb6UaITBRZXZ++Y5bE
	 oYyLaammjPCOKO9U0lSdFuQBRpDxfUY/S1vGxC73PqplNRIc1NwRZSedI48c+HB/Tp
	 ke5F/apOektE0uJ2Gh5p0TYBHxe24PUMXzoqdL5zrywmEsub2505/AUEK1JDHuryAe
	 ZZ2KRpLKO0FDhZ3q1pdcrWj4xLGUF97UD48vHBPuU+PCYYyqu1EUJRMjem4whbBhrt
	 NWw9m94SmuUIbYrCUvwBZIHHPgwfGegwvNOzed6O3TZzTtq5qh/zJxlZ8+27CZzBhl
	 2GL4WOzyCEw2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F02C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917063368.2647.1383797279898149332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604650befedb0d121c7dbd7c687e554b31d736ce9cea13a8ffacd41346803ec0
Date: Fri, 11 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789170633
