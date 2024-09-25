Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F92515A4AF
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727301354; cv=none; b=V8U7WLxufTWiCQvM4VdFj13ruGT2gtoN38moHA0GoZsTpgklIAwOxwLVPYySaZrQeDCf/Pm42hmZOOg+gYTEHyekK0Msi9/udw6Bk2PXbcsJLvEDhcmLPO2XBvZqQ4VYc/s+AV2Pe9cikEmrKALbi2mLyeR3QM0KVev/1cTIzyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727301354; c=relaxed/simple;
	bh=frsmDgKYjj9aere7uTZQDEIQgNKgKOVeGRFS8sNZrSM=;
	h=To:Subject:From:Message-Id:Date; b=j8JnbA/T37iiA6c1hFSJPW1Xgjgxo16aAZDWuvSfrzT3EDYhxz8fhXGdIsrJ+53JgOjz9mY3+FKbW2ZouwrL/nR3aBQfu+ZaZNItNnixqzpK4csOhyod9lO3CLrzApUqygWEp17IwCP36B7nJwriLWTWzLYcSG3blSvaC84S/vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2xM5ToY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2xM5ToY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ADAC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727301353;
	bh=frsmDgKYjj9aere7uTZQDEIQgNKgKOVeGRFS8sNZrSM=;
	h=To:Subject:From:Date:From;
	b=t2xM5ToYlle4zDgNV3oiHHkAWMoMB42/vSIWaAOgrLE+DA/6pBCcIP53Pw4InboDO
	 efJBrGud5ExUkLMvhfHZFtcG1jdXIvlG4UG4Cpp8R7GPlZUDk0Nft7pRzSEZmLAhEo
	 IALPTa8PYKahVTueiko0GptTb4baLj4aZGQcA1/GK6ZcvQEVelT9jnibpUG8PjJPaZ
	 +C+V1UyOY/xBSI3wkiy39S5dyo3vWGO3ONUMnihdOL+lMlY2xuDZFmXCNJZxIsQbYr
	 5izrzitDYZRL/pox5adDFI5cED7LA2vgbKN1CCf8snFUYi7EY++c+QXXpJOsldpEb1
	 NuncdtuR2zkYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360FCCFA01
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730135359.17424.9063249489184101631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163bfb8041ea510f40efc364c26b3044667ea12808f1158bd69f66a1fe545d79
Date: Wed, 25 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727301353
