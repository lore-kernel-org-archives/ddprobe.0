Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113E23D994
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776050254; cv=none; b=DZA+SweubCrEBfyR/OcezNwbZ7fL2WEnYue4qOzRKvJA+kveJqrRemnZaPgohvGFf8kwMqpHZrbdufyJbFSEjLEmLMKeopYzS/CCzthu6itizshUTJM2prHxMUafAiKmHwcXU+syr6TK68cBikVVAQi6yM70bqAc72huQwNLt2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776050254; c=relaxed/simple;
	bh=XRVhnrSTNEjxIE15YOOb4XOEPfYqtQhtUi/Fbc3CVjQ=;
	h=To:Subject:From:Message-Id:Date; b=oUD2clv/5RE3/I8fgL6RtJoe+gO7CSyO/RptFY1UNvIVCGn7HUPdjNk3ClUJzRZ7mUHdchNRu/4rIF0PU8UjSoPDgQIypth+shQVeqi+Jw71sCYFbSoHgV714A1L8YXwa/XmWxinnnij2INm70BTIFZfbs5QcJbhd+GrsklnrOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNZ0KAth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNZ0KAth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC5AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776050253;
	bh=XRVhnrSTNEjxIE15YOOb4XOEPfYqtQhtUi/Fbc3CVjQ=;
	h=To:Subject:From:Date:From;
	b=QNZ0KAth/kDlUYebC0mAqsW+NAp94GpOFf+CzgLVhenj+s6XfhdGWXgUylKLWV0zt
	 gxx+dcq503na+T1plnO16+j77V/d915ZOSPMFJTehx1bsdzM/pkxPhX9DMO8E7pZap
	 50ydqcpdCHMl/XflPRA6a+Ft28iMl5liFgrp9YcN3LrFVO8xhgcvNFppdNtpqyCamO
	 bEC5N+PjIG2XOzoLMqyeoF6DIIbEYO4grYFVDtlEhQWI6f3AOBlG+aqiFi4Viod3eh
	 ESXTCN8n7Yz0RhGwhhu1asYZwCwmVkrRSQNSI1xXwLzc/Sjs1FGobSIeCn7mbocW8X
	 Vqf8vLZJtGGHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA866E93806
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605025368.23839.2164241215375063937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504f6f77b20b5a11bb219a9b1a45b6047b5e08033ea91f2e4b6287196136ce40
Date: Mon, 13 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776050253
