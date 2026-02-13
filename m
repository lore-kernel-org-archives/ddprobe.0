Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3655A7E0FF
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770958494; cv=none; b=BuGK3s9qmJTD6fbnYNQ54yhHcqbUXv/99fhqTQG3qiDuBpT/CGVFJv31/WsHlp8McyMVe0xzhUikaImSFQ+bdndaCdfgg+xzmnZRXfFnONXXvkO2GYrq77/usMPLfGRVsNwcYxjDMax3NYEggvHvMmSFec2zfod9zO42EOp4Vik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770958494; c=relaxed/simple;
	bh=x6oLhvyidByGASK1r/B6CRd7HeIS13zU+cpcLJ280s8=;
	h=To:Subject:From:Message-Id:Date; b=cxINXEjza6Pkw63iZhTK0yuE2R/jQHVkFXK2xgtU3IXrHiwZb6k3rj5nuHGOuKUKwqkFRa2UNYHxsEU9At5qEXPaIInc1YTrY7zyR6n1MPn3/yxUU12zTZAnw5+sQu/KeJwto3gEqMSWvLtyU1qxvKKeDNBzsOZrzCejwmf+/Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHjq1Nms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHjq1Nms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD73BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770958493;
	bh=x6oLhvyidByGASK1r/B6CRd7HeIS13zU+cpcLJ280s8=;
	h=To:Subject:From:Date:From;
	b=sHjq1NmsIuypafYg0w7srr/JMDHY98gPfwN30uM87r99RTxEGE7j9JHhHg7gjrm4E
	 5RJ07N6Ii/cOJh/+06vZ+pokgiF7fUNvVf/z+C/vMKGm9S4FC0pODsnTz/mUx22MUs
	 La6WzthIM1X1tTQQTomRfxZHYEPLljL9+CSfoS/NhsI/X5Y4mPWpU05ZC1Ue/OuxBT
	 cAgdStKA1XkeUhcxxkXSvNqLsBCqjkHIViPgGet63sTXHGONpWhhxeL817u/69SdyQ
	 75LNG2mjg6beRK4szabtZ/E6zY/Yaz4OFnJY3BAKLtm+0Ile9DqWgRXDK2CMNc2522
	 aRX2gepTtrmMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C92EF48CA
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095849364.18173.2080888728235964016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f08f20120c628c2bbd8ec0d0270a80c33260e22dfaf38157865151e1782416
Date: Fri, 13 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770958493
