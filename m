Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFEC39ACC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721386554; cv=none; b=KUoUANSRPphkufpAHm65CQkaUwN5DusoKkmZqomLjSAcOTX5Z8JauNoXLp/iKyHxurKgT1FPx/bTxHqUW0OKxdfSzczl+9R5DqXM2alYhq9wfwSuI5tK/39UVp5faogGpjwQlFRs+Kq9ByD7u/bIxpqd8X7ltRMRSum1V+OSQ0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721386554; c=relaxed/simple;
	bh=jZvd66OJAN3UliodjyR2GKreBkQFgQdaRr5WGhJIX7E=;
	h=To:Subject:From:Message-Id:Date; b=c77nJfVnC3La3KUCeTNWQriZu3m6B+S9tPtjbA65xNGMmfMEhXlFiKj/42BvSQqANodBhvWFdJpt2feUUIaXV3sffKEkwq2eJI0wkuPHdqGLhRNXP05213hl7pb396IRsFuWfvJQ4eHKPcNwbb8jP3FSE2I3yAsHKSA69vbTnrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIKlGCCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIKlGCCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC778C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721386553;
	bh=jZvd66OJAN3UliodjyR2GKreBkQFgQdaRr5WGhJIX7E=;
	h=To:Subject:From:Date:From;
	b=XIKlGCCdg6BsQXBEHFZ806biCdz49ZjvQlG4Pqlg8/72wpoXxbkRjm7P5ws51nl3t
	 XJR8ZmUa085clB+e/cM8DARRVAdJGxxikAZ0/nLnjrNgwM0kHRFrrIk9rZ2zofpGyA
	 7NJQ2Jm6ySRzwNoBuKAJ1LMH2duyOBDTwewVKOhkkNpUIr4+vhp0xva89pb12f2IuI
	 FEfGrV0Zrz61o4yznkDd/m5eb6wU2h6G4if0RVzh2xhMreM8d0CY0pqDvElHG0nius
	 ZKTryN6Q9SA8uqPi5o1+D6zoN2FGmSYlHmFmch7uYrHo/dNBG5VY3DW4s8l+fmiuU1
	 sSctbXHIssvBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99469C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138655361.27764.17218338684570545670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209317663c71c60d138dbf07625d03df433aa2684c7809b66e96e246e4b75e87
Date: Fri, 19 Jul 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721386553
