Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAF235AC3B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775699734; cv=none; b=e5GTRC5sw8xcrHOrnDfiEWj/ZroWEngHk1y0pzsc5alUJsxHIoTBnjnPZxn63j99k/FTugODMB1CiOFghcXRhrshFYlwBhQwwngnEl0j6bU9B70eVAcn4x5JVRFg2BChC31W6yTen5R1+5JXk7OPAagVmYJJT+tClXquwD7ZtV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775699734; c=relaxed/simple;
	bh=l1N7IRhhgrjk58LcgJdFolvIQKF88Y1SYRBGG2REygw=;
	h=To:Subject:From:Message-Id:Date; b=gXHhvQnUkDZB2f1pv5pDRQr8g68uFTGlWgBhQVIgZB7gQ2u6HubWke+UD4kAPwK7oNNHTuTCcuKm62JfpZFfXeu8RxQSTmnCwtO2UGvvtB0AoNceThLka6dxvCNiXpoAMMfDuV+AaVUBJL+rT40nlZPvNYBqWNThW6xhZRJlVdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTcfhrOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTcfhrOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD95C2BC87
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775699733;
	bh=l1N7IRhhgrjk58LcgJdFolvIQKF88Y1SYRBGG2REygw=;
	h=To:Subject:From:Date:From;
	b=oTcfhrOn1f42f6oLWojuLAp31lsk5NDBGE8tCuLqx/HyfjfnQcmtZY4b4AC4du3Eb
	 gl6vq1oF2OMAKYxDquA0tmtPUiJf31ewnk3dSrc3fEHoqLOjHOcox8+q04NmDk7TRv
	 d3fTGXNU3dmdXgQGZ38pRSnpHF0STInu8pbSEvuICTn4eAa75Qt7m8yxGk7LejAWXu
	 r+Pa1LKowrJg/XJv3oK07mJdwN0ReyZuaM9wC8647KvRdqDmFEsBaARfWFSXMTUi8u
	 CQJtHwDdastgGg/FRC/h3NOfHYYavJ/Xbhlq8kECwoK3QEfsjRvSn+vh0P/W2uR7Uz
	 2/xBlfqmZcavA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC74B10FC456
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569973369.31584.12353848836159298272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8470d3fb52396a05ff655718deb4691ac78f5de2b753868b1d0658d7a1f1a94
Date: Thu, 09 Apr 2026 01:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775699733
