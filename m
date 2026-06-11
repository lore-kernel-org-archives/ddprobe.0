Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F3A383993
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781220994; cv=none; b=ql+jflfcSu0iTFjObWAmaeN7tRbG34a6X/nV5NfD5VRbWSEonvxpdxmeY1lLluREBHMWj7hPIhTjqlVM7fTSKIDzizvlJeM+iMYDYSIh27Jr4cjOSAANweBT1Y8lYtthW6t0ZC6Se6PXihKXAiRxo7VIRiOgDI2FlIQQ/ong9jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781220994; c=relaxed/simple;
	bh=ThMcG1Mpb8sXVNKP568RBdcDKFgfIp+uc2GoO80jvlk=;
	h=To:Subject:From:Message-Id:Date; b=Kjrp35owMjpuk+fH1+Efd++xEoIUozPy/Pj0Ex+QD7b+2/et+Os/m75o83UuqdQBWVR31MYSRSyD5/BsK/5Py+WEUcf2EjAnXbESxlm0gQFENzXURF6lW6fuDPvruRMAOdSZdk7xYsQxV69oS+bBmhcYCCgEuCqRzPFXQakc9b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCI9BE+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCI9BE+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8BAC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781220993;
	bh=ThMcG1Mpb8sXVNKP568RBdcDKFgfIp+uc2GoO80jvlk=;
	h=To:Subject:From:Date:From;
	b=gCI9BE+j21cJspjmPNsPvTcsmmnkpcWhDyGfi2svfJYUNXeOHKTFOrGyFtQTWfHse
	 iNyTEzadqL84BFuEL3YLc2MylH3lyVuqPRc19wUygYKO9+WVPyk/g4OOclbi6oeCLF
	 sJakKTC8/xyaQkg9ePgqi2E149Awaz6WD0kNMSLd3dKjifV46xKfeeAj+9TOykvXnV
	 CWK/tT+6wPZ/jQpPiz3xocfsS5mREpD7ltVfi/4HC30QvYorGNWzpTC5wFwtRW21LB
	 ohDcPpLPy8GxT/g6fjEAH+YreA7rq0ewXDYLI+wvqUXdwcHNcgGthO967VWkR2gYa/
	 BbVIbhPfL9X8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7A8CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122099369.12976.15256868134205522967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5c684f887ed118987f25387ee160c80d8bd67f8f36ea8e6736d76ad5ea39f3
Date: Thu, 11 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781220993
