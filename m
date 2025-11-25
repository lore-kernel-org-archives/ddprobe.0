Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244581C5D72
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764093774; cv=none; b=mbvpyyHP3WkJabI+u9PXjzdUCOI9QkyZR0/m8qk055fnz6EjeXxbnfcj89tFIb8JD9ilaNCILkUXoAkMmspunN+yYOmWcIUl4NQST4n0jvl9T37+EOSzrYxdBvN+5n6XrJgOk9LgTvZWtMZxTc38qHAsJQSrTyojJafo8ARfJTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764093774; c=relaxed/simple;
	bh=qTXE5AH5IjEev6/WtBJTCwvrcK+yiAiTpKvlSKLD8hQ=;
	h=To:Subject:From:Message-Id:Date; b=CQFaQKvIpzg4R895R/hUTjQrETv1pQXNGsGKm7qA7iKiMEncaOxzxiwL7T/kqoyEPHxnpybsv7y7P1xRLw3ByMiHww3VMIpbS+hTzHduZpQVJAZHlsy4H58H4tZI8uaJE5wEAuZrtGc0MXpk3BbXef1u9oQQEyk7gM93W7hRXL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAGekji1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAGekji1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C75C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764093773;
	bh=qTXE5AH5IjEev6/WtBJTCwvrcK+yiAiTpKvlSKLD8hQ=;
	h=To:Subject:From:Date:From;
	b=sAGekji1IF+A45XsQfy81GymORrTGuIz3xWF9Mn7TnPc8Nu+mRn1cWFPWlRSXfj4l
	 uyo+AgZFrUdKagIyX9u4NmvlppBwWNAgQw0LuxgL9icKiY39xJEpcSvFaqYayMpy1f
	 iwsV4maXykoFGAtKIDaxa2WfFPiwWZf4sDhMAMe93/C185CVvH5yPNiNjgUaJ1D+rT
	 /1M9lDT6SBB4eBkXDNmBaYfStDEEXaOre2ZGOQ1x96zGxMQ4Hh3BTQA4GkAWqFutOs
	 7aBgd946hc+rQ02uW3v+rLD++VA9F3MedjuiMwRwkuTyfV3+1pOZxE3DuwSvYiyXN7
	 zd6V1usF21Xog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B2CD0EE00
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176409377361.27518.16309264690593802889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3af7799790958dcd0e938943edea8c1a570299876b9d41c7e90b4c497c33ec
Date: Tue, 25 Nov 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764093773
