Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213662D8390
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771019694; cv=none; b=h8kDzZJ7qzAiwyvj/3bZlSZbyRNLnVOaZ4+osf6buZ0BHf/9xywU85YJCfCUNeIGx/slWi/E95KVzVLhtiN6rFq3pOJkBSicwirLrgXPORrYMsljyMtAvOkDU+nh1Ph80GR8YY6c0AIkclWIER5HHtmdGgcaBK83BpBuCW9oI84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771019694; c=relaxed/simple;
	bh=dTaL2tO6uSzQvUegveutVslzJvNPIG8b/sNigmTt84g=;
	h=To:Subject:From:Message-Id:Date; b=OQj5J/8+SS3kzxEGKRha61n+rl1LtRi8z2TZQbaHtzTmH2NV4D7JHeOHFJe6UaJ3NnVpQGHvFtIXXw5tKRTjmM81LPEKZJ08EAxrmb2gWSPZMlq1s6tSWZ0WwVoO5GLE6oVvhQOZLielsECN0jWS4I2CtUei+PzhB1vPuarY//s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QA8r0SRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QA8r0SRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA085C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771019693;
	bh=dTaL2tO6uSzQvUegveutVslzJvNPIG8b/sNigmTt84g=;
	h=To:Subject:From:Date:From;
	b=QA8r0SRZhui7+Zc6g0Xn+/Nw6KN4IeUZj5y8w3HEJwKJkapb0AJkFot/KoXrxUu0k
	 iRG1F+J9u7Q1duFAL0VnAW3EbqTnKvy8KqAj6Rkx+dAyP9CIas+GzCZ0S/NC+o9wO1
	 +mAkV1qsBfoNUH9UQFyOlJcQt8Z6xFoLIQjR9y3O3obBg3/f6hWiLrBaSFkI0RzYZq
	 2Wp1sgs1JRujzgIc75wEimVFAIqa0esfcJ2/98P7anDwj+mvrepJ67z/VLGcmGsfCk
	 pt3DoTvJsJDruzqdcv8i1/rF3m1XFOfySliod4VoyB3Xq/KGQ36AboKh30FX4IqEs2
	 UPYjZPCwGJDnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BEEF99DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101969359.20923.6550687627150214737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e25c45312bd65894cbf9881ffa5b58b46d507d0b3ba847e4d450a66539c037
Date: Fri, 13 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771019693
