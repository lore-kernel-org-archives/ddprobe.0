Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B88C946F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713597023; cv=none; b=boVjUZK97FvAFAATZMktmUSWRzxYCGn+U056R4mYgu8lD4Cqz+sI27vjzLfZf7qvuCUnCIr0ybKUZ/31P6WFEHY89CSZ/Adlw0PZ6zx7f8Vxeo7RyIbCFWaFJOS9MIhu2b3a681cDXKZPlhpQdF749g7SSpT8R83UA3CJ+jdJWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713597023; c=relaxed/simple;
	bh=f4b4T7XiOwrCg8j78ljOcy+iFsLQnx6MmW3FXc11/3M=;
	h=To:Subject:From:Message-Id:Date; b=qypgWoXiKr9NeM1b1Uz5GPfrmhsKTkyKYR9AfEDiM9uywUR+z3811Kn8lWyB4Q9uIDFl60j0t8d+jQ7Ho1iwzpMhASH/dRFsMuNVwWwWDc8gF9DckNPP4B+Da4/ppGIQtcQhJWuzCYb3lfKt/HjtaUh1lXy/6qEV+IqgO5FRxeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkYiYagu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkYiYagu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8020C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713597022;
	bh=f4b4T7XiOwrCg8j78ljOcy+iFsLQnx6MmW3FXc11/3M=;
	h=To:Subject:From:Date:From;
	b=OkYiYaguR6pQT+wA0J3mbJyxFJhQN6rjOvkweLesJ6eQYwuQmZIosrJ+y4CpgRNAO
	 JqCgazXUfitLdlrGccMSJfTC+1i02ukxVxkXDQElanNn9WwhlyJFDthpBZXK3OiStd
	 opCIDYmojOSCGM/EsCUxDlX9mc6k3p2laeGx7ZYRpOZ5OO7h6Hv9pDpuVVfF8fYul0
	 +Rlh2rdQHOzBRpM3pmN6bqYzrIHV3umtLgAvjHTUS3zBO2ISLgiavRZvlzDE8uERPr
	 gQZ/0VpVwnn00AEQnheEzP+triBMBNP+DyhAn+LPGKh+j5VldJcS0gvHMzWZR0kxN8
	 pB0mGMdbPf4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61BCC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359702279.15255.17793325980527972798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a782a1c3ac1567fa1be04d446f130c93006181d41657ed311cd0f368b7f7ee
Date: Sat, 20 Apr 2024 07:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713597022
