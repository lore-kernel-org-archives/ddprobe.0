Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BEC8529D
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 08:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713343163; cv=none; b=pWW+xqfJIyTgmQ73+v3UaVwApp8OBVZz30v2ujkguVdwFynRFoQqq5ws6WWkbTVsYkfBATZuSAvVq5Z76oEzlk2x7p1tGxYnvRy6g9Pfj2sTfmNVilP7m3m5nY+r6n5dwDDDpG+Fowc+pMN65gC2gn8hAhQV8D5RtaeN7/kX6ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713343163; c=relaxed/simple;
	bh=aIlcbUd53Osqm3fowawhNG0P7k6X5VGnwfZW5USttK4=;
	h=To:Subject:From:Message-Id:Date; b=oDaefLNECjzRA5HQXxWtn3hcabUle07bdCwJNgLbOJ0/FGKKYeXUr+8IGr7YjQRS10ivsGT/cKoLMuCmgNPIqMNTrwRCFh3HrroFi/FchLjx5xVuF1QjT4BRORcBYexGLkKszkBfc4RtJXn1x1UlWTvBKf2FEw2SEAiIPdCt958=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGtNeWyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGtNeWyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3D2C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 08:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713343162;
	bh=aIlcbUd53Osqm3fowawhNG0P7k6X5VGnwfZW5USttK4=;
	h=To:Subject:From:Date:From;
	b=WGtNeWyf/0VSW8YIMBdwUxbuGEdSdahn8HqvzkPWOOhzLqdLMd4BiP+sfPlHu97uK
	 hadID1yhpgL0c+wJktklRU1cERmSPGsW4DMsDT+eil7hIDC+DOmhvfzZ7QHNupAIl8
	 E6n1HrktSzkNwaX6CjJ33jw52lk9TluETs8Fo3gQXRRjBdq9obts0vWQBcNCOf5Dyc
	 mV6leQ0u8HuzFDlQP0QV9H3f27ShabfYh75I99bCew0g3u1XaoDoSJMgpW+XLPaJ3P
	 sfRPFUwoEg0J436Qd5Xxz2GAFh0YLUCanN0Rn6wZyXY/HkmUUazTeRFti2th3+MrA/
	 yGWlLXxutXy1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5EEC001CC
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 08:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171334316276.25648.8144368013673880819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42869784442f7c5d47a461e81aab0afcd89dfcb34df9b972eee6a9c833379100
Date: Wed, 17 Apr 2024 08:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713343162
