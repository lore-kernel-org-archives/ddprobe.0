Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442703033DF
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783103314; cv=none; b=RJNBGdpJgeeZvpuvyY5szuL1aVM4aUbglwXck/TJlBlXf6fb6rQ9pduYnWFleT9SpDS5q+kZLz6p6D4FYcka1CW6U9DdRb14URBVOaT21Ir8yUp7T2/oM/wx/L/rFfX1dedlvIYWcLRBGjFH/b799au383327XT9u2jcPXjT3XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783103314; c=relaxed/simple;
	bh=2WYw4Wd65byBmN6tIyJVGv6Ff8v0RkAoHUja1vf7RvY=;
	h=To:Subject:From:Message-Id:Date; b=iZPedjqW66YYVsw893vAPHINmSUHcFpq6099r4A6IZzJdgh402xIRscC7Q77PLqkXAtdCb4tlieoVDzEYXMj2zN6sVLdYWjdO+0EC/sZsej92gVIWCYgAAmAPwCFlf5woEkeLZvgVlhiQVe1LOooCIEGtwjQkUKfDkjOtrFliD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCak+Q07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCak+Q07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2A5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783103313;
	bh=2WYw4Wd65byBmN6tIyJVGv6Ff8v0RkAoHUja1vf7RvY=;
	h=To:Subject:From:Date:From;
	b=BCak+Q07i+K4AkYVhpK0hWU73gspukudVv0Ij6wL6KAydp42YBNXfpCdGG2PrFXcR
	 ARU4wt9UvYRsixWq3J+lX1pc8SNQpzEK6uZQq+DrGaZYY26jELz3rBYtQgZcGWHAd0
	 oiJGpeeXiRzBq1F1KhZUq33Hx9Up0cpuu6JU+B9EIUxZffZqjB5319PYwa2bXuI+9B
	 IV1J8j5pUEOAFbstNe5N0EVvor6L/DMFn3W7SZt5j4RncNxJ3XANy5upv2f5CrfNhr
	 2odjewlVAXp6JMx0GLGuLWQQdo/YBTkEDf6GyG8gmJQwTzGWZqNdUvjoc6JdTMXwLp
	 2f5R+HpAzc+sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C2C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310331369.19025.4724355056425365341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2034455a7907d16035d2df1d6eb2a51b9b1237043e4315adfdb1d8a5c2fee01f
Date: Fri, 03 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783103313
