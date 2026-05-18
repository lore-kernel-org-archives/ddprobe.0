Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297693DBA0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779064834; cv=none; b=a86jQjQ5KS4jdAR+kCTcpwR+6nZ7ATYW8EIg4jARvGY4K+Jy8+lRFN7i37VXvJbE6S1u3LMcfbtnC2kAPmYMn1XU/3iLlk2gUYHu3wdsn491wZ+CM22srbQ+9F+jEJYJvV64WQGiebAWB2I+uD+STpUl4Ige/901UmzH5uGx0iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779064834; c=relaxed/simple;
	bh=unEzDEpQh2lN+OQV0VY9T606pm1UZw3mTtqpvdyQajg=;
	h=To:Subject:From:Message-Id:Date; b=gYu3+ArCFldiohjQwS72sQ2EaoL4yPBxDdFwQN7IAvTl09U5nnAFQFpRE0uVNB/GRerZM7hvFHdc1RbiJzN2wkCg5p5T6y+tmDN+itdCVFTl8RqDM+JPcjVJg0QgYeqqm/Qw3+16gOfugEwoB66P472Bv14N1LRTIzg5Ffl+MbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KshN/JZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KshN/JZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD67C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779064833;
	bh=unEzDEpQh2lN+OQV0VY9T606pm1UZw3mTtqpvdyQajg=;
	h=To:Subject:From:Date:From;
	b=KshN/JZN44ohWi5iSMhsLBYvsgs7iXXXgnPLY7a6S3AWKDRg39Q5OZsKSlPRfjwUc
	 RQPh45gxEH/32Vz6uHD/X4vKoSZHmhuZ68fuXxs4hxTTnATSSeT/0x6UpDLHULCO24
	 Mkc+xNLNcOUDR61Wp17vXI68AewmGXRKAp+I26HoVkeeNPldmqL3ATwE3WfXqmBYmZ
	 kFYOetmspYHs0mmgS57or3iKDcHzpj1TULMsmnHNGXqPf6NOYWpeEeNFRIdZc1kKhF
	 SgcJElkFtsBUAED83hLV1NrC6JIPR5NfRycOtsDNDWYtm1TPsNrKKBV5THpA71GQQ5
	 LPRLxEK1My3bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7B0CD4F3D
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906483369.3334.13121631134705163017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033be1cdbeff46607851e4a647fc05e437249c748abea69b493e2b3c4b12c70a
Date: Mon, 18 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779064833
