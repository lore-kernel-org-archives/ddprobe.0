Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3054D8AD
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727362554; cv=none; b=G7dSp5JSeAOOFbS11vaxdaokOgfLh6zerei426CR2AQNahNCY3ojHBeB/0YHF/Xjnvl7nHkaTNvw/oyvV8mJ53DRnoKlkoz0Y5dOyHjBINvJy4umwe2i10iTO+1kJlRZwdwDZfgMnm8RxD9BGoYjMbJahXQpOjQ3x0jTAj8AXgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727362554; c=relaxed/simple;
	bh=fScGwASIOYCdcUjqNYQJSeF1D+cOvlAYYoRJAAynv3M=;
	h=To:Subject:From:Message-Id:Date; b=Y69MFq66FDaZLGoJcTtzENimem6Gur5VRcR7M9qqSOpzMgXJG0m4WzGjv/Fz0BMrFP8KWCiJnEvdfekDpXcZjaNp6SYlwfGeD2n+obEYft/vwvgrRrVoq1/pS2RjarztcAWNlfdrDDHkQBpTjsOyXOYIddhF4Wj2sxc89tOV5Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd+QrSGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd+QrSGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC7DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727362553;
	bh=fScGwASIOYCdcUjqNYQJSeF1D+cOvlAYYoRJAAynv3M=;
	h=To:Subject:From:Date:From;
	b=Wd+QrSGgLyTu/5++GtpRoyHtu/YwsK5KvgzljsEysW9ctqtGmeys4IpY2y8Tu0kQS
	 KmZjgDgDra91jO4dgHHd81H6IaWFRZTJcqvghjfFP4zVAOwHBPb98DjtKxfmUOscYs
	 J4RLijhr4wXC2s+K8VhzyNGMP/tx+EV3+YMLUV9VFTbUraC3yusF5kPjlMo3Oeil6C
	 9qmR63mmjXhTx/leakXKl9uYt5vsUjlOPxtvEZxkGkifQGQdW84oP/G+FifQMuMLsI
	 Nd/Yq/fPYTvByW3kB0zVMz6wH2mogqKvrjUwyw6Y4ekvON0F79Eduqr0A5XNMM4dUZ
	 fReXORa9jIsGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993C8CDE00D
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736255360.8054.5742616789345754026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b7b0b579cb5b55b5b06abfed6d6f09de8b927bfbf2f60472b2527bebc6f04e
Date: Thu, 26 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727362553
