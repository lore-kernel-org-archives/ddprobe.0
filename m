Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2730A191F75
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724687154; cv=none; b=Q8sRcOpdSDLC+b5NlzYW5RdI+hG6OHvBzyvCumzYGb5EzJlTlwRDrJ1IY+S5Xf7xg4PEOKZURJmYNXu3NfR5mXDlKfFGjEx9VgY0q3cS2GB1CHhq/zThS28fSTIZ+oFu1rnzDBhZvp7ZhvzO28ATp44PXbFYmSA9qd59SRi3sCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724687154; c=relaxed/simple;
	bh=po02aor1+oUn6rQWcwBh2+z2mslCyxoViKocSW98IV0=;
	h=To:Subject:From:Message-Id:Date; b=NhlYPCFdwFJplHer4pBPrCpoAq2E6u9rZyKtbB1pOJyLiQPg4Qi0KBNHWOxSA7A/zVGlO13LeZRfyFLt+fsrQvbzhRaxYLj1KJ+lnTCckHGTyH5Z+EQAUOFHnISePvA82LZq7UL9uFZe1f0P8LRIRLwNqg45yQttIVtwKwYlJDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyil0nF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyil0nF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2CEC52FF2
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724687153;
	bh=po02aor1+oUn6rQWcwBh2+z2mslCyxoViKocSW98IV0=;
	h=To:Subject:From:Date:From;
	b=iyil0nF1F9DtBiFIiasnQONWmBaNfn0Wp8FGrDNF6Fc/TXVZ1UDiAtcpqb85WrsCd
	 PRd0SC17UTc78NCkunxjHkMK+ppR5IEyDwPv1s5FstSS9Wf+UZb1n56KT2Z4yQAS3l
	 YU2AlaAQtsAMV/g4Uk+PnO2BmoYdshLirPJmuYlK4jHSBXspUQUIGYSOP18p81EE2k
	 0shgL5b5+zxpPkWVlnmejNrHi4tWoztKUR+nvEoGvf2PyuPkqvkie4lcbHN4ocO82Z
	 YlpKKr25TKcdUUWF4hivaA9fTMljZehbTVJ1Nx0p0pp1ytfoKNSxDJlq+dRGj+xjGO
	 xourVEo6lMHtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F51C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172468715361.27927.10085966367251156546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896b9411438f0bd4f94c951fd35d6d4b70b18c019c9e160f7795d3170abdc858
Date: Mon, 26 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724687153
