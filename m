Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ED731690A
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771815294; cv=none; b=DUuCxReom/6mOKOWHR8JBTZsF5mnsv6b2Mx6y/3wHQ7b6qr3lVr+I9mPuDgKaA59nbivQa2n7QpF2RCc8cqMabwmEjcSAtl8zsauKe2vYyNCR62rRqdZ2WvmhnFj9/dtj++Ea3AMS2VX84zSAWa9NiCpGw6z/k82YhNFXtnqHyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771815294; c=relaxed/simple;
	bh=lSQnvkM0AahRUDWUGtOvJQUNc4AHczPFatCBEHyyyu4=;
	h=To:Subject:From:Message-Id:Date; b=TGN+UnfSabKHDYRCgZmUxFEcYW52HfJIdxMfGHRejeCh80L+8tuTcRfqb7of6lY0qyHjugWWqyfyw2YIU5jk3zMjgSivuqw77r/r8uMGycLynkEGXFEH7XZEeMlctTEvMMGtiYBzkQqHMi8JJV4eX013N2/o3Z1S1Ye7h1Z0lzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDs/26t6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDs/26t6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E89C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771815293;
	bh=lSQnvkM0AahRUDWUGtOvJQUNc4AHczPFatCBEHyyyu4=;
	h=To:Subject:From:Date:From;
	b=fDs/26t6DVoEM5TeehxzmfQIf/SumWO7XVgDdr+Q+VuP66R/bG71hYnBNW9aFQxko
	 Q4do7/FISJjFbjYjKCJuxRlNR2rpqAoff43sfOXz3RaWTaQyGfIlSObo3ug/6d/LEx
	 vCtvGPzqxrjt/I1LMlpOHNSkHjfDcGqRRHTW1E1wYZ6zewCYBisRbDckTfSycYbQPZ
	 0aki/xlToI0B1szdnYqHzN+e+fzRpa5+ctI4VxbdCQXFhAuJCIM2atY0ZFA0TyEch3
	 MPH7uBR5fPSXY1f0T3K0MhWIcfI+V0oOXPeEYoc7UiC5N2DAMWM1dHSluOdLCsvcVL
	 rHzJa9zKq/JvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FA6E8384D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181529360.19998.15228655546717866206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2732627945feb21aa7163610b501ec27d2b9797f1695f77ab976078d45965425
Date: Mon, 23 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771815293
