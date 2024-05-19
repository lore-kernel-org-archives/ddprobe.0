Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605251DFCB
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716136343; cv=none; b=iEZvClgXjr7GO1piB1Up2XGV/1zuEaIfaIlZzevkOhD1BR2mfEDwTEeU0Tz+U9S/6G2LDZtNFXXcCDZ66JyyY6HDybUbEnkWufOh+B3xAQ+xyJCc7ankpYSxSWYqmQPw+DaKXzDRp+d8BiDcWlG16Xxf3XlGc3tk0OVHxm7TwqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716136343; c=relaxed/simple;
	bh=KRJLUrc/v3jTfX3WrIOSbXCNJDW5wGhHNrhUmqGzFxo=;
	h=To:Subject:From:Message-Id:Date; b=ARqgnbZuquEez9HOhJqPnZKjhQ2avrfHgavgq29tOHkCAby66FsKBEm39/M7m1CuTSxNFbOo8/V+ErRMOdLh0X7sUkrsN+fEh+3WqrIeEwb/LHIP+PzDC0KdHDi0pPMNFGr/XA5Ult7ATzZPmA4i538YvLmSedKpAQZoBDW+f7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ml1Nropk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ml1Nropk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2570C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716136342;
	bh=KRJLUrc/v3jTfX3WrIOSbXCNJDW5wGhHNrhUmqGzFxo=;
	h=To:Subject:From:Date:From;
	b=Ml1NropkE9zv2FzO4GVbkFi1W14bp03+tQdEbmw0krSpRNRuDQKBUWgXkYRattNwt
	 fLZJmX50dZGtrl3SL17dRhYM9K4aleh/fVRye40FkuSc6qiTR+B2VOqWow7fNUAUsJ
	 arz5luxxS3M6tkOJ6K1LCeXbGSA9f2sSnxGwSEiJPJHjpUt9p5xUcAmAUacNUPgAIs
	 nEbljTx2o2lq4d8NHqbgMyhX2a9KZxDwQwQMjgRWyQm+B1fo1M3cxEbQ3XAIfRgwhJ
	 89xUPDDJbw2K3Pc06HsKAA1KbBesgB2lN9n2rqPER9pulQn1Bt6AtuwfQGnc9t3zBG
	 b7nVgR0Ag4Cfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCFABC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171613634279.29489.7566303922923274419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ba11c24e2bdae14b7a4645d52dfcb407e7f25df2be09562487ab724a75ebbe
Date: Sun, 19 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716136342
