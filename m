Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2685678F3A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777178854; cv=none; b=WCN4lpckowbghsZ/8K2rpDZq0Epm4pskk3DzBlBrchvZqAQ5wkagoDlENApbHEJe6xp4+uUQj+QKxwCSVabC7N8L/GfpDnPIkfTNz2pPuBfv8OYmNbBexgaoTMQBtRK9nStqg6BKE/tZtanYU9MC3yG7TYAWVGiLGMeC9gjSZkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777178854; c=relaxed/simple;
	bh=PG8bhwIfaLPryG0Q2ILzAssU5BrTkH33UZMj56TS998=;
	h=To:Subject:From:Message-Id:Date; b=NNXCEdeN3fw5m084AETvPBNGOtf8xDvJ4XeHgQjbIF/N1GsHx2s5PJhh/E0prd1/AZvO7z5X2rMfskqAeAQJNaci49VNakg/U8jV2qmVX0zC0iIckvKEzKwBnnt5q+3dvs38we/+K1ihYTmH/Dqu77zjPqO3xtNrX1b8LO/kIYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FliUtUHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FliUtUHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0445C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777178853;
	bh=PG8bhwIfaLPryG0Q2ILzAssU5BrTkH33UZMj56TS998=;
	h=To:Subject:From:Date:From;
	b=FliUtUHuYPi2aHAo/2pR+k4doKnKZUzsV9wtWyL7CbY+5tFlhPjmSJknm+XtuUAnv
	 wc7WtIyl0CC/1gw9o6xEZlwtYB09eHtMa6DX7J5bnmcTeULbEyBmCoe1MrA9pj3QOF
	 eMl79QbJYTHR70ipHTkw6H3A9US22qH8skbK5G6tZwb4dwqPuHT2ZHbq6mngRPzeuh
	 zYWuCgWguqI8k2J9zRFxtnLJ/jas17QSUhzQKaFJHw9z/PiapPhd5W+OJ8Cw6BmZw5
	 8CNEya67fnEmzAOaXh9UosUWQn5JWuc56o17f/plkQPV3bwDuXH9HTeEXcIYRgIBHa
	 FbkL92a0NAQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFB0FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717885368.16004.9443021788500021124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97eb7c4874af2d89235d08618ac2605fdc5cce6fd8d0590a231a052b9e7488bb
Date: Sun, 26 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777178853
