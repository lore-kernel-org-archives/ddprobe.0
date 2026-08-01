Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58023175A81
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785615034; cv=none; b=CwQDQklbZQGxt9b3zOMQPePGxxkk0NZkA8RLbrZ/c9xLrC6xECi6YVRNt0+yE9osS2AxNdpaL3YOoAmIh5npqIuiDaKA29CCFaNPD45Cc9rQvf/KKWMo8/h6VqUtyOm2/h/BAHUEnrepyOnMK9Sf3r3D0N0rmO/KB6J0lfmsDM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785615034; c=relaxed/simple;
	bh=fQbbCiduKlW4o2IJY1e8xLJKSYxCqOAcRr3bwwQ7GFw=;
	h=To:Subject:From:Message-Id:Date; b=qe9srjFzjFQPs0nikcoCRS22zqUW6klXhiHSPFuoGBBOcxdiSMRhecicdbnUCBTgXYkQB9wkqaZ8IoUmaNkjE5l8iinhe7VtAyIQ5xJKw3bIOuOXdzdWFxb67UUxb5iTyQmkr8Fb7mXSF0pzmhwDIdLybMpPpf6ISS/oh1SwMwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ1yexI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ1yexI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE3EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785615033;
	bh=fQbbCiduKlW4o2IJY1e8xLJKSYxCqOAcRr3bwwQ7GFw=;
	h=To:Subject:From:Date:From;
	b=lJ1yexI46wZTUipGqdAPlkGmrYRu+RWV/8p7S3sCQ7UqJNyqG94suf9Mt9fYmA7OO
	 rPRJOdDq1I3VA1eu4xWoOJ5OBwO+hflrRl1CePnhlNChitBCAzJmEOYxerW3Lqpcqx
	 w9vWhIvxV2uCP3Wfrw9d27d/4GJUbee9JNe/RNro08mm1VGDSL6yMUcf3C1JOgzHvX
	 EgynQQEtMrjpUaLxNepT7VyVgp+UUSaX+XwFKQpHdwAGUlxF+DizbKl/flK/03QhCg
	 F2Vl0z2cy8Ma52SxhAlfa5vjCyhB2tKt9cp2190EHBj/mtTyOe4sfC9YeVRsLLLXp6
	 cfEN5KDjsoBhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64F1C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561503371.15596.5989267059898870450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a2947d56341aab41786ff435a186158505452556117b56478b98d6215d759d
Date: Sat, 01 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785615033
