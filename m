Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B9312C7FB
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727946354; cv=none; b=LkV//HLW1S437Xs75U3PPM3FIVUVe/ofwnT6KyCUsX7KREQ4LBRrD5YXglFhsg9TKyelNDu3sQ88qRcYUa11rxrEeDNznahfuRbHuKGSB6V2u2s/3E9TJdcFJ92gBsHmVtotqKPd8pGRH2m1vSmQN3vwLotbPsyLveexfzrwX74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727946354; c=relaxed/simple;
	bh=nH7D/JVpKGh1E7OwV7DizcHEMizlEiy/jYtSknnb5V4=;
	h=To:Subject:From:Message-Id:Date; b=f5JJKHW5b9XxWhxQX/ponjJsuEnkaiMF/I1vE4xjS6zkd/E1zVylb0h/w73VvueQ4NmhqHKLN7SgAksr5IZjXBbV8G3kzoQG1u8j5sij/po8N1IviHN376VsXRgAXXgVLWjTAI0r48vNIO5HYkZEgMTypA1EBilzbQDmKPaGqac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5WMA5yr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5WMA5yr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA13C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727946353;
	bh=nH7D/JVpKGh1E7OwV7DizcHEMizlEiy/jYtSknnb5V4=;
	h=To:Subject:From:Date:From;
	b=P5WMA5yr03GEfMrM0sQFmoMn86gVzoANHryXoGCzHU9SQ+kSNAMHuNz2alEMoSNHU
	 DyaZWTLUvzFKTzTWrPOXfRoPmVNy1lNnRVi7LLsPLXAMxsxs85dNq994hHp3royPd3
	 gzt0dFFcgWUyrqQA2UmfQflc+oyU+Vup8tqPSKVgl6nybNA9htN9IIVeVqdWYbgNOa
	 dBPcX8CP/oheHPLVYDOIJ0BB642agQw/rGho6MW7g8tOEolJNKsp9YbbGMbVz3wACc
	 s6eKrLnzWd6ldRtMXzb2CA3XxnyyTpzu4fgpcJ+c+4XHjDtOjhm3k2G03duc/Yz3Cc
	 /t6aS0jmXvanA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5852CF856F
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794635366.3683.17789537716040022099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b260c09b54c3fefd913ac22f61ae03d5195e866d8e54bb6795c88d2b8b50727
Date: Thu, 03 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727946353
