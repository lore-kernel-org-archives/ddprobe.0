Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDDD4430
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743837595; cv=none; b=RBc9cjZjD0koyyePWDnK6BR8ONegVypSPbUEFjFFITghS772dtacOk/S6FK3gcQAP+y6OBABOXbiYnSPZY/S7npBhnoEW+lIO3Wje5pmCCh//hLTigRsObd6mJvvzwkDrxh/jOh37PKKlxzB28H4W5t3LrMwbqJCRHom66ocFjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743837595; c=relaxed/simple;
	bh=jV/Id2kTUrKh2Q08BsNFt+4qxtnWHRPXnAEPoxaP2uc=;
	h=To:Subject:From:Message-Id:Date; b=druEerP0q/UIKtZwpuINlElUqeepFw+fvg9M0uEOe9t27sJ0k/wEfutgXSm3E1RGjvzYP0O7pfbqA6cPu3nHtcn5WKVRDBAaHe/sSk7H2HUw8eEhgDf+9luuaidMBJk87Vjqv8bxtxMRaXInkK+Odq1WqNZUB9Gf//w4I8A1Veo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewQnDWwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewQnDWwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8293C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743837593;
	bh=jV/Id2kTUrKh2Q08BsNFt+4qxtnWHRPXnAEPoxaP2uc=;
	h=To:Subject:From:Date:From;
	b=ewQnDWwHnZ/NJSYDlbEt4c5jWqjSASVfm4MBO5Y0yxoWhsMWVR0b8HIJ9HoX+o6tQ
	 3DeWg9s3/7ibEoRylKDi5a2fejKKS5BqX89EOFQfeccewFIKmnkRTgJO/e9jVsT7Dw
	 q90yxwpEM6os0Q8onyFOYl3dZD3bBN5dPeSsBkENZhhJFivJtOupW+wjPN0LrKIbR3
	 GgtdP/Ckrklq98cjJ/nlz21TcseUMCessjtl9AxDY8A2KHloOWyp80mSMdOIXrvyvD
	 x948PJ8aS1UbMe7zY0HQI1hhd4Z/yOkVuOwo2YxodQBPvepoJtt9GssqRMsVsPvmbw
	 JtJHpHIPRK52A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E358C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383759362.19863.11123016389813491830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d577996edb4974c5f97a79407a9dd017c53061be301087571fbf68452f66c37
Date: Sat, 05 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743837593
