Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 857B9BE71
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719455603; cv=none; b=k7fUSmO4XZLACPy1OGtUQEwt1JGJWJjTrSPpQYcdfCDldQGTxEtGplq5xqqzJh0FWHtct+ET4B80t22PJN00HxcHn2Pl9LDtAmZHHqdLMis74STzA4XhgzWU/d9KyRq3ct/eM5y5bZ4CVC1h+uzXSangvf7jnv/D8bzagRic9UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719455603; c=relaxed/simple;
	bh=5VJF2TFDf+6v05Q0hTZJ9AElhfeq6Q6zCx8hg8hyLLc=;
	h=To:Subject:From:Message-Id:Date; b=mH/sc97tgz+xGU4/0BUTISIyKDVLbjiO8NraYNq57fMDgT0xbf7yXyQ+BXVopavRIXr/1+42Ab/5AcOTAE9CDdcq1SsTuyuWWV3ajU1uZN+AKM+UDmUn/ZbBDdedqzjYiPoSau1PFTUtFRGob8Houtadaf0F9WrEkEi7Ow68yKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJia6ZVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJia6ZVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2A6FC116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719455603;
	bh=5VJF2TFDf+6v05Q0hTZJ9AElhfeq6Q6zCx8hg8hyLLc=;
	h=To:Subject:From:Date:From;
	b=IJia6ZVHndagAGxb35sOX0kz3p/ToEtIBT2zKWq9Bq85pX+fJGgkZpNKhyQ7iVmGe
	 61KD1hZQfTnorseXMUX2r6AqbD9nuCKzOhPeQQBxmM4QL73nftLLyvcIjQQMxxSWot
	 ysnLFFWR7cFffmSPTAbU72VlrPnlKsWv1QIQZ60g1wtua0DLKcOrbe+oXgVj5xdcC8
	 r/AmXCZeG6ZPn8RJF/igRVKFWO4eFKWHZQSJtlVinV7oVCd0gIrn4ozIjdnR8uZm0t
	 4CrtUNN4QhXyUDsB+lDRLSXOhEVtv/wSDQqC58skIhS4cp0osf3vt6ythB6Oy8Gcqy
	 zm8jHA80PZzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4E17C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 02:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171945560285.23164.2309248514156774642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e810c8e38c9f79f85528cb7eb75376409b333d9ba14881b28ac63d89f1a478
Date: Thu, 27 Jun 2024 02:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719455602
