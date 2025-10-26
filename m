Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3AB22A4EE
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761439794; cv=none; b=PDfsSfVNmNgn89cltDYEVrNYtD+b8PZtpPqBB7tZGdwBDyE4DDkvvHnUSwipimZslnLSN5pFhTxqmFSKi6gya1coKc1xqXy4hNrv2q0lwNczCyTuhjw/JhKPVgEkFVo2O13H82IVTN3cgOJDq/bRIR4P2JmqrGB65w2u0m+jMnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761439794; c=relaxed/simple;
	bh=9me+qdDPhCthSNLKddk1pLlIE630I9efTDCzqzp8ul8=;
	h=To:Subject:From:Message-Id:Date; b=P/F4YNsFMAeuW4sOrIkYTzqxMlqpSapxh2b96Z4ZmJJCwsLw5IAok6GVye1jymJUv3QslYelSdLRv/LS/iB9aRN8YX9JmabENPJR1/Z08lAPrmwRmY1he1kmYgRosHQW+5obiTsva5siJ8hQCETO2rN5JH/nn15mB5UCJSB4viU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCnGisTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCnGisTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB13FC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761439793;
	bh=9me+qdDPhCthSNLKddk1pLlIE630I9efTDCzqzp8ul8=;
	h=To:Subject:From:Date:From;
	b=MCnGisTeY9ZHdX5lIhKJjLCYKj64I9Jd0C7CGei8b2td4Wq5hfvLf3o296QquWY+4
	 lrH/fSiUdFBPlC0EltVDBUnR7Q7pUgs75GjsVS105ncy84LOUbfgjfKzrDSbgowcw2
	 n/U9ONKEF86Y2y6qZZ38mx+AaKx45MVt3Tc9YbQP2m93EZTtNIhURvAH+4vuBymHG7
	 IsFsIAfDU3S9e8+WmwSETrrSRkVTCGo80hqAOQT75j2yuG95mGW2w2nFbcA7Z1Rp+f
	 XeKiV2RxpzzdwMInK4S8tEowV1DY6nj+XlSgKYg0bR2+jKOWgwR2nm5k7NsKJFD9Zi
	 n3ternCMOg3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96839CCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143979358.31185.9191277991833325077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcc291c4db6cbdd8ef47f2d53af2ff7d47c70b5eaf213a31541f12aa50ece29
Date: Sun, 26 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761439793
