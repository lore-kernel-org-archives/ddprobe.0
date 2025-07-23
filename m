Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202D822F74B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753315194; cv=none; b=I2on+Hn+uyqORwsETD6YFwBjIKxNHqQN3GRwRHR8CSZT0/pZUT8fHkvXN9M6tbbHq1VQ/Sozx2pdL7XGgaRsBh7uWwl3BQOUZ6z06+jAuME4vztzYFVR/XC1T7nmI3DNtU6dOPIDdxZ3PjK40oWPUnmgqE5pppxGlQmRg/fTrqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753315194; c=relaxed/simple;
	bh=SXfmvPJMKpTkUiMfj1PTvIM/+1TLr2/lfkd93JLjptM=;
	h=To:Subject:From:Message-Id:Date; b=JSaKZlhvfSZrcSDabA8xZoxDIuNKie9hPLstWrmhoDCo47ezlEhfyxe2AihyFhIW/F1mRuGEBNxCba4OU+cLcb7XZ3faE4yxsO23C8fuDgzyjPy3Kduv3OiBFVE4lyAOKqvs7GMgnd/xU8mqhvSiWPl1fUogf+TuGDAwmjkB1sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnzOjOPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnzOjOPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A63C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753315193;
	bh=SXfmvPJMKpTkUiMfj1PTvIM/+1TLr2/lfkd93JLjptM=;
	h=To:Subject:From:Date:From;
	b=UnzOjOPvpale8QQTCWqBLbq5nJkx7tHfEoAG7GlUdRTNG4qtRAk8UIhOZeGPkd8cI
	 XBH1VpbGnDfo/BW8bdglnVu2FkdWCwvmQC+gurZWLFgZkbOpIl0gqSfMAcFqNwSbuB
	 U5BqsPN8a2n2YnsKAinXaPSJpvPruII3LvIcOQUGtJ+i87s8RtsvCC2CbdevZTje1+
	 dvitoEtqMOE0iR20WN5JaTv516NSQG57pGTmGoWeGKmXtiIGaL2uzUVx9qCxsnMNfA
	 QlIDfjPY/L8PkUVeC82VRj55HB969yVC8ROb0vQKgK8xbgx0O6l9omEvM+UiWs7U8J
	 AJ4eJT3VPN6dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C07C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331519357.26086.14240087468355111140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd454fe692fb6142ece685bd377c8d63cf8ec2f0d1e529439ff31d012a15ffe7
Date: Wed, 23 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753315193
