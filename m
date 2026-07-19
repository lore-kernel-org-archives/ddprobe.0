Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C142AD00
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784465314; cv=none; b=aa7mK1Emol/oTaNcXwM0pL8VpTln0PCTWCBjYHPbAhc3lgKNIHGzs9Yz2IWbXgiA622FWAx4ZpuzJdq72kJkY3ZOvOGvjSs/eclaWg3LxkONX8gNkiHsc7ayHMPucb49YkSYn7IqRDIoFIsfeHxtPDWct5t3L35LRjDbrC0n4UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784465314; c=relaxed/simple;
	bh=FvcnyqSyarpIRKe6ddDZbBVsbvFeu1vDz4S7v61vYrU=;
	h=To:Subject:From:Message-Id:Date; b=V8M1F7one+OtuWf9bhW4j3gEnrJ7pr8a/KyAEvI6zaTm/4/Ujx0wlNGfiMkN4zmU66oiCK2eucIKVMDKg4ThT2OfJ9OK9lDeFuDi/vz1EiBVGQB5ftnXwg/BtFEQJUrGDABgkNyHeBiIgHlKW7v9MhG4yPnqhY/uKzsoVv/KhMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tajO0ldF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tajO0ldF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3A6C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784465313;
	bh=FvcnyqSyarpIRKe6ddDZbBVsbvFeu1vDz4S7v61vYrU=;
	h=To:Subject:From:Date:From;
	b=tajO0ldFLYypuvzGyFo1bBkQFTUzsdoJ7xc/aNrgs3noLwkeNoR/+1IDFFghOUw0T
	 ESucSjwgUDQZNSDJfQuM7rwEIGul2WbKWZrG4gd26o+iGrHgzGgvsaTh/i7hJcMcww
	 zUgGotfbTJQ0oyHlZo/dTMCi5UHMc9/bCUXvp5A3ctJTYFQIQjq7IrDa53zlsiWOcn
	 Da+37wpwYvkH+P4Oz5tW7J8Q6m8HIxN+x4jsXiXwxzcytyEA1LIvp2Bl1SQQfaTmea
	 T5n7cVVk2HdfuhnesFVJBTvVEo9SIL2T2PRA52hjDpBOoHPF+xBXNtABGIkQkUKPpR
	 5sRTRrDaOuVXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1E6C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446531369.28584.7301922182631533495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df140f15f322a032900bb4c5bdd64d45a43b9dc8534ff47e9aa93e0ee7bdbff5
Date: Sun, 19 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784465313
