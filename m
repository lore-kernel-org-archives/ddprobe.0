Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A08E33EC
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778380834; cv=none; b=WSD+l9jsg3RR40p24aDCarocmRqyzZrToZ8/EH2smXU8MLyH+YIx97UrE3ijPkeZbSbFUZRgI/VFn8Pkjw6DHRMPNqrmdtav6GMua26H2N+ywJdBbaXO5J9QhOyIR66gH92/9D67Vgqjidccj+uOp3jw7cVw3kCmhMwvzvQZEjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778380834; c=relaxed/simple;
	bh=IuPge5r/Fi97zTOOMergiwgTmOVE+/HpyQ0EXLH+PwU=;
	h=To:Subject:From:Message-Id:Date; b=YozcViDXBYS/duybZHIhILFNxAWD1DdAg5mIMWas9zodC3SfsUwCjkQr+VPDyAWn9kqn9bt8s1580e2qHVHyJ+AvgnzLRd4osRiA4KWirkCWBOjS2L9d49VJ1xo/7xPw+NJeLBzcfiMFnytXTO4i9Ggo72lq9RfpsJFF1OtAGRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Su3h++O5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Su3h++O5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2237C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778380833;
	bh=IuPge5r/Fi97zTOOMergiwgTmOVE+/HpyQ0EXLH+PwU=;
	h=To:Subject:From:Date:From;
	b=Su3h++O5CoXIrTWntcaLHPOyR9zFHphRYMHS48T0WiAfeJNAHaZXFUP8jkgZVqBgP
	 CA9N4MrMJAeANKlJLiZTSB4lF8fAOzmy3kLjYjQdCx6k2JCYKJA3cNTRmmj2jj15+I
	 211vd+U1JeSx6I1AZVWBM//VEN24RsL7+splvNpSy3jeooi6KC8hFM1GclBzumNNVO
	 TaEh3cXvyF1TQvM6oq1GREagihM+9iOoSdXDN9oiF9AtupTYHFdABVQTYr1R/DBfQI
	 5B2I+vdmYesrtMfarp4nGZ9dAe9DkgZ3IgR8+JBZFgh6+JQtN3d59qR2b7rGYzBgTP
	 CSvuylBTyJBLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC56CD343F
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838083368.25316.4029008943592214588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94571626c91425b9c866ea8cd9e0aef69b4295104d4a3395928f746be9bce9c7
Date: Sun, 10 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778380833
