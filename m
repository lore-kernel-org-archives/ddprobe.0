Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8CA2F745D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787307034; cv=none; b=lY876doV8GASqPvIxPQqEE84+ueYvy8Hr0pC6mqWYbCIouahXJ4W1CehuoJzVtF28XzVZgXjzqgXXJeIPrCz39q7zk3omm11jPSxn2+uoZXRh6f1VAS207ST093zjDA+M7ylm92MN7JV+Gc2hdnr1xTDWFqWTpxO8HquQWY/a2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787307034; c=relaxed/simple;
	bh=vsNvYMmoaxTOlkqrAONqSAP3c4iVj+diIVrRjtkJgrc=;
	h=To:Subject:From:Message-Id:Date; b=r3Q41o5R+0U9DFPn897rT0GOGM28lHL97N7I4wjmYP+qg3t4hY2v+gotXRu2q4Prqx7Ff7NRjC+OpgN3QDmycsu3WIMZRWz9STVHgsXZWtAhhK3nmLRNFW7jaTrtcx4AD9RtbM/7ch1RuhJBAYdHhInq4HUMXvOLWxqdBZ6SNKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrCLQwa0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrCLQwa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5486C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787307033;
	bh=vsNvYMmoaxTOlkqrAONqSAP3c4iVj+diIVrRjtkJgrc=;
	h=To:Subject:From:Date:From;
	b=TrCLQwa0T2Y/cMfP88U30MmF5N95JYXZb3aTCJv5YGbhSJEnr9urnBsHB9yXpZe6n
	 fd0PZvQ2mMaFcxVipas60180HpXY7cxRxbnXVV2LhLHBdJnrUqAnhBLTFUGydZWD//
	 /xY3zqoa4TvYiwWW4p5AjfqfsCQYmFp71O3aLtVgD2lBOvsFNPQ8rYjYQmebvWfvml
	 v1o9Vl1awTqAkqdnEtRVSIycA70kgGsPVt3ld+UCwYmB3kWEVz1QJP4luZT2rAfV5P
	 1MaCRUxVI3jHSvLF9uvRbI45OZFMN9c7IssEvIrxQ2z+WpF+HhrH+RFmiRkCNzUS4g
	 2Zn9JTzsF4bBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B2BC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730703371.20218.8564078065871476416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c002c6bfa044259dc1a3b1768ed7f0f621c93e62d53139a9d19d5b33af69b599
Date: Fri, 21 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787307033
