Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2CC41AAC
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755566994; cv=none; b=oDOSWMzbxFPwjstGJXzOFIPsYnSdY9xMDhVlyKGsr2ezt0EGJs5pFErWWW7mG008BCAwLNu6laP3GOjqV2pxupr1eyIfzWyCJWC9PpKE9RlFiTE9lt7dfOQ16QK2dutjY9Z9VRJ2tqi3+6woPv5Bl09T175A7M7Ng+s3mmhBVzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755566994; c=relaxed/simple;
	bh=c+8aK0YVqj9sXaw9ZaRvC73nE7m5Fmm07kQFiL36SN8=;
	h=To:Subject:From:Message-Id:Date; b=s6Iku0GdMD9MNN4GbS0Q8XKlj04qSF/Ele2o8KRDtWATqZV2y/A7ZOlWqeAAh693Z439TBTFSg6pchEn1ANksLN+hvrxHjHIOXBOzVaFJlPHWC95/HooA0DMPYDiDbchCjNteDhKsKvSb2X9tWGJfoFtlbgy2JSXAWEUat5zYpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spzO9ZOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spzO9ZOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755566993;
	bh=c+8aK0YVqj9sXaw9ZaRvC73nE7m5Fmm07kQFiL36SN8=;
	h=To:Subject:From:Date:From;
	b=spzO9ZOhNgTgdRcxpYiwaQ1adjXNcGDTHZ5eTD5Mo02tbwQRxaSKLjqfYiSBIPP+W
	 7kkZ/QnXq6pdPOWiJXdMP2psPC+SA4XdFP0JEe+4MiMPde+yZNQ9UKk3Cgirx54TkJ
	 quZGNq1MCypFKN1rIRvTj6c9f4TNVpG1Zns9HRHVS/wTcCVqcuFbTOnuhRcVXXC3N9
	 Zl24OIn7qO6wOjgMQuOEiqhkC10pD9+PpH9seQBRz0rnFThjfxyGHSC5fzSf+mg2fH
	 nRBZp1kbKhv6dmPH6PvMGPk7FxICLXrs9FAfMhhNcWd96rrJUOJ5dOzY7ZXXXbXSz3
	 C1ojZnJOmySFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920FBCA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556699357.1892.10634856537527851781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faabe8f8922a0ff2ca09459e34097d2cc497e9e5de44a2366aa1fdc2a852905f
Date: Tue, 19 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755566993
