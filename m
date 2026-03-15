Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231B936DA06
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773598494; cv=none; b=D3pczaODQZoKAVQe4A582oxCHXATGlwbAevDhq4ZAKcgyEvmfh8Su6Vgor6oRASqISlm9fy0Rq+DbcVASVO7fC1rqpszriG0FQdNZ490T2ZSD2PKDudMcZLmWn42vIyzGdf0dxTjMNdNWwZnjxredjgbSQyqkYB9Ip84uGkXeH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773598494; c=relaxed/simple;
	bh=AmPEzp5zbIz2HToY9C67dRb7IDVLNQZIv+eaQCEayG4=;
	h=To:Subject:From:Message-Id:Date; b=pAm1lSScnSKzPF8X9MfuwyhX5sq8BLiqLy2900Nns2IJaRMxxuRNUdvQ8d05QCFw7m367mSztl9ftkOgXZlroMGB+ryfRxbQX4++i1zzRrcMJzt4DPsjf0I7utCG3bLdQWRGeqavP4M0NoHbeGcOlYPvzk0slMjEq9wO4uJ2PgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjTnfUBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjTnfUBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F89C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773598493;
	bh=AmPEzp5zbIz2HToY9C67dRb7IDVLNQZIv+eaQCEayG4=;
	h=To:Subject:From:Date:From;
	b=JjTnfUBVFbbjRdwAa4uW7Kah8bN4nzTBAnwMafv5jaM0gUfsJdXe806iCL6Rk+X2S
	 8lX5LYvuYDLNn/DEy5TLc7pQVbGWoBoOmr5HKQxy5HJOSRNadaUbGVxcRa97TXT06+
	 HlhSxVsU842VsUAdHvFOWj8h/G2pmjOKpX+TpAf5MdAyEiQpd/zIGiSqShpbGZWPlL
	 wuEWVoSXvPiDZQbJhRr9yh9k6gZ1pb1F40WYdH8658rEoeTncOTGqIeOOkjhi4wVa/
	 0RzqoJ3FjarT4B312iZOrVFpVbKHhZk004mdv48wmrE8CwjjMV72HGwoURJCwTVO1v
	 S5deIq/9EZ2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90889F3026E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359849358.25685.12925138993040777044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a665eebb97f3d8823576be8f6b60da420714801b69358557d3523da109429f67
Date: Sun, 15 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773598493
