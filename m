Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418CD1A6806
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783884514; cv=none; b=VDjr6er+JEyqWu9jZrBr6Z5a6CWTh9PlPQkVXRPbZnN89aMTILXqIbH1PKSJ8B8Kbsahn5+XEUJm5bKy1chDZmRt9yXx4/fUltt/uotD+aSpyHUOGJIr3Y10Y5Fn4ONgCmCAChWRD0Jdx6FB/RIv9lMPH4gMCgdlPxmBWvA92XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783884514; c=relaxed/simple;
	bh=ULxXBZ3mEGwQakE9W1cELzWVh2yi8ZtWoAKGWCPjN5M=;
	h=To:Subject:From:Message-Id:Date; b=LvYgEB09yY5ulzTD9WX1YQgVq+uZORRMUf3apek7juSzTn0hofldd+vqxG7QUM267oo16F/ZpGeU2WZaJGLr7LtWqO/AXOmrme8H3vQIufk5EC7f8ovdi75+aoquLXguHQ5T9i+4hXEN6154k4HJ4/6RzOSvE5kR95ADg2l3UxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjEWMXLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjEWMXLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE36C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783884513;
	bh=ULxXBZ3mEGwQakE9W1cELzWVh2yi8ZtWoAKGWCPjN5M=;
	h=To:Subject:From:Date:From;
	b=sjEWMXLAP8xX2aXlYaCjoJEvwpgccYiyb5SMv2RR6XrcyrF17w7xifKc0enqVXE/h
	 Q8iyCOLfaQN1soFuVa8pdAqffdoMNUbV2lWSUMbdncJaw1TjKJAUzPBrIso8D+1Qd6
	 NL7IYE7REtkqLijUipZ6MsnZlynSub3yDs6861+Zszz2Bvqrxr6QHHsqLm/TfSCoRd
	 au7UviIuuiHk62BxoNAR91j54BJtUonol/dMqSNgLnrbQjdCXM6QiD3XP7DYHUl6vs
	 3AYfmXaaVtjFjdfEJaTao/dkA5Jg/HYsP4GvFTOnx3WteR1Ln66wK4DzkvrxA0/HUP
	 NrX6UEnLxm8kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB425C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388451368.7776.14303095403378275236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd88331f55513b0e65a7222eda1f4de1d6af9422db338f8b105bf7d81a5ea5f
Date: Sun, 12 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783884513
