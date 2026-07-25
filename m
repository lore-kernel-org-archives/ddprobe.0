Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5793433987F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785006034; cv=none; b=df9CulAtRaX5dokIGhdhCve/C0rLg12s/VsebeWyFyjfSFjuJokcyZNmTO+uSOe7Lp1YSMO4F7YpWsX17eIvB5fE4PULuc/zoFJL+bFms8W/xemBzPl7AnXwkd6H19/2sBxr5+ICA4UCPjI5S55eynzeF/f11Dn1dHimA7clPLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785006034; c=relaxed/simple;
	bh=7nJ8B6x1CzePPN3lisFRC5ZkQtVcMwjJtB+NdOrq9Zo=;
	h=To:Subject:From:Message-Id:Date; b=gIii71YBw5cJUHMYXAQGBLCuc7iyvJ5M2aHAmTuYAAFOJ4Q/fZ3Gh34FXHx9zJSBE3ymlgMn03FG2maIoArhOyFMY6LSojTPttA6z9V5o+bEaKvJZ8WXaaRI4gzPTzl1IyEH2Crik05jj/4BsRSNabcc09iOuLh9cvtkDcQ47X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nH+q482Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nH+q482Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA591C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785006033;
	bh=7nJ8B6x1CzePPN3lisFRC5ZkQtVcMwjJtB+NdOrq9Zo=;
	h=To:Subject:From:Date:From;
	b=nH+q482Qz7O3mcJ4j+PBuSCKj/4pi+iHNuI21pvS7t1MH1FRWFvmoTKrHll8iMN8c
	 o+Wb1NUNxLlhN/U4wMOb6Cl9DZQM1+B4gkyTxL2wV9THLSpCjSNL3kgVbM4i0LbAEf
	 JB3mWuSumRaboz5RSOhvd65CzL0F3BwSKzAE4hnFGjjs4MZ++qHIl+kAJf1r7GiM/Q
	 08UWPqkOVMLOz4qHmt4Wx7shfpYyMckptfawO8eb1VSk8rHpuqkUZEnbQ11phbjdyV
	 m8wftZJ3sWT1ibm1bzk1nL/r9TeOS3htri5uPft2dPQSzebPrJgovfMnt7zm30iWB+
	 T3ifl/68J4nag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87B8C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500603368.26444.2411192771305674867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0eafd2c14869fd5b517dfdf99316de134be77b8ff567825d8245ed28555209
Date: Sat, 25 Jul 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785006033
