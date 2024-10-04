Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAC215666B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728037554; cv=none; b=sBYFYq85Yxo+FuH/7v2OrYAR0kYvQpV31X80DN0KWM2Xxq/rdCWk/FZshMQM+yZWjQXxRW34hBtB6d/9oEagPBSArfFQjDd3OrVesDO35XWX5bZ3BR7SAB/ehesPfQF+HjVNOKg8FcZt8VzemHiF5htMGdxHi0qyRKt138Zs9Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728037554; c=relaxed/simple;
	bh=mbKlQgjC37aVQDFsKQP9yfwWXveIkgcrGP8bEo8e8EY=;
	h=To:Subject:From:Message-Id:Date; b=Jwd+9FysRtvBAo/PM3BMp3EQGKuliJNhP2vn6J1d06J27c+YfpFmVbMlDtsDC9JNbyA5mw1Na8FKzJkuP0AP6fHMVU4Vi8Qq7jIgT6W9x+1M+c21AwM0bjwW65KG1ZILWDLbi+yQhEU6lHjyQy6fNlmi9MKzz0MCzjUA0mPMwtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4fkMyTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4fkMyTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF147C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728037553;
	bh=mbKlQgjC37aVQDFsKQP9yfwWXveIkgcrGP8bEo8e8EY=;
	h=To:Subject:From:Date:From;
	b=g4fkMyTps1dZgHHNhZXck2Ulzb2LSsW7Ndu4BGpp1s3YA4oOX+ghRVF+pUOUqY1J3
	 zdCOpogtlMuSkBlvnJp14A34F7WcmL6WVleoN7vwL8Q3/lPon8pNfLSpydtROpvElW
	 fgZsRzaP6KpjBwKkK8OfqOeU/GszdJopprGbS/mT7g4N59o1BKjxH4souN8ORYLdoV
	 eVIbLG8Z2oMnZCE3d4D9JpPVigMpBkGc45ce3t7C6K2sdxsZzk+7NQyvufD1P6OVcC
	 dSzbDeNDQLF2QQUg7QAlpv82CKO2KIwQefW3oru4FBf+0KdP9RtC0DiBZFvkazrnQn
	 0FBTJxjvIcS1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945AACFA763
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803755359.6237.17625071957879534631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcabf29dd0f317f3048ef0a1c06941c64a30739fa3641cc69d64d5aee7ac6aa
Date: Fri, 04 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728037553
