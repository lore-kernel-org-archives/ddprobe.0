Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225062F8E82
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778423434; cv=none; b=RUfP+vUIWcKOWK/m/AtdLqxhO+05TzU8SYITWgF9H/QCmlOvL81Kq8btTIDl2zdkB5XINBg7MdYlabMcipYDzoP6FS+e3PxyrjuWXX0ODRkYCGWpB1rn40zsEsxYPEhc/nBh/rda9tf0Oelvx2c6dY8kDVP7Sk3bFf3VHK35AEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778423434; c=relaxed/simple;
	bh=Ng+MpXllFahdn5hKInSkFtQuQz/IzZTn45MOIBl/60A=;
	h=To:Subject:From:Message-Id:Date; b=iVjzQ9+SaiDnjCGD/UFz77jANyoR1BM94nbp80WQnMioEGk9N0e2j+ahzrV4UUHGbiaYYI4jZL1kYp8zCnMbglxhmiRKCY0lojuOCaEhgRiDsX9J5r0XnOn5dboKTWjFCd30JBBgVtiduaad1MitSIo2cmUkQ+xL0bN/bhq2rrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTgnwfBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTgnwfBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE52AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778423433;
	bh=Ng+MpXllFahdn5hKInSkFtQuQz/IzZTn45MOIBl/60A=;
	h=To:Subject:From:Date:From;
	b=pTgnwfBIzwMgUcYVqso2X12OxSzOlGzuLyShiSccBWhbCRpS1aAbvvG+12981EVDd
	 8Q0/j83MVIrkFienAyxX14VlNJCKPwv+aMO/oVHevmEm/v74dCymjMlXp+dGcMneKg
	 aTln49u0ktbBYUI6iPxG8l8G2pt8YOEcQvCkQP05m3dxL+WbOxxlUPdtH6YnrkmQDv
	 nqIX/xqrm7/keLAWbI23t0P+YCleWKiBADwhyYgm7eFVXa0ck5dCTBNcBRy0/mtG3G
	 tKTvhP2KowajstAG0k61Um+KkBgIO6n2z9mHb3knAmqOkK6TG4FadMiXFFtMNfoodf
	 37t0be80EfByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD995CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842343370.23127.18003775498655192094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3b0e9e78e7deb1046d23ca74e35cf6055323f8e370e1eb00176c2fe19fdafa
Date: Sun, 10 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778423433
