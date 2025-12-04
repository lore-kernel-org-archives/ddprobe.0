Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405922BE632
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764844374; cv=none; b=NNBeTdUgS0Un0V8ba9z0e6gTpJUq25LXic2bcDT6NTKea5HvufnWRRvp3lzAi8FhjBQNJEtC+akW5B4WL+V5eNSnroXrgOJqfUyNNjA0Qdyyv+2zsGme0sXnkTEcFA07r1Z7BWJyf24AZTyOgXWCt8h6YshYBUDLKUrS3mlJ0lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764844374; c=relaxed/simple;
	bh=PET5U2c/jcPSLJVgvr9yo8Gb90m1VHvZLthS5fbqiRs=;
	h=To:Subject:From:Message-Id:Date; b=Bmm+b/FIJy6pNg4aMmmS8+c5+t88V1b2uWd5zzeI09ehQmgyB8coZQXET4W1bwFnVojPgseqXKps47jpk2Yx5f5OVG59HH7gUWbqN1S71NEL4x8rn0Pq18mTUCGJy54Jioq6f32nlWuqmDrA9c4gKm3fRQKX8J4ixEn+SCRNXEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yw54jRUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yw54jRUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0B9C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764844373;
	bh=PET5U2c/jcPSLJVgvr9yo8Gb90m1VHvZLthS5fbqiRs=;
	h=To:Subject:From:Date:From;
	b=Yw54jRUZJxJY/TjuYaOpbSQacPrDkG3zDn9snHKucyxOKURaNo+TDK4UMGQYuHvyO
	 S2OuKMjomoZUDm/TBQRPUnXVt+c1e97sCNbNpgayoJ/sMF5qDPA9F4PSHUrBA/IinP
	 d9YQQaf7exiFM+TjOqIx151Mi5xbOzkfelMlnbZJ92R4CUxVk2UgJfpY/EsrmyRlvw
	 LD+6y/IBrKy5ID8iCX1/PgX17x5kxN3hNTt/WFyEnP61TTqSTp9ldXrxShEyBMak7S
	 0pS+DY0Nm1F6pM0+adhivMlLuY9TTFPV7Axh6aHAjgsBcwq9abhp0GhIq4affDYmwS
	 8biKEoGSxrUdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A061D1F9AE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484437361.3663.3621691185175880744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757b7d9f640e6d903cf3c051e987abd4d225dc266af4789b4d5d61273220af7c
Date: Thu, 04 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764844373
