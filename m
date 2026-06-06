Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6064C21CA13
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780772074; cv=none; b=T5swu+5frYu5MJEW9dbEDT++dC4qezYTAk8aaJq5q9hHcTwAIYKIYJM9q2SUeQRIH01f8o6yUq/AS9T8mHlyOUQ62gFpf7lb+RzXDfUh3mFBFjvyj9EcAVOajVmlOJtp9oWGPz6LWtvEq/ndrb89Cfa6FZV1+EAAuPIeFA7DeWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780772074; c=relaxed/simple;
	bh=r8h1zbOxxJPI4Sn3c2ZmTrOtyaK+jmd/aDi8DATk/hI=;
	h=To:Subject:From:Message-Id:Date; b=pZlEHcX0k6xSCqLrs7111bsU4CO1p7bmBV5kVpmRymlP0En+sWfJMHfMzEDzR78fss0RItBxbvPQt7ZOSMaNqz9BmM9pcSqnzpPxiGwl7qwR0P+y9qTkKUUGrx0j64eKIBJv7G5yatK/3pO4Tm5D0qbCYZPY/U8MjLbGISIddtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOOgR8rE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOOgR8rE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6134C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780772073;
	bh=r8h1zbOxxJPI4Sn3c2ZmTrOtyaK+jmd/aDi8DATk/hI=;
	h=To:Subject:From:Date:From;
	b=pOOgR8rEhQ4CAiXA6ZynR6jclNSQ4W8h0L8ziviHZT1V4Tmsn6+iIogLM8F+aMcIp
	 ki/oyt3l57Qib6GGRDrK9nRGhdVyMdOgLpaYU5N8Rtf6JTdEVbf25/FbBjDpUpIGDX
	 c7AZXc0aP6l/FSvVJRSB24g/jffTPg57Ex9SOMwBmJWnT1dMjlGllW88mGbOMW1VQj
	 IJESdTzjMkSdOpKfmZWv7orhhTqsS6Ae1WwbRsy1QBV/07ci1bQFTvdhS/MPcE8yOG
	 B2THdhOj5dsmXweK8roj32Rr6a0Lsecc9+UweGFWwpWPZjHVkeNzfYyouFeFG5w6u5
	 cF+nYgmGg0cow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE96CCD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077207368.8621.3474705166033658537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c4777ebda383cd8865a6891661918b898ba45f4026b7451556796d3ff05c81
Date: Sat, 06 Jun 2026 18:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780772073
