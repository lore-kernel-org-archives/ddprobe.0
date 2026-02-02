Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E461A58D
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770012234; cv=none; b=MRFv/6kliuKmln/hfGUWdqQ9zVsmMbtxS43/dcG3SOeC9SDf/diOej1HvYjlsxHguka0Hs0R5r+i93x5eR50kUmxBLZ6t68SxIbYKjJMolwbq38EcIlSUYFgISI3K3Ozw05HUSz3/00d65pV/dT9uVxNG87LE5daWd/brF09mpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770012234; c=relaxed/simple;
	bh=hKoicOaAjVcmjPxmbZ3lzFryvEwN9lDFR5uA47fovCQ=;
	h=To:Subject:From:Message-Id:Date; b=OzfNzrnCVoNWTn6sSqA6IKW1bD+qbiga2Myq6hpOoBzO7pQZT6pKKBj4ZUW+vYnuH+RnTkXifDV8y7b4Nz6qwwNwWwmupSkoVSAsx6Hv5zbhJXW7c0DFSSwuWLQ/HyQHpZ2Fbv7tj7meUmzJwnhx6mJiVjrCVpCh1ICIzFf3PMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwzFIu8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwzFIu8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8C1C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770012233;
	bh=hKoicOaAjVcmjPxmbZ3lzFryvEwN9lDFR5uA47fovCQ=;
	h=To:Subject:From:Date:From;
	b=KwzFIu8bYl7koCyBCj+RMjccVtrE0jE6MVuhLPvqFVKg5dJlAR1fihyDnd9dg+qDx
	 N07iFAB2O/y6j6m/8hXUXoPNhRziWIefaDfVvGqXU8vYPMOz4sPUzHBuRP6fSQENRy
	 eaD2BvYYd+nBz0osGhyjIUQRVYMfjOHnOr8raqYVyjVFLs/5n+RM6YjDcBx9VcFfIu
	 G9D/0RsB7xZ5nFXVQ6O8BYPJ22T3wMD9AGGVREOeWzAF4bv0gmuFiqWlwojjN5kc4T
	 crcvSaRz3vlcjvuiIhvDlMeE/e24JcqaAGmaZlZ9T2NZmOM+ZerYS8vG3DeFB2taN4
	 n+RzbBSc3fdFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983CFD172CC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001223360.1949.7247507756518133610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3010b241262d5aa9d168feecccc0c1c6c51a39c8b8d9f969ccf24146c48a52a2
Date: Mon, 02 Feb 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770012233
