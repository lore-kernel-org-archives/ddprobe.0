Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358F3331222
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783487914; cv=none; b=anR7ZiNcPDrFIwT8nuiU3xlEKkEpOfCAvytxAMHW74ek55CZKrMPIsO3Esfnr+81K2Alz+CYcpUqU9aW6QI1FfuUeXz0Y4FsKVnM/rPaRj4e8oJ+lGZSBjhxPmlMYB4eQot2WsuskVc2BuBkZ883Rq5I8JHZ3zbdR2YbYqB590g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783487914; c=relaxed/simple;
	bh=7ow98yqPLcfcW2cfRFjHeufNfsPGoDSgvVQQGAJkMNE=;
	h=To:Subject:From:Message-Id:Date; b=S6ePhx1W30w7tYN+nfCtjJdB3biB/KG3+lz175JSFioSIrdjsWYlLB4+loXedRbzjCqJf7rqNB3VaqMxJrS+ax98MbArZc36dU812dJnmluxUVBZ6zBl6yy16hY/8KnXd2fqRoX5/NYILir3XEg1C2AgVka/PqpivM+uWiUGMt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZWHWyjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZWHWyjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA16FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783487913;
	bh=7ow98yqPLcfcW2cfRFjHeufNfsPGoDSgvVQQGAJkMNE=;
	h=To:Subject:From:Date:From;
	b=kZWHWyjmfACtViT/3yGduuLPTw4iq0B/Wg2Ishvl3N7hFwBGd8P/kvwlPdj7Q4WHZ
	 C5VXsdp/Xkz7ukcGVPImWoek85/ffFkp7R5SQqzTuhnP33whWGYYV2J7Tdxg0UEf+J
	 mN7G4esYvv2XKr03t5ltXnobKhUWTExfKqwXcscU3+DXuqtIKE0r5Sxw+l0NpHc113
	 zx6dl6oV12kUcxPRz0CbTEJe+ORBd+nIfre9OE0PqDiKh18dwxms+YaqUGOdN5yXl7
	 mpWPOcjaoP1cHjuRnC7xHJXB0RP3DRz9ZSBCCMOSg8p54lE7i+WQdOmiT6PrO/ANCj
	 BDALhQphlXlhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C70C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348791368.4235.11626722534924435542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f176b6de470bb721bc8723a9e80781b6ee8cc3101df01d3f6c81464d15ee157
Date: Wed, 08 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783487913
