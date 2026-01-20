Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376A1334C20
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768899834; cv=none; b=Crq/LPRKQz9Ewu5dPe0TIG+qAAk4jS8LjMvurW3sgwpxVqW89XDEImLNrg5vAV3jB6dreRfF0pvmhmnHX0+zj6GIJJej/li02b7ewL3q+Dt9T0XtXecvZzPo1dGj1R4mPvvd2FuabNssFY8BaKQEMKNezM2zFT7801r16pIDh2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768899834; c=relaxed/simple;
	bh=HHGThg+ryBmtejCnIXQ3JpN/o/8DxhDlA2/DajUyGug=;
	h=To:Subject:From:Message-Id:Date; b=q+R7MA7ScwXPY17o77UjQ0VAdjcAn9YhNpRVetPtAf4QknxMVKUq+EDkdL+tkyXXxNOgYSUmBEqFyz+mi+WhzrhkwsTCsU6nCPlhG2VRK9MPLXh5FMT00nsg04ypUSgUCD+PBY0ybcbw+1gKCx8/g2BaQtP6XzECjyWBphKlx/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKC8reuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKC8reuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09A4C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768899833;
	bh=HHGThg+ryBmtejCnIXQ3JpN/o/8DxhDlA2/DajUyGug=;
	h=To:Subject:From:Date:From;
	b=sKC8reuqxxGbVh4rAuVqSKmF/zvDXAqd79x5o+ab7G7edksEvm05QIQ+dJ8ytnlvv
	 9jssVdwDrajW3vhCVMDynJNUSuTuWaczu7G6iC1MIIVOgi0m4vHYfxr1j6RJM/0qam
	 Eg5/pMSzD09h7j3637T2pHZ7PJePW1cxBSggqtdeaZ11HHcGO4jBkM5erNWZMb4Hv0
	 iflq/mNfdrUnnRH29BL01D7LNgmFm87qQbY14wDONleR+Cm4xi9QWzUll/INCThDxg
	 H8uzqSvQ7qxoZb8eQVs2cJis6eYv20Ky/UIbnmiK3e3QegseTreNRY0v8R9LPRxgZR
	 ls4Dpz5XbjzrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5BDD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889983363.3645.8463502991356694165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce77ff6cfcb051a043dc20616609866d94613fa4a847572c2b393a45c9a01020
Date: Tue, 20 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768899833
