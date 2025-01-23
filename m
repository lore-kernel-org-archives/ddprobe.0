Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D3414A4E1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737654954; cv=none; b=kXQv4XpEanES2awhGvkdHaM7a12QmDQ/i3ps+wPnecUoYZLU5MhxVtY/cO3sK7nISibkck9/pt2H/wWNG9hKXivB0U8VVNIsAlemYt/MWaDV/LDL82jGfvwsLLwoLDlfYTYUBDsHz/wJFpK9+yKzUogBrKkfeyIxO7Dh+8dF6fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737654954; c=relaxed/simple;
	bh=8olu0mNEIgk1jjQhrWEn+H7aMh2xyYrWLHRUE2gkaBo=;
	h=To:Subject:From:Message-Id:Date; b=GKjdqXY+RqPtr5hhN7aBIbyRJdjaqN+inZ6Vphb4VSwfiC3227hd5rQbdh0SR+U8zBTn1oasiLfBBiUv+P+R1gau9OkRM7iih6T5em5ynRVuE5PCjWYDOvztkkBqCi0Xq3bzKJZMeazco4pnobSP5B4LMfjCqx3xfIa9T9cLnnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUVaTVQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUVaTVQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A488EC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737654953;
	bh=8olu0mNEIgk1jjQhrWEn+H7aMh2xyYrWLHRUE2gkaBo=;
	h=To:Subject:From:Date:From;
	b=JUVaTVQ9QaPwkERrA2+9utIwN/NuW+PDq3TmFm75DWHiBVPTBlfSNIcmQCJeqH5oW
	 jvNTtzvjBLQINRZeP+gVpZcUCwQQXReqxFTyOOXavxT0X1CiHv788uXVE//0GRLmE2
	 K0hXH3AGFODwWOzA+sL8FlZKzQq2yndL3cHmHklhjdYQ8tBuRd311UrRtYDWYbzQQD
	 lUHjuomBDKT1Zsi+wcZaJllEQi/2ObOJY65bXZfWqyOWWDwWpyIQjJL0VH0yKERP8+
	 CWVdtJRDfwFUCiAVMaEtlIqGQIF0Mx/IzST/4XxFMa41mSqvVcmVkl8DvXj0VHey5X
	 QjVBj3M6j/dhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9465DC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765495358.19374.7010361013123631284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6267ab7903bcadc7b6e655b46b2ce3edda37b32d017d8555a52220e6e4af8cf
Date: Thu, 23 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737654953
