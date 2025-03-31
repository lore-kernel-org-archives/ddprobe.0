Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A901EEF9
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743398994; cv=none; b=GmDyCzrVGoHsjQdpQQJjCQD/fa+IEBxqEzbZHaU0anymYuPNDSUqY9qSXl7f7gyip9nUKvv8D3q157k7D9ltYbwqPtcSFS980NeyYJRGPKwvecPmVRIdd3H/1iiHJuTaEXveZUM6FhrmBtYofo00DUWhOsjSMDEIevI8ZxpqGTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743398994; c=relaxed/simple;
	bh=qtD6zPL0ExlcPtr/K+o/gVuO7jmH20FCkGqi+q9Xs4o=;
	h=To:Subject:From:Message-Id:Date; b=evoDZzR0ECrm2lINW1yBKWcBVet0dVlR4xQlY+88GiwvOkRWb8IYxJCrpxNjxGLCtfZOpKuFpmuFVv6wEBNVXTJZFrfiQvZR3o6XunPvclJPV655GUJKC7UwDbeNM6WZLWK+cCutEGPzmBjywQ7i7bzdlfj7KcOPETAUUoDOx1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/ml2B22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/ml2B22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA1EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743398993;
	bh=qtD6zPL0ExlcPtr/K+o/gVuO7jmH20FCkGqi+q9Xs4o=;
	h=To:Subject:From:Date:From;
	b=d/ml2B223F5hBlYgNV7cW3rJJQSC+lb6jl68OsBd0WiYgEAeWMunxaGYJ3StKfEV7
	 aw+6MgCz0Pg1JBPZNoYDTaGy1oR76LpnXDFy8fa7gTlmKelELZu/sn3T1o6xH8Ezm0
	 f3UQp64j7EZcjgqhIv7FtyFfH7XS0p73e1tn6LjwWI6RKmG1RTOFB8EJ1/rVbXG11M
	 njzY6x7pdkzLDhF/y10lmr9l2JbOjBse45yjqKmkcaeYTIOv2CDSw0gn66WoebkGWO
	 iywp06AD40pheEFCljGLLPR6Ak/Zlef/fVzdcJqmxUYsRMqgCSDR9Cx9jJ3G4XxoFH
	 Iv2iUgbyE1EDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986C5C36018
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174339899358.18487.15372451452000257318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fac06faf4e6e9e663275608aa1324d9fe268a0f74379e674f28fb1b94759dcb
Date: Mon, 31 Mar 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743398993
