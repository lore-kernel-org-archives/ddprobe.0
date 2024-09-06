Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA671CE710
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725630354; cv=none; b=T6LzPd/DCQbkZHV3v4ss9kh1Bp2kPOBASp2Ta+qqjAofW2CwL7/DMHv1D5E/xQONJywuJyz6LNEdFi2GTRdA9fcSTh3bVEBlwaZNCZkhGMh6b6WNKsDmYYxlV6F3bOWqe8mbVBtAUYytxDGolleqWi4AFxg75qCUPnsCdIOT15g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725630354; c=relaxed/simple;
	bh=Fbm1HXu+qqIeKl0rTT8nLcaSNfLoKd8DP2o5jNfxYSg=;
	h=To:Subject:From:Message-Id:Date; b=DrULqPlX6ko6e46OLTrOlDnMtFsegxR55dAermq6xjURAD/j6ijbmn3jJsQDfhIk5lD4n0cWymD7iMyHvBY/oV2dQI9hncDocPGV840agxmZORfkQ0fxMqVnGSjnUid12Qs3yPWdd8YAmV/i/Thuo1/IGB13a/pJorsh7+PNc2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gv9VJ93h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gv9VJ93h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1313C4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725630353;
	bh=Fbm1HXu+qqIeKl0rTT8nLcaSNfLoKd8DP2o5jNfxYSg=;
	h=To:Subject:From:Date:From;
	b=gv9VJ93ho+/lm5RCnMSvwgl8YhwnnWMoKPFFxX8D2KD4g93cDwlGVgQvT8W7UJQD/
	 XwAIDz1E7mSebo8vLXjlHLWae2hmGLgYE9jXyGeua94NNQy4giPhs9sy+O4SxWZ69o
	 BYKol35GJHfD+YjKU7uTVhbLl5+/zfZEjSo/LYvqLrlkbqfeANLldC+onWqZUMyuiU
	 nJ+/zfAPGw/21VJTBbptsH+HO36VIsVem0rGSiAJ/ZYDiehUS5dPV3qxqCLQGisUQl
	 atn9Q5FP/6qTFxRC3p/BNkWStYcHYfBInu2NlGf1KidFQD66YNBWTOJMqdIpxa0ILU
	 0BgoUyRIscINw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7FCCE7B17
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172563035363.13567.344073485248043397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d252abbb85f155f754ef49e746c0709893b683f0dc4bfe43a124da31746108f
Date: Fri, 06 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725630353
