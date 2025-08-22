Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E6D304BD3
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869994; cv=none; b=ThVRTF8sz90RYaRxJWNAg365ukAbaZkJvhMTucJAwFJ0xRfpWZem6fD6pbSaDMX7rinoz0QuFFknIth3cIDOiYzMnFAeVd1mbsGo6V+nsyB/spONXLVRR/HeiyNl+94RwdVCEgBUFMa1rqRffq3m98V95XgQfx8feaAdFfkjoQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869994; c=relaxed/simple;
	bh=uKr2+wE4HBDK9e4hL/0m6D+vIWtI9L7yXrGnrqmLufM=;
	h=To:Subject:From:Message-Id:Date; b=UiGqpWkgXv9+z2yMYasGvKuPpgt04QBc3Hl7Cs0LIYg0tHAjCSlnEu6dyAISbkISM9lBmImAM/6lTUNBB17g3eD6eImu1rC/g/WvBB13Sxmsxl5MvfAOFtmZy1WKGtZ5fGYxbsNFtyWPtvA4KQ5ygzv1xoxuqthaUjOsmNxXsEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URUStQ96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URUStQ96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A084AC113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755869993;
	bh=uKr2+wE4HBDK9e4hL/0m6D+vIWtI9L7yXrGnrqmLufM=;
	h=To:Subject:From:Date:From;
	b=URUStQ96aoJEEMCo1ifGnUqbn9rnqiA1Y0nro/T9oeQYOGFSZVgSE6ZYkE+60Xf8p
	 LmOi1Tbws6paEY1uc3SdW/vBaRLhiaWyJuOK+yvyzKw1ycVgu2Q/Nt4H34vHCBCEJK
	 nER7IoJdR3q7SdaN4+olVqGQoV4Q65nYRtj9XIOTzMLqmwK2Zvt76C2d7Lp2xMlxum
	 gzYh6WzNsEnjL0ABI2oM/1xGSXdgKCUlrEN93lt1GtFeXUbdME5how+tfl4Nv0WkCs
	 D3vbTcARff2joxccLXlNYCH4T9nGZksI4lXSfRpII3NbQGF2Uz5kE4e/3CSBjeFxDY
	 f+E7IlM7h9gmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE9CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586999357.15394.2265153765131874213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484ff605b14bf79b0035d8996ac1fb70b085aa17ef3427ebbc90b0317c57e608
Date: Fri, 22 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755869993
