Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528C83A9DAB
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779925954; cv=none; b=X9Coyj3zi1cJfnvvIHJOjUzOObu6Jl/4kBt3wzzo/zyjFFO9LW7J59WpsvWv5bztEj9rw9Z8Mk8c4oRKhQsuusR6IsaPXebKE4YrT+kG8Gp1PXYYgqg5zGdXhNp5aEqI8nD8ZZTKGF9mGh0+aRkcPHfFf0qh1/u6MBzusJLCwtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779925954; c=relaxed/simple;
	bh=vSMJdmlJlbZtHMD3Y3MUaJutHJ6sqQzBHVAzUABVVOQ=;
	h=To:Subject:From:Message-Id:Date; b=f/U/3Qne+1OSb1F+wUJbDPbXETxJuSGUY4ldMMJmlRQAz0tIxLqwkZGejJUJFjmyvX/BOmG/fvvcDm1pZjKwHgJ7D15HQ2jHPo3/wjp9zvKgaWEYbymAA7m91tWIaWq2dn9I4L4HeIPJ6PPcZMzOttdhapJdG9Fb9OVshnUGXfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUvhzgCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUvhzgCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB29CC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779925953;
	bh=vSMJdmlJlbZtHMD3Y3MUaJutHJ6sqQzBHVAzUABVVOQ=;
	h=To:Subject:From:Date:From;
	b=cUvhzgCyNsjWtnPuxXJUFvjM7u7VDYmOww27Q9VxQt0DGt/78QXWBbps0fAFcSPWW
	 83PT2B9/wQMhYMpU4FilH4NvqqFtBv49FRkoREbMT5UcxW6VomfxmkE5BxGmwrk9cJ
	 Sh4sD2hKKCcfVKr7dBlcnDv44STNhATr5AVAL1r2W6rx62FqfAtgI3NeyN0NP4m8tc
	 YZ2+SJ/anX+sjBMcX9GOvcV0J5bHGSEeY05x/nA0xH8f7phFLvxkSbcvanFcAixmwG
	 0Dwso/sP0y5WeCI8PHPRON6JZbd+HI22OpUo/YoedX5XqA5NxieTF6CVkIXSGz5ZSK
	 rHyG9UtnuRjVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD10CCD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992595367.24184.9936852787377785627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2c24f385b003e3d25a4b3801f18bd2eabb7844cb29584b5da34d0689d60f72
Date: Wed, 27 May 2026 23:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779925953
