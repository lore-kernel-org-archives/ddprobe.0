Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DC0235045
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791172234; cv=none; b=Ac0XF1NmUzfVomQFWdF6LGffbcoVLntZbN/nV8Kc9yQ+evxW4LJeGTU+NY3lExEDeNVNhQW4qH4Tuxef51MzBsyQH/wRnudGx9r867m5Pl2XelEG/Mg7UNhOqjmJ1EdSbeVqsjXMCvsTjfKd92a+HPY06VCt2Be1Pq8W27oyEK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791172234; c=relaxed/simple;
	bh=shuGCXukyqdkF+ceCxvdTSbIz2ZY4pJqLCi5GH9NAIs=;
	h=To:Subject:From:Message-Id:Date; b=b6bCETGXI8tBIIfntQLmvdO72jRwFVa9wpJt0R4KD0DmyvZ8mpB17PuhvDu+eZOBlAxAN93ebABohGQWmd2Sk8/nKpXX9A7/iKXt+y8AbH1PgdPqKPAHhJmazBZxUa3qJe0s5MQOh2C48GB//if8psawOMJCnnU9m0goAG2htm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fERSA7KH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fERSA7KH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFF4C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791172233;
	bh=shuGCXukyqdkF+ceCxvdTSbIz2ZY4pJqLCi5GH9NAIs=;
	h=To:Subject:From:Date:From;
	b=fERSA7KHwKB3se+ZOE8iJ1YaWoFAC11IuuYlTK6ASVF1Cn29kWwefDURcxJZcQEMA
	 Cx2+XdsVJUeS3gZe/gQ4EHey9dX4KSJ/6VVSgWQVB8KCpdvzi4fbB3AZS3j9PHI/D2
	 mt7zqUEhQA+JM/CAQJZgYsajIYz5kG2SdaSkpfCTYI+VRgN2eGLgTD5+aoaYlgy1YH
	 iDL+0jSt6LQot4aXSqTuEKatgJesGwD2W/KGdolgo1rpN+Rs51izHBXZIX/CPAzk8h
	 P5FI41RtsRwDeSu4Qx626pq+BlnIO7BKf2XxKS/T3CJu2Zm4oev07Lo21G+GuH0Mm7
	 /16q9vdcdeZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0E7CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117223368.26416.8694650295431408136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a954cd93a4609450fb176b31cea2e3e88124aab91726328e65d2e1fd9683ccc7
Date: Mon, 05 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791172233
