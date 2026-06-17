Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD88F379C4F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781672794; cv=none; b=YR7MJwCjbsn1XPvk+lQs4Q8zdfHl2TOwKKqSfQHvK27CiZStAaoa54p3IiV002p3GtV03nnpPLXqcFqHwvAk1QOrleZff5tzV015XwOn1DAmNNR4DmaiX3IksOnU+EzFcgaMG1FsO5XLUdjYgzp6W/vl4krsi9wdZF0FXOmxppc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781672794; c=relaxed/simple;
	bh=xT2fQPRGIIE2tBHXF8ZK86oN+IBJZRcYb50WXPeTOqM=;
	h=To:Subject:From:Message-Id:Date; b=cma0yllr77Ef4aAkV8ksXpaSLntD2YrMsKl1SLyROo2UuuyK9MmkvffII8+TytC6Rxji+azcEyap2xNxRRDg8FCGYQVoMwrttCLelv56whJibWUPhk5wku0EaIlbp8DF63Xy2s13O3wxdFK04KlkxxgURxIHjQ5WXCNH61/gdgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrW4it58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrW4it58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17BBDC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781672794;
	bh=xT2fQPRGIIE2tBHXF8ZK86oN+IBJZRcYb50WXPeTOqM=;
	h=To:Subject:From:Date:From;
	b=NrW4it58DkijxNC/X41s719QGEkxVSw1Dl2+vkmpaqAFzXfHbua7k2YPMMrqrKN4b
	 R69TpCnvyLLpr+XIFqLMygTQgzs6d2LPRSDF/ycNosdLRcb173v9X/xooHkz2Rphwu
	 jQZOR4ScwHsV+ej5P1prSS6/tBjUdA/LsBP0TxkB7ntBeegJ4vDNzipB7BLu2cG5oF
	 /O1tONyrK9N6p18ekJqJqNzDUU4qkFdIdw1KUyNDoJLwCycVK2vGK1i9nQT4LZaC9Y
	 svGuRPb/oTnHNP5nuggRRuZwy9zwvtA1HT66n9YW4Sjk0i4RJ9Sac0VVZYjHeXGgH6
	 565ARDV4lxRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7553CD98E1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167279379.29358.6258484619577549845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48da386e158e4e4ca92546e95f076e2acb0338d80ab21bd1c2a93cc3b78b65e
Date: Wed, 17 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781672793
