Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A793A937
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762645794; cv=none; b=I3Kq8pn4jL5W8U/PCMr1A8eSwCmikTb9Lj7nTvTxWPumYIqnb6ByUHzlPiBeb6IsKCD3wPD5uKGqaHyrwN3BISWq7Hn3gSjg4iLr1RqP9O0WZbgz5rVb8mlKtSlT8b1wKTVo0/Q8BpNglEz2EJaPQYiQQkCUOgHylGcetrkomv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762645794; c=relaxed/simple;
	bh=vDLRfMMPfPMrroNS/o0L8Ix6iUcx7ld2o+PnICMfvOg=;
	h=To:Subject:From:Message-Id:Date; b=c0wZuwnM7lmuvRVKJZ8jdCnMm+xB2ixCxAS+7kNpHow4PgFeekE+MRxL5O2PuMrG0WfOBTota7kVEKCEiC63HRXYLPXByKtbStY6CZIyx1OqEWELyvx4/eMCkWEFgScUhARVScxKdiSjzH6i25ezU+RKW0S8cJicITJ2faSvWrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uya15UTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uya15UTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F31C116D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762645793;
	bh=vDLRfMMPfPMrroNS/o0L8Ix6iUcx7ld2o+PnICMfvOg=;
	h=To:Subject:From:Date:From;
	b=uya15UTXZ4TzShVvIqBZ1LtuvKeFRUbiQ2/L1wfI9s92lji19WM3u/w9R1A6BfilO
	 mF/hRO/0maPSmOvCuTWNnlLAFfEAQA5u81ve3RSxcdUVOoyDewZQvDaaTK5zB7H0kl
	 xeht0fnnIIVPWJi6abi0TGQGpzN+f8q25WBZyOYp9X/vLCC/ZJJR/kI1iKXhc1SVtl
	 ePTEPwfWzoiWK8TPJt5zXyjtQ5BRmcI1s1h7HQFe1fVj5lQsKKyfBsr0O3vGo7ZwtJ
	 j3itRmIMTyfoFCLCyUrYfmFaggR9yVz9slndVJSJFhwsmnDqwQj9qAYOUTLzQCXFkN
	 w6XM8NdlHAGog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB9CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264579358.27710.13043512566965034994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9921eaf4daf883bba2bbd47f9f6d5b8f5f7446bc6a6ce4dc74ce315c6d00aea6
Date: Sat, 08 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762645793
