Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CC521B9D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750523394; cv=none; b=gi306RPce6Er9oIOjNVEeC5aUkWXTqeRCbq7TYLW0mro032DHa591vOkSt5I1tGJMbpwyBxLgXrRe2dBk+RDO51X0mYiHa3t3Kfp9UvhwUJxRp/IFhbqoW87JHsxfgs8YJetRFWWlyVjxlwepk8Dn1bFP3ARS8yzThJGSgGynDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750523394; c=relaxed/simple;
	bh=EoLYC5TKoXm8jQjD03UCBHG/lFLG42r83eRlR8mlz/Y=;
	h=To:Subject:From:Message-Id:Date; b=K2zOYFfQmfRCtgZHgHnNODy/gotIsg9xCMx6iTE//RVcXW0jgl3Kp7y0BFXxZ76uvKT+RhNctvcv+2AhFR1WQ/1OOpltTHMu8d14lQmzIBSYJWGkxbu1jN0YdjrcAgl0AN7WbFbLBTungSCug/PlIZNYoyCoYBFTtuRWIZfZIFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSHUSrCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSHUSrCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750523393;
	bh=EoLYC5TKoXm8jQjD03UCBHG/lFLG42r83eRlR8mlz/Y=;
	h=To:Subject:From:Date:From;
	b=OSHUSrCNLceLt1Gp5tBPhbwUkGjYZyxsZuPsRRxx/SR9gq63Sp8ULQvy/QwYmnJBq
	 2GysHu3AU6MCnk/lbP2pXAuOshmYttrf8fnIrQvCSQkqH49T9N+nBupjrkEGWNusYp
	 1H2lnDiokldUAGFkaEdC8zDdEXv11H9arScerRqEbvKJbx+jbeH5KA2qyP3XH9eu9X
	 7YHAV4oxco+Brt7GRIyVlcRN3Hpn15IdUA4YHNTbMRVn/gI5ZSTswjYFS4fFONnsOh
	 1fG07IYcmGMYttkB0ggYFfa5ipu5zxFylKhLcDYCmmHCfrE+Iiio2dt/u66egVG7kO
	 GUFmvnijcP3fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91313C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052339357.14486.13409180855864516731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9b494e094ba49e4bb86298034793c5f9f1c5efe0b478071d3062711429937b
Date: Sat, 21 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750523393
