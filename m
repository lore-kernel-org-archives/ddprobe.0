Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500791DED53
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742336396; cv=none; b=bd52GnH/njQDy7V/1pB5JfGNmmOFrEXEkwVL1Q61ZlBN0jyFj5N19tiiru6wz1hTvIKvelf4hg3o99TfYlOTfuNA2R2YdRicia2/x5ejutsfelvKCrj5FbLdNHrNLughaxlW1vknIXnvCnTwZ382tgY6a8CxxKsVJNsAbE5GE9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742336396; c=relaxed/simple;
	bh=Yeie/0arIS+ZmfispItHTQVtiULAWKNUxPH/nr/Q/qU=;
	h=To:Subject:From:Message-Id:Date; b=rRbbrDky2H71pQZ4Ho4sSn7Hfbq9+qhb9/gJlhf4fbL67USLH4V6Ci477A9h741sv9diEKDD9Jp1VEy3k//NWe2KzuB6lJqidvsOYeAg89wp59FQOwAcS+C+cfjI2hpWKQW9zizlZnWLRjx6fayeqE+dLbVo/p+9VUvdcRdQfbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji7Yv9Ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji7Yv9Ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE611C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742336393;
	bh=Yeie/0arIS+ZmfispItHTQVtiULAWKNUxPH/nr/Q/qU=;
	h=To:Subject:From:Date:From;
	b=ji7Yv9Ee81L6ypdUmJQDCvmVorNQhOvsxXyc1vFH2arsah8hcjtxZjUd12KY+c1zF
	 W8rJDOlFUrLKrQYXe2b9UoCS5857T8E0FkdU9LIIeOpTAwxMnDYZ8DTxbwxGxIZ5Ne
	 FtXXzhzdEj3Z915sQDGM0r/EvWV6DkhrSdfIt0UEn+8759NWf0ULwYHYizRlE2g25p
	 R6s+9Mxp94AVTReDx1T3CsnMTOF410TqIL5c9nqv7auIO3Wt0Dql+RAIHZKxDnoE39
	 U//T3NU00XwBlYzeIJAUEuNZO827+cIOMas92fsuupmWSerJq/T/cwuLdFWmPy9b2s
	 3iYjxJqPeUHPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9E3C35FF3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233639363.32055.9067535108314138149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c530f1a29651e02db1005925fc59ac953072b928c64a7715e9e22c9c6c5a297
Date: Tue, 18 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742336393
