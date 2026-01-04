Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2304F19258E
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767570834; cv=none; b=Xhk0AfNwH578jN0c9VXrgjQZMY/9kQ9KT1yZaUIcfjMhh91PqYiYTPrXYPI3HZ861F8sB6Guk5EMPgWaBld99cFy0/3b0eClQkk3ODc9fOdVMVWqo3OIikUyVLYBWVZm6EW28rpERr1MVWNifK2Y19qf7+LvCnQ4q7zIomlde4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767570834; c=relaxed/simple;
	bh=OK/kVjslN2bzGqzNxg+ML/+47bzoyXedxkN2bC95+3s=;
	h=To:Subject:From:Message-Id:Date; b=T9IWxYoUiw+bMd81TrtRGkGA3G5VOjn7nwYY3LypXcZDcXGuc+RgRknvPDhc1jqp2qS/1sdNEHccWOAHflpS5Ojen2Ib7B/D4RWwxZWR8579VtiWVLYpwsqMbiQ3Wsiqo+83nBT0SAXBaEcMvATDu+6GHoPrmTbkaBxXxBV3QwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huAPQ2pW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huAPQ2pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CF1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767570833;
	bh=OK/kVjslN2bzGqzNxg+ML/+47bzoyXedxkN2bC95+3s=;
	h=To:Subject:From:Date:From;
	b=huAPQ2pWUaSk9XJhn28fYdoPO0U2lRKFo5LoxksvqqJdHRX0iKkHIQVvNrKwk/INr
	 yVymN/9uLtKsM1CIVfS8ZQyRPZ/REGvIQTApVU632j0h0qcPZp+NvzN9rEZaS9MomN
	 QHtufzUmsE02Hebm3SD0tRYlzHsaNTIsr8lr/0P4zn9VX6tfwEji59V9rgoNFR1H0T
	 Pprqv6kIO7s2v69BKgwh5R/unUDqe8DBwfmZB3cFyh1ox6vvwNsgyc1zTBthB+3S9G
	 P7ByqDwuTg3E+Worgf+cvZVjKl64ADLsnAfv/sHJgXF0HkkzLP7Guw7/UeDs1u4dTL
	 Q1OluU/G9/WdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949DBC2A070
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757083358.25340.11447634510403355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb96256df4a0f7edbffa5886e152a43d5c76e884ac43fb2cb847b79fbc611ef9
Date: Sun, 04 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767570833
