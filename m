Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174021624D5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776958054; cv=none; b=ItYsWGU1n6Dcd2+B3EoVYrd72WVauEcdfZPWUhgipk+HIHcHhJ4LNw/9hrUAwcLcTJXXMGYAdTyrs5H8CRBZhmjcZv9SLiePmjk3P8BwA7CuwE4dGQzyaISMmWcryT24tv8/4hSjLNEKvO+qG/i223tqkih3vcV5vdpo7G+gs6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776958054; c=relaxed/simple;
	bh=49N8pXp2VyYNVeWNv8dZR/UbXYAMhCysZU1FuCnRWak=;
	h=To:Subject:From:Message-Id:Date; b=l5/izSf1wzC7gYbYTTvPIP+URqu0T2NZxSbvMUB2SFx34NWhSeSa5NDWuGsWD07cyPYsTreqrbJbBIsea5/ANDO+cLHQGZw5Xinotf6HMe3yEs/T7SCOJcc+zjkN8l6p0QDClEXdaL5wPLtnq7a79viLLshVaeQWy1J5VNTFNOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htCG74if; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htCG74if"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F1FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776958053;
	bh=49N8pXp2VyYNVeWNv8dZR/UbXYAMhCysZU1FuCnRWak=;
	h=To:Subject:From:Date:From;
	b=htCG74if9ICs4AxElDkiB0P5EQTvwLK23F9qTGhneOCFIC+aPWrd9zjYaHgEGn763
	 e8FmDcjSOx6/gxraCOsUORYVsxXg7HM7HUyTvzOs52LIDoruznxmKmGRjdFwr8Duzh
	 g+K/j+Fa3jD8O1YBlw1I+sm4ixupig51bAtlBjcx6BkK8QAlfg2JP12F44YjYUFOBt
	 fbkZ3rfAu0329DzrzGEhCwbDT7Pc6M0fAQEhYcIrPzKwjBRuNTu4vuyu10dnck2yhw
	 +sq+MdPudl9WI/oujF9a+tSqDXLEWaomV3L/0XqVIXKpgD1xuk6Om5NoxLh88G518v
	 jT3C7JV3hidFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0BDFC0342
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695805368.1376.3437606076368092178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e0d4dc8df9805023c51dd0fb835b3b725d541dc5b725a49c06ca043f3822d0
Date: Thu, 23 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776958053
