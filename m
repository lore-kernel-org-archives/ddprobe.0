Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CDA348896
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790730034; cv=none; b=qIAnItdjAQJjwww+wycZsYWypgaBeb3PpVoZrndzef0L9KsIvQFrHTOfHqsZzhUQCHz8FGkoXQXFFjnXQWxxdpCDBN/c7CgiZEttAqTy6SdpfcReeSWv1pM9aUiBdZvOB96EDE7TGoqm5ju1TsjUN7I0TX5j9ukJf2tKOLnMOss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790730034; c=relaxed/simple;
	bh=yUFjIi7U5VGxxmW9IFluIEL+iig9c+Uz4o/7y3y5ZbI=;
	h=To:Subject:From:Message-Id:Date; b=e5jZuIZTGojENox+f8J+SnvsxcGq7wN9/nL1RjSJJDE3P0gHtT3jWxdS14vaC6AQKUqEnYvnsvYXl6avVLVn6/V3G5Gyxopezsgmupy+NHzroD4L6IfCazBtyPBas0tX5lD/nnUR+crge9mbszQIoqpLr7wcU1/0JGK6NG6QCdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oC9QsM/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oC9QsM/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2836C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790730033;
	bh=yUFjIi7U5VGxxmW9IFluIEL+iig9c+Uz4o/7y3y5ZbI=;
	h=To:Subject:From:Date:From;
	b=oC9QsM/HMiXtqdZxoTxcHtDgZ6doUgRIgeNRHvYH/3isArX4FRyJv90VRQeMWA5uu
	 ApCY6X4kaAEciKKQpyzpVsuKtNb2540c1p82GkgLLeSBdnbmc+mjv55Ruie53jflvE
	 e1CemRChQjptrufPyJqadrTTWmISXEzaqLEQQGXeIRnk24ZxhDsBn3JAAvyzXw/6Tp
	 Z/YzWbmQ6kbyV/b63jsTfPEukaJpQ3ezigaNw8WGNb/Y3KQdFmbVz+A8HQBX29xaAr
	 vXROazBM1YoUlLnjkCWdxTuXTTG8rSkrfYGsa5Z3QHrsVzI8XmIZoLXPQ7xIg1VKBo
	 tGNP/YtvrSDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF58FCA5FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073003370.8653.13378264035120194755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85a80c2ef9f60006f12d3c5d34d639688d7879fe9d8887371fecb058f9ab772
Date: Wed, 30 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790730033
