Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C96A3DB32A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792090234; cv=none; b=ZIuClvWSH2obS80iYvE5xkHm2SOeN+NBcvwzSEIDZJHv6DCJRHO/4Xai7GEJD3CUIpYWsPlreYTrlnD0+15H2kVVR2xPpTHuHN4LTfGmQZxu9tICSHG5g4QOqr6JVPf2CbV0q6hgT2ZEBaCzsvhGHr6odlCiynteQh4KjoZ7PCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792090234; c=relaxed/simple;
	bh=4UPcclvJrai586vjoPiiIquSI7y4CfBSC+b9VRyFuto=;
	h=To:Subject:From:Message-Id:Date; b=ONPHWz+7tRChdkoQ3v7HhHDNWVIAbB1kRgpGyuZwV+VqL3pPFgKlGXnauYLl6gTmYW78KN+ipbASkTnK9iDiWwXHHDt7soakSNyoYOesVWsbBUH/S44gkTdSgP4JHOEqO5X6//F7KjOoeQh/bgP62y9BTZOsJv1xJc7fGehEv/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMGrLqgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMGrLqgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CB9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792090233;
	bh=4UPcclvJrai586vjoPiiIquSI7y4CfBSC+b9VRyFuto=;
	h=To:Subject:From:Date:From;
	b=VMGrLqgVLzJbJ21opms0/NqytmtV+Zs7zACR3Bfm+larGdlJ+T/1mdnYnZUslZmYU
	 yfryYHZPeRJAT6+mgzX9ROx+W+p2V4RQDwUv5C8h3SjyE2xcbL472CI5GgHLq2BxAu
	 UNrHjYQL5hmUS9UZ87LCfcAdLv085CvDwCrjVk9hJtBpbzKreedgpMrDZtC7OCXaFU
	 U/v8Gojh+IXqyxt3veTYPdCAqxEW30FjwdxduIVaWhK3zDUFS4w2sboI+A7tOmVAYF
	 mzKcmuwXVEln6cWGraa+uHCZ4wFTE0LB9l+idm1Tra1H9uIA+DLODQYeyIhEVqAvRg
	 UWqN9ZwKoGq/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1A9CCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209023368.6527.11713261350668689237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71573c00633aec5f58692fcfd2353f3f260aa5185f8813af1da0d1323d486e04
Date: Thu, 15 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792090233
