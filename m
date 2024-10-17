Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1443E1E049F
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729184754; cv=none; b=Ka4cKi+PFmDzAGdHs7IF59sIbkx21GLwWfV7riiiOeUJbQFwAEGA1JG1QhW3IGGAWyyVxG7iLXFnmIeGmxCpjyih6WMWvvghHMsNwj5Gw9n4KRvKtqKy+bMl3RxAHHTxPPZ6hi7djCYt4PpWPDxU7ST1Z4/CpqbtBWdcc+WBzMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729184754; c=relaxed/simple;
	bh=qi/kRcZoqKXmUOkUTDVvEiMRFP7PnKaz7yQvFK9L7ak=;
	h=To:Subject:From:Message-Id:Date; b=WLWuE5J2RaV75mj9uL4sBndMLwfHFwoxA6XT4ltMoWP5fCEsNMlerk6qmmL2boGRjhpTvgW4hp/QsPCxM7GMMcvvtr962tYcmUqD6vzXthBpDxEwc4bfZXrqwiatSZDIxbswE9LCOzzuDwchI7MiXWIE0vxDaMEPsdD6fpmYzxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEjomzKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEjomzKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0DEC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729184753;
	bh=qi/kRcZoqKXmUOkUTDVvEiMRFP7PnKaz7yQvFK9L7ak=;
	h=To:Subject:From:Date:From;
	b=NEjomzKKMKd26BpMlSdRUzSCNcouuGEO4bdwusLVAuG3rOzpUEgma80XuK+WqDNxP
	 2pNScV0GUm8jrwa5dmTgU2lG3Oke0cIIPLWlifTQBFRjacD2vJA27Vq/krPk9Uci3D
	 bP8ToJwQQ3C/Ri9JQIOUL1QP/c9/EFTvssLmYZ/Dzzv3C/BktdGy/K1KfVeBZQaB7e
	 ZedFcALPbBI66KR3ppSM22NQy03udUXSFEvVEeattnIoVNcoE7NDy/iy03Wtc/bWhR
	 tA2pO7wZ6IhS8EOSQ46uShEZjz+lAcIBHSuYs38qlKu9Yz9G2A+nqE9p9+EiuckV7W
	 01mBd4kGP/cgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9916FD3C527
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172918475361.24215.14476925677779200240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33167153c7a3182b28341c37d8af4dcea5ad4b52a6d6e90c46c64d770cfdc3eb
Date: Thu, 17 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729184753
