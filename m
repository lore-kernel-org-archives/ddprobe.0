Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4D6EC5
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712454496; cv=none; b=GT34R28+TK6XgHc6zsfBD6BsrJjgCY5M0AIRSPJyq9xJny4fP3RQgoRBw5qa4Q4HczM1JHV80dXuhy+mqSPxPtPL94oDO4vGRUa4NBwiFIlcNOxWoi7l8iAAeiSJdBFdvnqDuai/g8OoWGAxfqXk370bOOUwI362y/Kax/ve554=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712454496; c=relaxed/simple;
	bh=8o4Ux1He6CVmFozA0SuVC63ZipcnZCMVKShiT5d/15M=;
	h=To:Subject:From:Message-Id:Date; b=J+mdMTEBbN/uTHtzO4aexW9hFFUY9IKjCVnQnQdVUsFk4JsWXEfhVZl7QerqjUBo9TsHw0NEstqfpUA21IPPLXVj1oaih1TLlnaFBxpvut64//008BnA9JEmLVI14F6RUwrs+S+2HSAoFIVQV//xBgSBIM3MuBpBhJRRiI/bw90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yd4a+Akz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yd4a+Akz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E11C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712454496;
	bh=8o4Ux1He6CVmFozA0SuVC63ZipcnZCMVKShiT5d/15M=;
	h=To:Subject:From:Date:From;
	b=Yd4a+AkzgpjOMXJlrLqqfPElgla+KHP7CN4PsilGXZLEurVsh4NvR6XnwDP48z385
	 /fE3rVLfLMK34UT+on1ZBx+4J7FwK+CSp2HSawp4C/tzP1qiz0BP2YmyW5H4/ZBg2y
	 1Ei80jDjrJEAvrhUuDFtp48Dpib6oAmaMYF+kiJVq7UIUW4FKS/Gir3fR+v6vtJf2x
	 ZZU3W2ojsjWAXTnT1gZzg4aFqB1ZrtgYoDIfbBhzo6xgYQ1KT5u1BY2cS5f3uZXdaK
	 s4jIba74JaQjmX6am05cXmMBTQSP9jDjiAVQ5mU7KA6XORsmtOfSfd1SRT82MGtrqA
	 7ExboUVHOr+QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E865C67861
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171245449637.11217.3093508343936074059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50967b1e9df0b234e4fb29a57714b2d06393c243e683f294cda831c60333d53f
Date: Sun, 07 Apr 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712454496
