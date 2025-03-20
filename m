Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470CE17991
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742435396; cv=none; b=Vb7EdSxkPNhLQYIQbojsN0SP6D9bLjSF9sEAVD0LZTY+Am/+4kGPC1sdpZlyzxZkGGCMuPQVkhYKAWikLsGiIG9VRg/NrtZURg1AQDnXncWPuUBu7aPnwp8QmEKD5ozDk/UkUix4upwAVbZ8hGVwtogIbrqL4QKy0tn45Cxciyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742435396; c=relaxed/simple;
	bh=WOdEiyTdGXmnEK8o3uHc51dTtOh7VpHpZg3swb5u5Js=;
	h=To:Subject:From:Message-Id:Date; b=nckjBn7xL+CuFDLiyAj0N349wdwYaMXqhmLiT2++KVj2Fwmvj1fX8dDplj4Iv/KpG9KM7odMlGRuJMW3Gds/EEGrD4U18tTyVkpP5qxyymC5N2p6Ur4h2N1/5qYXrKvyjBliR5Xa7S+6sSbFd4JoT8jbiANtO5sjJfy8BXaDV7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n60MLHMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n60MLHMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C02C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742435393;
	bh=WOdEiyTdGXmnEK8o3uHc51dTtOh7VpHpZg3swb5u5Js=;
	h=To:Subject:From:Date:From;
	b=n60MLHMlo7koSZQ5YVbPNVCRrwVKS+yAIDH3qprswXdDI757CO8NfkTGkVjBxmVq3
	 wrpU39CtYP74xHRUePtsr5Q20sHFmOXiGFkgpFif7D4edYSmZhx1rjQrr6a6dD2k0V
	 T8vuO8Z36tkkTqNcSM2nGw4azMOCCvbgiIyU14bf3Tu6CXbB6U8a22LuixOogyF/J7
	 QuMYh4eCWPW9PeSRKOhDXKKN3pUQecKvNlm/3LACA6iMwMvuAE2Kr6UQ5Ti2EahFkr
	 Jvso0zry1/lyJXS/TNTcx9qS1SyKI9+/V67WBiBHd8HdfgdSLubJkwPXDkWzJxULqE
	 1T2RHdhjtajcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF07C35FFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243539361.15348.13907761283068943057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea857937113b4c16bf5e8b8a2a4c1769368abac6c60b6acda256ef0991691d7
Date: Thu, 20 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742435393
