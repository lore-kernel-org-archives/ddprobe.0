Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D8D198848
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718658503; cv=none; b=t26yn27jyD+ihciC9QI1qdS3wdEGPj8Lcnd8PVpvIc14FgBtLawf3lSXzVuuRXqZBT57etWXCnnisOjRa0nDfXjauX+r+//mWCmt5s1dQFqOy9M9tUMdhzFzZkvSrScDQrnAplNnOdXJjGL37fg00hIBVqAA6VBpEccTpAyqFRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718658503; c=relaxed/simple;
	bh=VrE4oAuvL640hK8OBO2G+zOoxrJaCP+1I706JAwBHQk=;
	h=To:Subject:From:Message-Id:Date; b=mUd50dkuJIr5coTsi/gGWb90ENZ/LUhFwvxCTnAGhdcggBG0s1JtAJ4DcPFTUohXjbGvpGz+lb2O2HjIqDFyq3HmrsjaDINlrCG2+l/Z+UKDimLirPYH8fUKQo8rwuxemqG+2jJhxRyRRZx6nRBHISqQvn0lOk6Z7NOy9ShvXMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0/5q63l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0/5q63l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D45BC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718658503;
	bh=VrE4oAuvL640hK8OBO2G+zOoxrJaCP+1I706JAwBHQk=;
	h=To:Subject:From:Date:From;
	b=O0/5q63lTxphP0gQkIqZYH9QhUZgExtQzspM2BGt6Yf73Rlwzq6eGvRomo++AJarA
	 uN1BnTnJ4bBk9rcJYuPJDkjs3e6SIWCauP4ytRrSVB2UfyJCwlfZrOyIwqVgq3gP6g
	 oAlY22NlgDLt7Z5Jh1fbbm0ZTNWNWWtoQ7pG4ZRD+rQc5L53b5Z3Bgh+TsuxrSVTyG
	 hnK5xbhJd0emnRyK3v9C8WW+Vut9POsf+Igt79UJx0WUQH5kKPU1MWXn9W60TjJmbC
	 UlBfWry7y/p/lKmFtW54pN3lLcqfWB0hejMyQ6rGDm093RuAKiAKHz5jVckhKAOnaG
	 AQwE3J6vcC85g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D0DC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 21:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865850284.10729.4607939148740735962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7793ad1c03c7ee682154bc6bc5c14fb474cb3db47f69a14d7b341a3ed63389f8
Date: Mon, 17 Jun 2024 21:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718658502
