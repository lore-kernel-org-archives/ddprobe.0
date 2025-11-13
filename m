Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC22D6E51
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763032194; cv=none; b=ejP/87rjIvfFzbdpcgyY/XEsthC2Gp5r0gUdlZiHS8lBUhdLGlWfEiFykT3yr9Td9gF7mAQFtdm/bZiedibu1+RNmrkA+fEU9vcHXJ4mA1GLImFy++mKVAQoIjNnbUuIiZS0k0eyulQLgTa/hcRufogShsSNk03OB+Lra4aC0/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763032194; c=relaxed/simple;
	bh=ly+Rlrv83cy7RzOpOE7cfVJ5HziIKGiKAzIbwxlYU9w=;
	h=To:Subject:From:Message-Id:Date; b=aKC7vO1D1oda3L6rVm7NOjJ0Dy+YPYkBSBwMdNrKfJkGP43d88JFd2cXV+FjkVAoaHlJu0r7uXWU5ilg8VYGyEEaA2iggLIsULn6StwkazTMaqMzYYcKsu/kNvNFopzb+fvIsyo7YigZUdxtzrmzk+ihlWJBIpgPDwDxiUNvXgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJCftYw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJCftYw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE62C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763032193;
	bh=ly+Rlrv83cy7RzOpOE7cfVJ5HziIKGiKAzIbwxlYU9w=;
	h=To:Subject:From:Date:From;
	b=jJCftYw0eJjWFnmotUE7MUrMP3VQwiZWb9Fsi4t4RzeZH4NVucojdVz5qaAV3fxiD
	 RgGNjwPY0SDBHUl9rlGd3RIsIOv+nr+UPtKw5QCthwNTvYb0LgMjCAk5f10zjeMC/g
	 zWertlLa0uJTjbAGRM8AgZdgp8z6qzde4pGpiH81tUjN9b6e3336odM1n+OWEpq9xK
	 /vFGEw4uhNgMC4Ewnq1fKZ3hXAfUt7whYi5kaaTWHCIrTpXC/VkMor39lbn9cLy0Wv
	 x1yn2KoiP6njaGQdu8XtVrVpoQw6B4NwLq7Nlz4Bib4ISX8k0jRC4GG0DZSgm5MXU4
	 Rko1NhHrNAduw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C59BCD5BC2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303219363.26002.4116941589918627107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998745e92d275a7e3ef68403b83dac88a35fd7131841c930b3ba2edd6cf58b85
Date: Thu, 13 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763032193
