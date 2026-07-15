Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490FE3B42CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784091514; cv=none; b=Qgsa+Xg7/ioQxWxQ5Rlzds6gZcG5bKxBya9TNjoX23xvFXuprutpO3COmBGFRf0YRx3rhpli+Kr4qZhB0qvTavJt2tfnwDMHfSJozA20FR14MbcrsndPnPy8ZheLF0FjkVbwF9v8q4L0hB+VqQo+PHUR8GticXDbQskTGSS6n3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784091514; c=relaxed/simple;
	bh=SB3DkXvY53FloGq6kMe3yNZ1NH5n5vRkIU4tBq9pGiA=;
	h=To:Subject:From:Message-Id:Date; b=nM9c7QY09UDh/42aqaqU4B0hUU743jwtH5pxdbM+XtuXb0y7DBSeVpyk68ZxCwHw4ZgybSN9NKnvAoGdHEF/RmWX7ZOB9tsBrEv1dVL4rniBmc4ljWLa7CRse/FrSVynVOEssDgwZtgtY1d6D1dsiyoid4oo8Ymt8Ybo6QXtn4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcgvE1Rf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcgvE1Rf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB4DC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784091513;
	bh=SB3DkXvY53FloGq6kMe3yNZ1NH5n5vRkIU4tBq9pGiA=;
	h=To:Subject:From:Date:From;
	b=dcgvE1RfgB+zJd2iVllzH+R0TmC11TvtUMZuhdPOvJOM7DTlMzHK5mV2qnTQ6uHiY
	 AQczLow4O2IA07GBDzVcmEnw+7iGio6AStcoYOdg6+wPYc1NSMwPqnZYEpSLwastt6
	 mwsPYRRp/aP6wAcnVn746QercNuJYj7LS+S8k03XM17ITIW85M8opLm/UH6V27dgeW
	 lAc4OjZXNaXH2DY9T4fbCrKsVjwZ/Ub+l/oPOphiJoK1AOuyY7Jvsr5xupZf4hKMDx
	 g7dRrFM0OqJOLtRSnpX4/9gwoqQ9XXr3sqJZsG8n+FtVZ6nE5GWx1mkiw3SigWsz28
	 K2brhLYCAa3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C91C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409151368.26221.3849856687815743992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d3cacb7ad486eaa672e8b3146b212ef11e789df4b05a744df4038deeb655fd
Date: Wed, 15 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784091513
