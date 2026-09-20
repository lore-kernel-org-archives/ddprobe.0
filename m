Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA39E379C34
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789882235; cv=none; b=IsAQ9zCY4fFGNb9Fc83v3sT9RQJpokBkbSglDp6asU+Gi6tr5wlnoEGa6xP3CsKkthHoszpuTJW7GVGEaUy7Fz15vUMquhqEhsMflt28RDy1If3oa9y/Xb21u6zU/HDeT7x4pwjpjGeIwGNyqGPWg60dXPOJaY5cHTvfIpEWk0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789882235; c=relaxed/simple;
	bh=sRJiJWQyLjRGsdaPa1EXesbLaVF3Od63xwALQ1B1ato=;
	h=To:Subject:From:Message-Id:Date; b=N/VVQLfiA7hjZ12Yxtm94KSqM9hZybg1vPo9gjm7u5JmECzPy0QTD4MzoWJEJXDDKQ5aqazOEXt6NuzEy98dI3yzrTyvAEZyM4+2r9Ud/uuodB7PCY3nlgeQN21G091rT/X/owbzj2wT0eWiP/2cFrenUUipX9+xRKz8HeawtUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePXGIr1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePXGIr1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69C8FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789882234;
	bh=sRJiJWQyLjRGsdaPa1EXesbLaVF3Od63xwALQ1B1ato=;
	h=To:Subject:From:Date:From;
	b=ePXGIr1/VMmoTz0YLQVhHMHol6yGewPRgZaEx0b7THtEiwhLLN26TdSgci04LOZOt
	 lbGGann/glYK4R23YTxyR9QpiYo7eI8VRriFDT8oRxDFKJg4RecprP7s9hIoOiequ9
	 nnKpfgqsirFqigiPB5ePKlG+5Ys9wSpaqTqxkPyysbyx61aDjl7JKcIKLLdIymwznl
	 DiIDmW9Q6rSASKFuB8tOpx8aWsBMo6cF/UIpbJo2feXOUO/RiCpJc0jUrNs4oiFUMz
	 m9weUMoW6PJMEcXbSmS5TKAce3Nq3k2jT0TuOOXjxDwlIYx7ejvrpSol7Uhlkf6BwI
	 Tik8hzvBCp0hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1055EC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:30:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988223391.17546.2205002533525766891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4ce6617aa16fdb50bcaad0ae87436e2484214e2a0fdb395288c54217d36520
Date: Sun, 20 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789882233
