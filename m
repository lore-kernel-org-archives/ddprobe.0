Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FB0471CE9
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790588434; cv=none; b=UibBOxGMSfmPeqzeJNjABNgaIZcNHQ7zkFn1Ubs4OCrKGj358i36GRqtKKtrtz3I+xxmOwwT3ALh+lON/d867WESkhH2IMRRkw2gt/1aF0tFS6Twdp8Pzqfqpo6hI+GGA4xAmEzGSqLnv8ScIckKUTs5dzZSpxZVGjoSL6VyYq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790588434; c=relaxed/simple;
	bh=aTQDrp4N9wwkk05Q7Ggb6tskzsopiVFQYCs6IAGkVXs=;
	h=To:Subject:From:Message-Id:Date; b=Hps1xY8bVcC+xzhbEqLr+Xs9pROBUnygiD+JXs0deJJNFThzLS0NlV4KqKtEUmj27BT7msTa52V7EXjcUPtOycx5h1OSF/sZH+PeeQM0QIze+oBZ4lZCBCyxIhe+Mm2xcR65tGcGt+pDDLHHQMIKKHO2QcPZODTRVHEI9XEsAOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iS2E/ZdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iS2E/ZdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC35C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790588433;
	bh=aTQDrp4N9wwkk05Q7Ggb6tskzsopiVFQYCs6IAGkVXs=;
	h=To:Subject:From:Date:From;
	b=iS2E/ZdVHTVa/uge10EzFnPpuh1YgpxpTew+RRL6UAqZVgrzPtmMA4ughC4IgVMmB
	 CifCYCcPdFUzou1h89nxSBrJo1A6s0dfPSk2sW2btqfNhn0W0i19shevKjd7ls6fJ2
	 dlRlon4hFlYeSAGUmX8B8Dc4JmU+hxLOkA34yYw0KZ7UqxiDtxS5D5CkDZ8jPkW5rO
	 g3UvlRLUo/rMkSZ35sPntOa2crzMopd9B7d5MkWwVEf973xqmBhOurg2O7Q6lJMMVO
	 Qnu8NpV67tMqepFr402Ay8hM8qyxGNnu4q64dyNA7YVbK+z/BeN5qL8DurAYhucysg
	 oiepI+JASNu6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B763FC9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058843373.13337.12489511565950271967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a24169fa88ff78868ae3cfd9eeb7b7d10da606236226bb59f1b7f3e5752fb62
Date: Mon, 28 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790588433
