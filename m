Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF47487CD4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792176034; cv=none; b=i8gYbtBDIXrK1bpQcHI19ZAfiLIQ5/HBKEVQOf4T3+imhH54Xhk4g9YKqpItXiLOYBpZPMIL8Bt+I2QSfB79EovBlr7btqJ0dnN8TEcpqE6VYXFDrBcqKGv4pZM1cEsBBomsheZjqcUgkC71oYsvFZwxTu4DDfUZR9HFsHNqaGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792176034; c=relaxed/simple;
	bh=3HqJPUoJgmt/JGAaDSpYleu8R8iq2/YZksrx86Ec850=;
	h=To:Subject:From:Message-Id:Date; b=tql+zc2YqWLcTo26TG3DOAqsyjDn8Lh9mk75ZElsYQC42DHs/7lI7+CJcvuBetRHST7ISuMION6r1AyGp019/yabUKMGiw/1m7ue5gNYrUZwjaUEWJYft5TCdCp+UDcgsJM2kWcydKKfGjjIvKaJJFdFEOs+/Wz1h+lB89zmSZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqM/lh26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqM/lh26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE4CC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792176033;
	bh=3HqJPUoJgmt/JGAaDSpYleu8R8iq2/YZksrx86Ec850=;
	h=To:Subject:From:Date:From;
	b=oqM/lh26xHnKTx1SG+nhAT8NnY7vwYdUIJQRyjdmsyPmjVgjY9Vdk31vyy5uZDMMP
	 maSFLpm8+1iOoMAZiUN23ScUBysSjVdCj/Mq/dPOWlmFsWIEWVgF8Me9KBVDMNjCH4
	 kBd/CJqxghtQHyrbEcDmzED0lio2g64CrWzkSurTSrg2wa4uxd9IAzy35TiIpHnYTc
	 jUGBHqGAs1/9mYjyjvss0L3SsfNH9Xa1DxJCt6jvai9j5r6M52im3IqtUsLCLBalCF
	 72rg0hgVo3MLI2GcsIUkkwNKuTIEux/d/ntQOCnQRV0P/RaJPtRe9sbp+RM0n2+4/Q
	 Z/ydYSSNBK4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64D0CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217603373.15777.3937235559310579594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79fa0e0f8e887f095688bd379b5322f93852b45e48268f8fdc86704ae181157
Date: Fri, 16 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792176033
