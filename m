Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572D319B3FF
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720100123; cv=none; b=R/HLrjLU8kT3l5JOVGCKZKzizFxqe2EBX2+FPgbnwdL1SIHOST/b9ZjTQEKu/tDqNlwtyOT6Yt5Nh4SYs11ABkzqqIsIk5M9Tspldod2aRB0li9bbD5j1SM8wHfBelXBP9TG1Qfy/Dr0jc+2V6BbTHKeUx5n2NOrCmJ+nTH/G+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720100123; c=relaxed/simple;
	bh=Hs/xp1MsdbaTxQwijtwOMZ4wmS0X/H4Yk2T30OV7PZo=;
	h=To:Subject:From:Message-Id:Date; b=rTGr0RxTyYYTP6KOf0MB7/iZcvihwAyZToHf7LKOr2tLBymwlG8jS7XaljQsqNQzXSiqKtmpCvlFyF6XngxSFMAfplOeEfuP/zqxKcm921ghydOMkUDInHsb9X2waE7EzlV6W7twCbUCzGW8fJ9WwMlxqrjfy3fzmqnPc6v6SrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyWPf0v2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyWPf0v2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CFAC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720100122;
	bh=Hs/xp1MsdbaTxQwijtwOMZ4wmS0X/H4Yk2T30OV7PZo=;
	h=To:Subject:From:Date:From;
	b=WyWPf0v23PneZrapzKjZ+zYI7CcQhVTHb3Fx8ZbQW0HlHgQhQeYY6HUAcz1sg8Fhe
	 5Xr/JjQANU4c1SRmdFciMEvKBXg8mp/lsmC8uLXUFAyLXK3YxWstWi+XaltYtbL1r+
	 GJKZBniEHQPeiK/YkAbO/qImOgByr+DNvac6co4s88Ce1JbSlW7cgWY1O2uiTeGfBl
	 /j64ixnNEHADhNwUwMaZAaHIi4fRiT/Po+WFAuQ/NgqjuCxJJz5JVXCdXA1mP7HF+a
	 hJlL7x33H5HBon7b9vDiyfgFo/JqZp+HWRn99ZD15DVn34A6khdkkVAxKZ1fcKFOKs
	 QV2gdp4Ujb6kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C250BC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 13:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010012278.28497.5492980499223207700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af43e6d584a5c181c34f8a63e0bb6684efcce1fa0f289824b7bd02e25a761949
Date: Thu, 04 Jul 2024 13:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720100122
