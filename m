Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC13129A99
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712245697; cv=none; b=bc66Bjvzf+FuTrgjCuH2D4x3zqoYMnAHXdUFF+DxfvsvQ3sq50L+ovH84DQ9Z6f7p0p+YKdcxTvTvcnET0RTVYxBpI/sikD2WpThv3YxPkxpNCSKrU6ZCRbLg9ZT8LoGCLQie+kH6N9MjbXn+ZMj5K08Q8QfRsdJ3Udqxd+/Z1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712245697; c=relaxed/simple;
	bh=S74+fiLx/O8vMTyjAsCFlfYiR551Uc6In3wltS6izP0=;
	h=To:Subject:From:Message-Id:Date; b=Ze7J/n6Yc87gJl8nPgz0si3VizsiEG8SaFCncbngHw00PZOz/6J7cPmPjKc4W3WfU5++fy2OPf8mz0SpW4LQkSSV+yqYQDw9EvNVqVmqs1w9im6YM9A6hIkvR3FZiskASHiIN5tB+ywU9+g8zlKBOgwZN2HWdTm/k4rjQBvZSUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXfd0Swo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXfd0Swo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A001C433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712245696;
	bh=S74+fiLx/O8vMTyjAsCFlfYiR551Uc6In3wltS6izP0=;
	h=To:Subject:From:Date:From;
	b=cXfd0SwoHnRiAOcVgSGoBpz4zW2+ieHUhM2sXmcvzZ0LaosrSVs9ZWigWr3+ZckdB
	 CYrKO1IxVaZpP/4ET618r3ACwzGXDU4t+RyZaBSDJFfkOBevzYBRwP92MWWcTUvdku
	 i+5ypRl1kasYjjElKa+FMy0i9y1pznO0v7WdYd7hr+sG/fyZpQQ0XQYuoOCtqU09HP
	 b4KzsszpkFJyeZEgxBX/2f3IGMuUD83zBRkxN20qKnYFYrhDv00fPY3hp0FnHN8AGD
	 MBOnyP5C7tlJYzB+MdS8w2L90f/2XIZpdWxglLz7J+muJUPeA8ndyZP0ajRblBRo+D
	 PziF/RTkUV4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F03CD1292
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171224569641.5786.649748052371777824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8dc44244942f0feb10307b30977684b562ae8143895dcb43e4399d6837ea80
Date: Thu, 04 Apr 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712245696
