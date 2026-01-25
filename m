Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F421D1F92E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769307834; cv=none; b=afMfWVj0JEJlpOroVwI9h806MAVUGKnrEES4g9ZO3RTR6hR3/klz7RnbghU+8xjwmUPqKuJydGfdLRp5FK+4idWgWsL7TUEAFnXzM9LZCedimTCOxd/nSPwza/RtOfBQiAnSxP9zk0mdbN2kmvHBvxEA1edTfhq0s5vQVWG32sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769307834; c=relaxed/simple;
	bh=L4IUUN0ksBB+lnmnlaH8cJIgnDRadIPI/v+5nAaetPo=;
	h=To:Subject:From:Message-Id:Date; b=Buynm15p3IKVulfYG3Yp6S31JWjculC42MBPPHk2ROYZ1wVDfHTAQH2U3lx9wvYalKR6oAY0TcBLDFrqQ2kXG+1igPqDCT21elbyBdELb1n3YlW1v3D05y1WVvwHOnYGVAu4EWiyDX8sL7vwmYDwS/HXzBrvQNFxoGuPKqbTiAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvw6RUBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvw6RUBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D88C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769307833;
	bh=L4IUUN0ksBB+lnmnlaH8cJIgnDRadIPI/v+5nAaetPo=;
	h=To:Subject:From:Date:From;
	b=kvw6RUBqclswfoDfvRLAPmANNaBuGzQuwNktR1+2cAJZHw3UiX+hcy29VLGfPSepR
	 R00/gw+Bi4buIEkt+H3xuapLd/jMZcdUYAPy14eMQjI/vDXKPONCBUsQh4n3DwP58W
	 ZD1fZ3lKI/4h4HszviLJKIhbIFQ5+Q10GA1aVAPeJ17GLgPRbOHeEsbusT5Rv/jKFP
	 66ms8PAf2MEYFpJTKFPeGw0iMGmFm4VY4DiekiyQ/yzQxI0ccjPLRK6Pjydyb7kNoB
	 SPNPlxJeHMTd1vvUo9ZVc5w7wcsJsUlDzPUoePoRULTF58A4kcoozguqaJJcMgWNm0
	 RsdVNZHw0exWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BFE63C81
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176930783358.17075.4916188171173431974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2da5a3d605fcf4e637b1b94ae2bc2e1f8b2b79b1d7f2af7c2ef7df343a2d088
Date: Sun, 25 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769307833
