Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307267FD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727832954; cv=none; b=LcnvqY+qeisfwn0ByBV1K8wFXsH8X1QgxlRTnZOUfHTP1lyQh4acX8yP+lEyfL7hEIioJwEsPBHHBpXnxl54ENR8HbFVpgZnSUGMSU/LM2oF2TQdJuuCujEvNaAUBvjNLDRNbl0C7rw0YnyoDubxThePd8jgg9so4UA2P4lQyVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727832954; c=relaxed/simple;
	bh=0IDzw09LnoBjqKOkiwqyY8FkudBhjTCjR6R/xAthF7g=;
	h=To:Subject:From:Message-Id:Date; b=H2CF4Q+k/YcBj+/8Kr+DHPbTr/ZW02lvJOqJvRGHUAxwXh7bri5Coa4zoR7eZBaK6gu2Ruf+4wRCunGlZZvBFzLOFYsTqWW72SxmgdvqLoryw/a0hdO7s69jTjI4wilmC2j1q78nZHQSNHejsT7OIBX1UvjKCO3+3FjynrHmtko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGhDBy/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGhDBy/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DC3C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727832953;
	bh=0IDzw09LnoBjqKOkiwqyY8FkudBhjTCjR6R/xAthF7g=;
	h=To:Subject:From:Date:From;
	b=oGhDBy/Aj2W4Tdx9fzSG4/nR3lSxz+L61zlreoWljMeLSPtQLw9YPZT2cgg4lFMz6
	 FJfme9VaUPbMkMeB1aJtdKZXlKJ+nwBuf8oGSQUjCAeMW6bhRPLdfrYPR8qZvlNPZ8
	 BU8tHUUIhtDJChV9Cx4tq0FDums/I7EbdncEYWbswYpUiEVygAJxp9hpbpXpnKumYU
	 meuWcAD/9xtnYyrK3/QP2+ZJ9OhtPw4r0Qmu3dpVIpAQrCBh0g9apQTQqRLdvMwOCU
	 izOs5iiCSgG3xkKKuJk8fofiP+sX3GPRpGd6KtATToE5WvN4SjmQX7v/X8mupoxkuR
	 jhqyObWtcEstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94120CF318A
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172783295358.17474.2991003928721800697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1795f2604be3e14419ac8aeeddb9dc97895cfb3af6418862a61f744670f8a68
Date: Wed, 02 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727832953
