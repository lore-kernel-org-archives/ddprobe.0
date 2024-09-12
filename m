Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190AA184558
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726134954; cv=none; b=r5ENVVW27MPAytQcQ1SCjI4rxKvGfRZxmgK3uEAaY6OTHimpvp6WMjQhiYDAyJY0GPgxsPg92pb1fMbLBW7WHbKDBRzHLabZTPJKrm2uVI2hOznvGBt3bZPB7DQbWGWGrof+1Gqdg6FMoF4VQV54fAMxVuh65a8wwW95SP0LY3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726134954; c=relaxed/simple;
	bh=X9DrqweT71R9jCBcMvIJhEQ5gbq1bJPo2OacjoGM59Y=;
	h=To:Subject:From:Message-Id:Date; b=ovefre7C8cO8iyp/YGzLPUQESfzlLEkKuJYqFI/+aTQX+8lwa+t8TsXNafz3FINkeO/Ca1LxIrTpMLkHdkpbp+/IHJFeUjHNbNDzjRe5mhNMBmHeJ1F+frj6gxhGbz5ySMQk9KWoth3QGTvkS594xnBJD9zcf36VRDPs8CzEq68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Elxjvby2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Elxjvby2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E35EC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726134953;
	bh=X9DrqweT71R9jCBcMvIJhEQ5gbq1bJPo2OacjoGM59Y=;
	h=To:Subject:From:Date:From;
	b=Elxjvby2xDrPgZdrzTQotcqFyePAbEN/Z7Aik1RcLiCJJCo4Kw/m9j+M2KYgOyyH2
	 vXzMbFvTTQzwdVWIyfdwkqM7N9wGHNa6NTCq/y7eVvLfha4M/N3Rt2Q76Qj+Sjc8wT
	 rmfgIWI+YT5fw9NJX1RIbtutlA7HGeVZ+Rb16LdG5NuW0/mjvlvhQoZtilGNWEkywp
	 G0ncxhZwvB2dI7oY6AvWO9Trb1htf53u9Mb1Vv6ABqipyJ8nVk7auQqZPfJbm1Cv8O
	 5RxqGK4o/TO6/sv6aw+RY2zxPvkLuKxdiATOTS0Xn+yse8DGhqKfY0h+rCSuJx7rPV
	 kdBkOa6dQHw5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9131DEEB57D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172613495358.9110.17661630844928873166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6a10c5861742fa0a5ce99722a5f1c6a7e2da8c53b225607fc1124e90a8c691
Date: Thu, 12 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726134953
