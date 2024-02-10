Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BD05C8FB
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707589697; cv=none; b=BwNhJvSA13hNZ/xGOhBsrQ49bR1QO0JJ9Qd+bHOwC33i4Ro816EfM2VyIg6v7SVvAGNXujcYHYlkeUpgDSq7WheymjQo+yk6f9f+L+H5N1SizbPmM0OFg5n4/+msd6osEYr1GUJ43NtEErAhVO9iENjzPOaFo40gdit+7Dbckps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707589697; c=relaxed/simple;
	bh=LifoeI5oe0PbT2R+a0iFtYonlkxnZHcZkJ/sxtOwWD0=;
	h=To:Subject:From:Message-Id:Date; b=LucaOsI6pahH+fOatQdFWHq4Oxucdp1/RqiKWCn13YqJwsiIp3lt3asQcxbbv1/SG+5lT5ud8TlwWbUDOLqse95VOECCJcvdIVn87VyJA0YHxF31Qv45fFH1anBCu2XDYKO4NPIXZWjL194Ee7AuktZjpUDINJE6Vp/fJClJ7iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qq4av9Vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qq4av9Vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814F5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707589696;
	bh=LifoeI5oe0PbT2R+a0iFtYonlkxnZHcZkJ/sxtOwWD0=;
	h=To:Subject:From:Date:From;
	b=qq4av9VlsaoAtSIGTuNrvAAF1qxFf8VKq6ksl83xIL6B61msuJjEAuOLNKLrmlrVk
	 5IPZpumjcA3gRUN9Ps7H3JZduQRSsOqgURhek5coB3slHzK3QLY7in6paCKHzwF2Cz
	 NF1P7fLFDOveq3rB7i17mh8bhPbGAUwn4SqXGODY68WO41krh1RlCpFxaC1EvUHipn
	 9S6hOePNw7M1aZCqvy75ifNdGuL+w5Mp7fKBObcXn7C3UaGCV6dTBZ/yRqO7sUj+7u
	 8/96JQ6Z2BeDPAwobeam0BnJLATbrc8FI5hCOuV6M0OTpOppSXk8TTooPtNntfRKGQ
	 MsToPkB14E2SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62749C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170758969638.16094.721828143605102704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a325349233299018c90846ab9a7f3abc76ccacfc36687b46e89609b68e68d20
Date: Sat, 10 Feb 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707589696
