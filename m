Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0713015E5A9
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714668743; cv=none; b=RH9ObX+XI54xfi+LhOUa14IbogiZ6+fcUCGsfMeuRPeTwChTmgyO6zExmrbfLZ/FnjQ4mu/uD0wZ/hr78l4ZReZXJ35EB1ad84c7qNL7SQNibA4EBPkabS4+4pyr944irHR39hGmg+zfeTDByARbKYUttR3Y8R5iO+piwRT3H7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714668743; c=relaxed/simple;
	bh=tHFnLH8G2pD2iFZwpPvR9C/J8o8Or1kpxgk98hWf8Lw=;
	h=To:Subject:From:Message-Id:Date; b=rDuD1hfJS5+KsxQxHr70flAU555sz3RZQf9hIY3mwzo+Z9Pq5b8gKbwgnPsC6Tmpqhr6E63H0SlLnlBdXmdlJudycLJyuGDe1X68nrsU9Sy3KRCHZOFF/4T+EBoTxtJMCKl0ExAl+9/dKON1J9ukPkyi1yLjK2gczfHHjklLStM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDiSjt+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDiSjt+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F6CC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714668742;
	bh=tHFnLH8G2pD2iFZwpPvR9C/J8o8Or1kpxgk98hWf8Lw=;
	h=To:Subject:From:Date:From;
	b=cDiSjt+56t0PrlEUmiRPrYes2Aq/D16ZLE/kJyZLjcQH43tPCq6TrXT/Qjj8UnG18
	 o8arxpFKi0Od6ebnZhRY10eHmZe28GBPtPdruPSpKmRMUMBf2L4TDVAvu+7YoUOOG6
	 2HcxqTlfKqXfHXH4nedMO3rXiUK27q07PpZ4MD302SmWrH22kHlIENSK70HFU5pVL0
	 /+1JhkteceLlKl7Eo/XSfFX4bJ6rmOktMd6Z3Ct7uKL72LyeqAmXECvj2Dxq/25EDF
	 CuGraTapyMkIHOpohViGSWetDGDHD4TG+d1fKrKf3UXig4l3nuq7L+osbHKaestrCs
	 Lu1luwqYbgxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5479C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171466874279.18857.15401332574441748295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a348366f64b88d38539b287aaa1e7958ce752a3caae31eaf07a25164d1d9d018
Date: Thu, 02 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714668742
