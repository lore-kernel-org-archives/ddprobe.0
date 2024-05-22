Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5245B13D8AA
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716395003; cv=none; b=W+Zt2cHKugeRfFw0VAdoXtxobkcBUcG9YB1SBagomqLb1VC9RlgYSnWtPU8Bgosv3RW0yjELUafDCIzLAdiDiDkEbnq3m5c+2/Sq/eO3DmaZqoWG5N85USazy7/jgM4398cSl6oG762bUXv2DrD2kB3LyXSUtx13z2Yg4ydqHtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716395003; c=relaxed/simple;
	bh=h2s/fWc2JmxhVQGwjR9qZmL+ehhEfEaxv5KUZ/HfSRA=;
	h=To:Subject:From:Message-Id:Date; b=DjycMBXR7rS4vginde4Wl/bp854hyo8iAs2bYwp0ccj0uqHaS/7HOElBjAsNaOTUDK5vH9ceC4ufvOz9ojNsuSDJCp4C+fOR4RhnzvwpPrp3LHrsh4QUQ30TjobNbNG4BMiLPsA/hhVMc5rbWc0db/CyPnsbH7Kr1fnuvB/m1EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5lzJfx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5lzJfx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE952C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716395002;
	bh=h2s/fWc2JmxhVQGwjR9qZmL+ehhEfEaxv5KUZ/HfSRA=;
	h=To:Subject:From:Date:From;
	b=k5lzJfx40UQZlck40pJmpyd+jFuUxmjtxYqG5jLvRt1y82kgctLhlkm+ygQNotHih
	 MWi0w/ncEZj0/khLahsfizWveIOFZIsLKvv52bSVtYuOtcvxGQMvAGKQ6IcAr++r5U
	 4oj/DV+8k3yBLjkixLeChIKOzs2TQKCjQ7anOgq66s61W5CpLmft9a/Dl6uSaCD3P5
	 HE49OEJ94aDMONKtIMBq88CFFBl3bXflXKwQwKIHH4SBHNN3nnW5rtVm5II6o94IPq
	 td1Vm/y0c4Hfe4xp1XQxRfcYpY4m+88qpEp4gxDt5y1d/HGayt+vppnOhZYvfTx17C
	 WDNlXzzQtW6LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7CEC25B79
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639500276.32448.15152529067602365252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a43049540c21ad6002247553b18ccbdb0afa9c35997fe4604d6bfc428ea6937
Date: Wed, 22 May 2024 16:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716395002
