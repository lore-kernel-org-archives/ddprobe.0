Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EAFC3D3CE4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777035454; cv=none; b=H7pRVlfUizw854M9IvilDwoZDjflPOyovkoY9JrKWwkHKbMoMCY20xu+P/Y/LtB21oEe56iOlnu+wmL/7ZL9iAPqajVBCjI0gGYwGCd5b+3zalshv4Bi1QTxSzFo0DwdiHKQfUBS/PWUHHFB/0qLQ8T0BmOJ7WbWF2CD2JWKhMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777035454; c=relaxed/simple;
	bh=YONRfx/JJIGAiams2QlXKQNbSgRlS4s881IBTMIAUdE=;
	h=To:Subject:From:Message-Id:Date; b=exJQYUZNs2wJDRFPWWgRCOzLyRCSKBC3jgTEHbrq8z8rgQIE9rUkif3ffsXMRBscGTqpF2LwN1vUCUUF+LySLqZTyZ23hczEIOCnrE9Y4owaKlPJZKoHkbQjrrpXTdjjm7qyl1L1ze3dqSF4xHl9BTI+bkYCdOifaMAAsjAzkC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lbvfok4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lbvfok4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8079C2BCB2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777035453;
	bh=YONRfx/JJIGAiams2QlXKQNbSgRlS4s881IBTMIAUdE=;
	h=To:Subject:From:Date:From;
	b=Lbvfok4y8hx6u8SJ87SVrub6iiBOM/fd4ttiIZmyex9bFjS70FSxpxIjabPUnlrpL
	 nGpw8eXli1hrPwBHRTOAF6JlV9GtfeV8tmj5/l2pg6mZGLChl8EatWHc5OcuvVRwEE
	 nwALVccqVTjhJylAk5sCZR+Tgk6TvpqIzuodzBXXLeIzMlg8yPCI5zRmGwD707GlL6
	 JeUwV/0GyWetKKBjL3E5OByTmWpU1tpfiK8sdaZ40YsJx3xJCSajEJZr2hSD/TK+4O
	 varcyRoQ91VrGFje3//7QigviJmq3PoLaTcJNNhnl2rjm6KfdOIOf1rEonR2Wp+JyG
	 URO9LyiS9hXkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C15FED3C3
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703545368.4408.7641821332749337103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a07ac42f48da3ae95be23f91e790282f8e370d964062653d66298b12ceb19f5
Date: Fri, 24 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777035453
