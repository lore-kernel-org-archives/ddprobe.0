Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5A43909B5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792116034; cv=none; b=JIG6UoloTVMoCcUBc4St8UU/EVOzwvaQAliKon8R1pyzdPDkEgGBdbuisAVg+AWGUdwsknsOuyofA+GPfZ1qkKvoBNugaTDXerDbebODB4b1gjcPtmctMBbKL8rblywTTGfBoM99U3xlkDJ4//jR+zYk6aaB5GK+0J9mtVLGvis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792116034; c=relaxed/simple;
	bh=zLc/ipiI/wayBfB6WR1BdTF/RAaTKMi951WriiA15KU=;
	h=To:Subject:From:Message-Id:Date; b=uFNgYms3XqmTXTI3BlowYMwYsXjfjXlUVvLyoFR15HMj32R0sz3YKsNkVJP/TO3c5WVKCPyp1119w/iuwnqWQWasEDTmPQkwkudpdL+Zj/JML6Z000fvEyvR5bjvYQQph6DGiaxsuVfuGPq5+wfGgynyMXIJ7F38faIkbz0HLbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vA7jjw+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vA7jjw+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D080BC2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792116033;
	bh=zLc/ipiI/wayBfB6WR1BdTF/RAaTKMi951WriiA15KU=;
	h=To:Subject:From:Date:From;
	b=vA7jjw+olEdq5kBLI8PCh4trD0ZUaTON+rBkN+hyDeSKmqRtVO6xvHdTGtiZbI58L
	 v0PnIlmOhLMbiKXucwsuN4RF+88aSxy09Ns5HFUpWI+o+gpK/CVgSuE1ZtOckZwpt7
	 fLVuLYnsLZJ3AVky9vWQGpmec7jGsW+gDjA2v5qIEWtX6o7SYhWn9aqBt2svshdTBi
	 S1fGO2I9KspbmMkSKbevpGtAKYKxBUkfJLO7hFuL4X5Tl4ITL/x8IqjQEKfIWZwucL
	 UpwrCwfKF/lIOSU896x23lT0RS+RYVc4vq43OB/tHyQPlaJuam3hoYMM4vuXMN/f2P
	 hwiM0bk59rPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6D1CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211603368.8817.661708991051835290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5241278b6bb91ec21c85c9a5cd30e8f9dfe87884e6c9f6dee33ca8238bd2b8a
Date: Fri, 16 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792116033
