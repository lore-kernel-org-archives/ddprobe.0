Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4918125D8FA
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743710994; cv=none; b=incegyKX5/51QvSwWm4WSvYiXsbob2vmdCqK/BJDdG2UGzp/b0t/jjBOAzly4ynJV5tk1pD0Xytn+afBr5+NbiLezm0F/REqY8ws5ZwAHOTs7/43shMUKCyAlv2zWvjCi04yl1hECVLdli7ATuaEK4wh76+wFDmIvJdMX2UOkqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743710994; c=relaxed/simple;
	bh=TMDJczKoU3UilhAZlhIadqsmQJ+Bh0GwBmWq8DE14eE=;
	h=To:Subject:From:Message-Id:Date; b=qmrblWpbPuNEknb4wb1bs1Y28TxxIzEgXNtfx1oHe7MfEGbyjiXJRltWDsCSEiVsO+nTN/oYpiDZyVset3lPs6IdFYHiXtny1WJVeB9+snGb7K96OkXwcChkFT4b5a8wMvrDl8rGNQMQX+1M0evsLIlNBmxUxZ610KdfufSzbuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DE4TYkgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DE4TYkgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743710993;
	bh=TMDJczKoU3UilhAZlhIadqsmQJ+Bh0GwBmWq8DE14eE=;
	h=To:Subject:From:Date:From;
	b=DE4TYkgMZZ+xyjr/ibAH9xW7iZ/PCsxpclFeioZnhPScLvWIFSdfsp7iljLVgFHtw
	 Z939WqxCLjkG9al/nAzHsdnF6ODnoKwsvfa0OTUVBWYvhBQkllgu2h1NkhJBWaVfXp
	 lMkX0VtuV8vHRT9toVqIxhhs7tmX2vb2duJFwfGalcJh6f35opqjWf4Z7WvutPx3Q/
	 9X6w/d3GhEz8z/TF6XLpwImILP98DwyG2cQ3/QdtmSx57bvC1eN7RY8lFEaLNuQ2bK
	 M5fRbkIl+xV/UsSvI5MzwjlMVhcuI/H7dl0tCnZDhvxAWFMTeeDRZFDHsqH+n7o+wz
	 jtpIcopzuduMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D83C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371099359.5238.7236259841657742326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1d80652a0f4aef99b3ab6f1ddc5978dc64d5c86eb91b8ead5ae26443424938
Date: Thu, 03 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743710993
