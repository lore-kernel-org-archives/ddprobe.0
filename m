Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2340A17D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759889994; cv=none; b=tmdg42nr1fY1L2krLGmR+zLfvO1szlbCLEdJ7D8yLJleAKWpkOzawkGT8KaIZcm1iC0BLcMOi7+qANgXiwLVRwF1dL+fyE6MFNP8Y6nDcVuafm7nc73IskVI62sANu+rOfSp4uPTcHcNIbGqJaBusXenSZVhLWkYNNzcHmGoYtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759889994; c=relaxed/simple;
	bh=/8g+tn7VlnfKNo2osPRktRK8V7mY+J8QZIJsJeNqmSA=;
	h=To:Subject:From:Message-Id:Date; b=deFMwTuGihF84RrMijEHq3nd6FtdzXcBDPAPVkZhFHmpqyA9i7a0k0Dw96jerPGIpx9m8YKocDkIw4HY/ajHsZOK5l4GUTDvu5RoOriOyrzsBFWI/jE4BKmqvHg6f1SGeh3DbqBVvk3A/x3SiP1uR1vwdbDXWUsReJtdVpug3Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Um2an1E8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Um2an1E8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE71C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759889993;
	bh=/8g+tn7VlnfKNo2osPRktRK8V7mY+J8QZIJsJeNqmSA=;
	h=To:Subject:From:Date:From;
	b=Um2an1E8jskA5yu6ST+Uh5fJbqN01UPgCALTDViSZoqkLK5bsyhJHDfXG8v6K57V2
	 lZW6lWFbaQMkkI6IkBC+8gkvfoMPudddRqH/JjfnGGV4gzbC9uN7f3glGiaWRDDsEg
	 h1wTOWxQefUVGmrbEGQH5pQFhqrr+tav90tGsknHfGAx8RbZzTFMu95pPJ6h4IGpb3
	 jsgBVCvaBnT0lsr90NFQ8USs+CyTwTCqu/bElCWm9Z352wq4tqqdrW2bbHy0tZhOCA
	 fGBcI+rhbzRMPJ3qBvb03XGROsaA/ZWdju2vC3PD2l+13YXbruh5cQuVCgn/YA7pNE
	 lTTHkaQOTOiaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904AFCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988999358.4960.4731363815416025736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf446c7861763e413c1ff95e0507db2d078b7e87d1f08b294d721b5b0982eb3
Date: Wed, 08 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759889993
