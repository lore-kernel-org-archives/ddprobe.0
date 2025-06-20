Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5567927CCF0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750412394; cv=none; b=uZU01DPSF8edGgsPXltpqxSiF7KtDVOD79WkoFi/ZFTTYsFz2db7kaMF0aCcOTrAiqqXgQLqUkFZJP8QI/p4t/zCsR9xpkNZ/FRo3oIWJtHtmWpQxLQFEulNcPOEsW1BCZbR0+Ax5Ht/0E1+66hEcHWA+JwJDMh8nLfV2sMdyUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750412394; c=relaxed/simple;
	bh=p1/ScDsTI7rjKG5G1EYJvfySDUI9UinVP28uGWMETGI=;
	h=To:Subject:From:Message-Id:Date; b=bh3foHDGMrRQ/9OFPgSmn/lFqp4JuQv3C/CQBLBb29tuBNwiJsVYeNyEMDpN1tti67VoGX7I6F7hGMVsgxni924xfXXtSncWGPgHjEFCFmROticHPQzpl7s6A9EciHlvDZIsrUEtAIfxMTk1U36rXt8g877srRQ3NwlftR94+1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btxf7+RU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btxf7+RU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD79C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750412393;
	bh=p1/ScDsTI7rjKG5G1EYJvfySDUI9UinVP28uGWMETGI=;
	h=To:Subject:From:Date:From;
	b=btxf7+RU7ktdKmygO3tCen8J/jtkwvODck1Ska5tfS6rxrMAKoom0yIRgAi4URouJ
	 Rbob+8fSFExPOxWUA8B1vncEGtfmgb080lEKhH9Q/WNHqom9AOarLUErSOGPVtbt0m
	 WqPQRsjTvhP19Y588nsqNWpYFf38LXhIgl5DGARBt+FFYuMbWD14AxnnbMzgzQblmP
	 pzvG2UOqGd7XkhgmruD7AqGCGTdQ17qEA6BjzhmOxwCdVMsmI6/X6Nnc3YSEyLCPnM
	 Nyy5wdBuSF4yrNQ4mVWIJbRq44BbU0gsTOH3qz1cGZeIuDzP3MlSIHNeJHHPkkppzz
	 kUhaT18V2UE4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E852C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041239357.18698.7390713713916667819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3561e59cf11003039254da9027ab5eb1a8972ddc7e37c9ea3c04f3c1cd1a9b52
Date: Fri, 20 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750412393
