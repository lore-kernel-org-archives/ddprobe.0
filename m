Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD01490BEF
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788543634; cv=none; b=KumN7DGMP0tDYNUzEHnyKUXQUI4XU+9qFXk9Mz7PTuNJArIEWSpaUdKyQmBC6ZZNz/bU4/r5TROp9VVAtMx6PCEK/m4aW2Y66YjTlggoTy43R4my6xEQA53rVjaYb/kMnBsdV9gnDrf/iuDZRsv1JCF6GiIg3Eekc0j7hMr+3TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788543634; c=relaxed/simple;
	bh=MgEEIqG+Z8rsYZ4MRdx/tZb4QX8SZOJQe9aT4WK7J+I=;
	h=To:Subject:From:Message-Id:Date; b=tZhvg2oYWmQYcM9NpdcSIamYkwFKi/pvkiKruonru1Cucmsve+c3dSXd8Y15z+yHG4YRCQR2cnC/nd84if4NJz32N9r/zwCw3qJmRspqA3SWjFYkf/T5nMMb5H79fbaZPlqxa1jvlRbgodABIO8HxG0Sqxzbx9xHbgioeCZlE0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eX8mHf52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eX8mHf52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA026C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788543633;
	bh=MgEEIqG+Z8rsYZ4MRdx/tZb4QX8SZOJQe9aT4WK7J+I=;
	h=To:Subject:From:Date:From;
	b=eX8mHf52RFhKTgPCugkgD1rpERwauS2vIxn44BHHbFWl34x2Lqo9exsSZWo6GK45/
	 DMClPfyjYyJvpvCy4v8qIMAu/qx8XZrQSDD9ahZ2oipzMA20ymyCabvnQAzmG2KIdf
	 c4F4Mn9eOYLDJqXovZVcXQDb/mtK6rS8u4ZHAs4OZGFMeFn7fixFOg/X5h/EckGvAX
	 bRU6dzE08M4ywq9NNbbLnEGyxByEomLnUalGbzE4D3LRHFtVtVYp3MdnnskPMRuJso
	 YxA9eBoXqbvpQqHk48sg/ZNXXqIgH9yEWZ6Cd3KtjpCPerDmIXtfpp/T3TkWbbPReq
	 qwHX+MejCUBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55F7C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854363371.23732.15426361157126386290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8813c4e3595d3a42ef9613a68f5ffa35f5204c92b2151df8267a13ff396106b
Date: Fri, 04 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788543633
