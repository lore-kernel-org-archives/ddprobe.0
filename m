Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392462798EA
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760137194; cv=none; b=RRXkGv9WbsD9pxGBGmNYWECCSxUTveeGYg60fIm5Q8qIODWyRC5623ZBc04+0Mg1KPUvdjI5WDfKobKRI/fjuwqiOUfnx8W/K+TOHVOPW5TfqvXnJKOn41hDTVF+1JM5Jtuxj921h11bJVr3AsgEiVIjQNhSAZTX9F/3hP5bi4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760137194; c=relaxed/simple;
	bh=7TYqA5Q8wuf1PtY4AFyVsbuC4pvZ2AXysHH553mgTs4=;
	h=To:Subject:From:Message-Id:Date; b=ELx276ljvD9W0EbLYrcBhtMxv5hv/NseHz/klS28fL7ehehGMzzOhbhe3sdiHNMv/8CPx6X+PAEf5/0AesH7FtlNNzgFcypCdnH7AL9BIrFbvI1jHA1OH1VIbUS1SlAJUrrgnPN3q3rchQhyNPFod676JUnl84m1LKADWnlvFuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwkGzCqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwkGzCqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3533C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760137193;
	bh=7TYqA5Q8wuf1PtY4AFyVsbuC4pvZ2AXysHH553mgTs4=;
	h=To:Subject:From:Date:From;
	b=EwkGzCqUT/p/Jbkp9OxW84LAa/5xC9jf9jxDtdlVVeJ0lPLbs22bFXccJHQRkrLbj
	 Qo7bwrWA7Yfqf6WN/JeFVm1iJ9WxwZLctFrcB3PYNvcSLbYnZNxB2ExVPWr58VY7jv
	 JMulHjLqCDhjeyo7aR0lj07zVoKn2UqWjzbtovz4MmcfsDTotUS78wmDurJjMBuZEM
	 tm2QQpkwbSAnCHtzR3PA3y/ak7Deo76ISUXBc9sMekwj5ARpnYOpiHwT4iytzvBw9f
	 dfFEZneLQsHB0XdS/PDH48m5gnCAjc3/sSi4OoJHCfhXtSuryI0aR/fZ+2T5bViH1P
	 g/WVKX48QRAeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D4ECCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013719357.7308.2377624829304289849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e4fd9356a534a9b1772635f23704d2002cf707c0afaf71635591b7387c72e5
Date: Fri, 10 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760137193
