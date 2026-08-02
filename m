Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE4D3905F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785660034; cv=none; b=FxexzbN18nqvlEqPncU/D6bqieT6X/8zmBhEgSpxhshUTKLksF9IDzVwhTzmIgSc5zFL3MMZBcRaVtjcYfeW+qgTwUZT62NH6eD5HA+7FquboeZsUPOHujBKM458AAQ7DI+dCcwk/T12xHLM941pTrWh0HGrg45aJ+P7NYLycjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785660034; c=relaxed/simple;
	bh=IbZrl+8GPbxdH6HfKY7LWlNMmww/8T1rNrEfVP1AVjA=;
	h=To:Subject:From:Message-Id:Date; b=jAMziMFXU6cgDtctCDgmKMTL+gUimFs4rqE4apZRy8CW0s/POEfXQyokDij6RRHcaJlKKA+x0Zbm+PNsTOzG0udzKydS9zQ+/lAerH0QX5RmUBrgQdhIFzfzRGTob6ISCw0aiNRJWC6BmvYKtvLvj3LSBu75plbMcBcUCn1cSxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ezy/ylHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ezy/ylHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B8BC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785660033;
	bh=IbZrl+8GPbxdH6HfKY7LWlNMmww/8T1rNrEfVP1AVjA=;
	h=To:Subject:From:Date:From;
	b=Ezy/ylHOJ2h2z6GZFUhph+wmCKUr/6g6zjoQPL/sA9iU9YtI6nkI/TylOjYnb0t3I
	 1YEwWJpU4/MeENi3qFL9pGM9h2h2XAiryaw1FyctIK0iCiRF62SrIefKfZGwzcBTY9
	 YYWeeu+ckFgUCgKeC5mjgkow0chBkpmC6nQSv84d3JlYUNUK/DcQzDd4S7EyLpxX9F
	 9XFEcIfJervoM107M8vKkfyCyncZ1gxQHbcl9enP4Y8SbxeOqNhfWF/NapQcTqFu5k
	 JcTL1TJNnvdy2O73QFRPIgyj1kqX2h+LTIckUGtlR5JQFiymrbPPFtNPQV+gDiWMPL
	 DbYqF1z+0DogQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF27C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566003368.16034.6224699863748667797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50629099c2d3fdf131b4ddc4765d09d82beac6b8c2246edac97476b21264b826
Date: Sun, 02 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785660033
