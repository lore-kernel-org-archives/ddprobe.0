Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674FC1D432D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792129234; cv=none; b=SikX0ejmZuBMNT9MQvZBuuX1bJ4usdxfkeT5HcQSkTFHRJLGx2AouxSe/Lz7QecHpyfJTdBESFCW6Xg1DwvDGPwrT1fYUIt9mWWb05WWdqKI+rUuUkqCoQxR7UzOGqAyOU31d9RX6PaVr3jsh7XEvwY4F+2+VWgGibYq4P09lJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792129234; c=relaxed/simple;
	bh=hVxY2MPvqhJA2cKQLhxVWOQCiAjJHacpu3Ff+VRrdR8=;
	h=To:Subject:From:Message-Id:Date; b=pab8H1Q60eK0fwXGx6Qe1WPi+YZUs5quwBmF80Mjis4FjhxUHMh7dPY97A4LN8t7mLtjT9yaws7I6WS7NquuFaTXe7SOpFMmHA3ffyoybMJ6LCr4f6D3KrbgQ6GESUTfnlPdIOKd+HhxBXkOAcWRfV+Asan1oBlk6OYKmxdlroE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9F8Udx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9F8Udx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7CCC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792129233;
	bh=hVxY2MPvqhJA2cKQLhxVWOQCiAjJHacpu3Ff+VRrdR8=;
	h=To:Subject:From:Date:From;
	b=P9F8Udx8OMfuxqB4P2MMnl+V7tvW5BF9HegtoegKlMaef8IXMpaNtYRpq0HudxsRN
	 0wpJI9wzEyQvTMQP1LhP/2oYfF8ResG1jdcWwg9a+SCYvuCPj+mkfm7GWFY4zsSLIX
	 scdBCgtYQR0iVvM8qbcnvaPGOaoHdyxglClnzsse9/EDGgODiXIylkpoSli17pVrhH
	 WjG85kdttnTEOT6FtGS3okQhLFL6F5ECeePvUFrT9uOkjD7yMFhevh2xOnPzD4oAXn
	 z+05FBTKoBYnBpgjm+V2z9x7/ZwhzPcIrbcYpxLNKYc9E0x92Lc4aYnKJL4Rwo0zCN
	 guEuHe5L9TvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C49CC6B2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212923368.7725.17809039732727537944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b118a999df767bfe958d298d7c2b5a3bc82a2e967ffe6f06fb4e3770bc8b324f
Date: Fri, 16 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792129233
