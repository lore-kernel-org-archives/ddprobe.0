Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3449136D502
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763825514; cv=none; b=k5YUhErej1vOpxqLNOHIQtwI2QDQOjbSDyoefRNDYwaz1TQm3FCE5Qa4r81ix0mv9L1o1zLNMzXsS5rjOJjWERoJ+MdO0mnZZrHK8W0ygdPLZ3EFmIXKkky7ca8iv9HYZaEjU74RI2iBdGEJZ/pdXSNKSVGTQRvXL2qgDSQTF1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763825514; c=relaxed/simple;
	bh=sQsifGPbIvdiaMRAJXdi1QPeE3zKz4YSI0ypq8kk0Yg=;
	h=To:Subject:From:Message-Id:Date; b=NVQEK+157OzB6YXPgckysp9yPPFX+1D2D1CUr2WkkeqKfz5gHXszlewd3bZHpZkHvMeUnKB8XqwziMknKxe4xeACymMClCEU28+UqoKfHNyUxSv34SS9PidFjdWAb37HqFBbF1OsapjJu0TA6pxSeTjOBKBRLUsaNcr1cwndMfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh3WN/5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh3WN/5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE391C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763825513;
	bh=sQsifGPbIvdiaMRAJXdi1QPeE3zKz4YSI0ypq8kk0Yg=;
	h=To:Subject:From:Date:From;
	b=Mh3WN/5AvTm59lgba5Bc7haVQS/Qc3La25su054Nr+Cnlzy49pK94Js+6k6PD6PGI
	 4aXapCppbW7iHXS9KVmx/6mjc0NNm7fDrsfbps7qsjUhBq02hoSXNi7AebIx5ywX1W
	 Uhx20iC/p1FMD/RguvGn8BHN82FjPpk59jQxR7wCWcm0Ev6HAQzkRHDDHr0bUgJgpB
	 W99HF+HVnr01A5ecjt5Pzs3Yd8aWuzfCFA7/b5J+3Z+kUmcklbak+U7nusYQMNE9Jv
	 JqBVJcQHcKvrIKvfV4FMr//PjHe51Rxi3gX5dseqiE78ZuuUd0Ng04cPht/bzdSYn/
	 h+1ip7cDSiBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A49ECFC536
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382551359.2515.14055738961480590540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da56393cf58b403412ca33fdb9d5b3f42b382f2489a113046b9a58c55f0c76fd
Date: Sat, 22 Nov 2025 15:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763825513
