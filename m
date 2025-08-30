Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF0D1A9FBC
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756563594; cv=none; b=FRiK3fT933B6V7/yhmDHMJRyg+UleZi1vtOdjEJbk1KzvNnGIBSpyk7ODif7vvcu8fOVCNFeS6YOPxO7pwoMDDmekrxsffNLwLltto1dfNnkWE6rhRIttMWtcNM1HfDuMLPShykH7qtDCGVU27tWdWw2K4Pc9/bp37b2WWkgtHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756563594; c=relaxed/simple;
	bh=DLpyAjWPQGq1sVZspQaRG3fvNktsz3ucIdd3DjDzTBo=;
	h=To:Subject:From:Message-Id:Date; b=haCx2R7FNCWhyV7oF6DpH2Z5XwFHijRJ1GQxw0QGg36Oz7WvzJan91KYF+vwqHUuzx3FXTxtfk8tOr3GCZtQzuK1RL1777PeQ+GM16zdZAkqx7vd7qg6lK+q/Ag1zKDJbdznxvzlm7Dm4WAAca5CwjVwE/TLJucaMI88Ce5G+NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUNHL+KT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUNHL+KT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0618C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756563593;
	bh=DLpyAjWPQGq1sVZspQaRG3fvNktsz3ucIdd3DjDzTBo=;
	h=To:Subject:From:Date:From;
	b=fUNHL+KTSUJ9z/n/VX5rAWKs+Vpd4rfte93/PQrVI4LD8D18CHhdONrDVj8PRs7PM
	 +3nC1KDLqTyTJblVt1eD4Og3UbfPAEOgL5xadrdPqpBbGoDjVUtDMTcIXoDmSdbuAo
	 eC7gYyFZYC44Ld6Boih2Lsu44z9akUknrpEfkFjL7IC20ntiYLOmG/s9XW2cRfDddz
	 sMtDbpxtgzUoq6ygpzJRIx9pah1uGnhXbHzyFuYNSbLAMFjwhMpUGLd7u6cAqY9mdY
	 C2TRnIYdkBR+qi7zn331U7QW9WgQ6ZmrLic+Rv75HC7MIGMGKpnT5DE/uFvLu2kLRb
	 wS61DwEg46A0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BDCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656359357.1049.11971934231796106967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8605cac3915257de8b0c80f63dcf82c3c49d1abd61ed7051d1a655b68baa32
Date: Sat, 30 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756563593
