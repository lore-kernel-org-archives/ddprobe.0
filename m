Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504AF3314B7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784231314; cv=none; b=IcM3xd10VBvCXpZOltjdilOQc3vnMqgfvriN2Eubx8RFjnhtNVl9O8KQKzdrnhycTlNBpxtUM+EjK7boASCx6XsJ8OCRA3Lon/Aqc6RiaQM3uBnrbQqmiHJg4AzVgFNOggLPSfwYFpWP5pOewrd+htUHOi5lt9LswZugU5kyhGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784231314; c=relaxed/simple;
	bh=sFuFWy7J2cCaT45eJPxnAeuAdaliLqD7QS6a+s84TH8=;
	h=To:Subject:From:Message-Id:Date; b=GJmV9fsM6dJV3++p4HesDXCOCurVO8KrHvDxmYdTo6t4r2o4OabtSJsVuAv0wGjBdahnwJd/4AI+FOfNTiRHxjtWhK86harqCmjrL+I5hwYBxKOOCX6hy09riDdIQgYlVr6B8Ypa9YCfOk5v8wf+LCw0Z8onRKHOhzyV0uyGHCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hU71GcZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hU71GcZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A70C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784231313;
	bh=sFuFWy7J2cCaT45eJPxnAeuAdaliLqD7QS6a+s84TH8=;
	h=To:Subject:From:Date:From;
	b=hU71GcZFbjdrrB0qNmzuPwfqQ0vp82hM365lQFPhvvObbFom4LcXblTb44u+6ywHb
	 QmbRwF4rFbMZ8HvwIvo3dGTmGPpdh/WlwGf6sJzgkKGysYCAN4rrTO/ou8eD5QbRWH
	 SUjVKZ4gIIdhWiZWDdaL2xPoVfyv/Ze3wZ4/Z+CUM9GnOub5+bMnAhLtd1ehEzJSNP
	 U5RIyALQB7q+/kzyICWO+HRJGAjKEGxErYBkq2/ezZtBN7YXwW08Ngc5b6Tngtwwks
	 5QKlk5yufPy4ixeVlohEY25ZZ+kpxL8H0v7a7tarIQXXaLUHGRGnYdf3SRXsdzIqQs
	 iLArr5Rhdk9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A820DC44514
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423131368.2143.3162439534990057494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68bd000eac94034787c0065853046055f878fb8078ddeb1a02a6f445ef311198
Date: Thu, 16 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784231313
