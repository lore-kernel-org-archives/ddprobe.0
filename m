Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707C7224B14
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763007594; cv=none; b=RmV32x+LE0NEqFtjRhkc2VHGKgNTQdCmJgRZh2oev8RtJGyTgAgHUX9B8/TOFWR/ykZcY87N2vXj/vC/oZlltWUwr/sRwnX3rhhaaUKhfkt7aIY/abg/+a3c8jT9uENjOy6vhspfuOOxGoT31kLZ2auZjsJMQu8hRxQVNm+5pbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763007594; c=relaxed/simple;
	bh=vVeCapgO3ZdOn67+336kkxUhij0gYndswfC4AQBMHjA=;
	h=To:Subject:From:Message-Id:Date; b=nKU/2FSZSNd34fJlx+G1efs7EtSo+b/XCBaYP1DLkfouItIC9BeiBR4cy28rTOCfsZ9czjpN1Q6q/KOjBuSrU2nRqHSJQ6NBk0IWDgTiHocy9tRGyItoGDtovo08WDXaTMsJGA7/MSEomTU6SghA8nGzra1mwfN+LgCUco5Rs9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8vqXoTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8vqXoTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03AEBC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763007594;
	bh=vVeCapgO3ZdOn67+336kkxUhij0gYndswfC4AQBMHjA=;
	h=To:Subject:From:Date:From;
	b=k8vqXoTllUbEH/KMssfPz8Rvl51w129EmIT32mw3t16vZh6GRIQgLtjnvADhe4b3l
	 6Oq0jC6uBI9n7hKgmGlH+RQmFGx3XCjF3VJNPHA2fEkt1ezr+E1yVXVFGb1V+uYpaz
	 tRSrmHIEw5eLbAD+A0WjvYdFYhfXojBuu4BSy5SpZO1bLifoDTIF4Z4E7gZnCxAqVt
	 fgxgCAN7Raz3BIDBwf1XN4u/QQC9LbkUnWk9jjacyZvPs68UQuDUxRFVyR5dgxhzaV
	 eoFPGFCtJbbhl/BZtfDAdICUpmIfO6SOLtGIt5/41Msr8MUD9xhReq6emCCUb+sJus
	 l79IFIBDDskKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC0BCCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300759373.21288.15110276324204997630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6194f7b1e5280dad76fe542b8b7b6dba6ab812ce46c5bef4c4cee96d3217d08
Date: Thu, 13 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763007593
