Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3412D3955F5
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782245194; cv=none; b=e7kwetv+JEL4myYkf7QxBgXDMrZxgdiBZPIblVd3ihTofWyzR2pAEWD43XUswW+qCA4tUcZrPNjp4/fGRP+U0sQaxKBn9iriOwvIM4JyDzjE3xpnbCQE8EFd2WnRg8TQeXxXVj08ju83odzTBfbvXNCfJowfeCM5F77C/awzUJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782245194; c=relaxed/simple;
	bh=0Ea/ok1OtwPDJWYPo+4zNOZUdqWZM8p7IrjyKczPvKc=;
	h=To:Subject:From:Message-Id:Date; b=l2gM3720q4qtqF809Pq41w4JqPV8lL51BFq4J6PoUY7hPrQJVgd3SzXdl4sttKhKWx2MYDgBSnKUGT0E79+f66nHgb/8ALtLTX0j9rXN5vjCoXvu7mFV8W6y1hqPj1NnaoQCn12om5TEbeKrH7/PiCpKQmb6lZIy8981LlOP69s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItuXoS/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItuXoS/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9ADC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782245193;
	bh=0Ea/ok1OtwPDJWYPo+4zNOZUdqWZM8p7IrjyKczPvKc=;
	h=To:Subject:From:Date:From;
	b=ItuXoS/sWrn57kahyyGNufLQ6109m5/hu03Jj/+NRB3ft/qeKiLhkgWRWvBKySsi3
	 kU0Y/UBxtY/CsYbNNJQtbVXkwmI4SufU6y2QbznqfnYid2yLjfz8IGcV1n3ntCf0kK
	 Euhh3MU39RejAoHNQrt4OCZoSIV0XuQSDw91Yztz4uCiyCvjd64mvIhizYzDwif1GI
	 5hpK1hT4YZIZveawXLKk32DfJlQtK3lLGw/FPYomj41RbTOH1cSNEd4oVcSy18plP7
	 MwME8ClVzidF5SAsUboHmajlu8ZcWn4UPqBwA79E5j62sCKipN9XcfuQ99cQ3nU9pk
	 BG8ATfIFzswcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE310CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224519370.2999.14723754383831781655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ae60b4c513340dda62f5659892ca0057ce87480a5f0f005d272ab0fd2dec39
Date: Tue, 23 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782245193
