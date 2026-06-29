Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418FB3655E0
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782730714; cv=none; b=PPj9HYqoIk/Lh885vRTptyf73Bi08b2skr6FyfRhe/qMYNyRvFrwjJS6C24lEtv74g7iRDz+8slghd4XLPNld9YH3gdfzxuRlm24vhAWTLzUYYk75pSnhxTIjVIhX/9Qp1GXXsPi0FVpPw09AWZXIzkR4dXz/rdCBanVNiFyzss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782730714; c=relaxed/simple;
	bh=gILHW+pc1wEjDYT/fWmdd8hYuygj6Y+8FltltvdohIw=;
	h=To:Subject:From:Message-Id:Date; b=oSIkBd3fsdr4YS1spiWodAsDkzAjVyitHkelnEntVQyIcHO3YzW5mBIi3mq10OmpiEmY+cr57eHjWiLmZXPRw0c4xUAR9xxqNhFq9VwekTkADpSl7Nzm1+rpGF8xs/Ktqi7k9e+/5m43VguHduJ/v5jBpWUFEwfpCrZFbJ1gar8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVGpUTBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVGpUTBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC82C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782730713;
	bh=gILHW+pc1wEjDYT/fWmdd8hYuygj6Y+8FltltvdohIw=;
	h=To:Subject:From:Date:From;
	b=TVGpUTBaKu1flnvv2sJ2HPXVxaZUCLMWGOZ4c6QsyGHJyPmUUF8S3JjavB1THT4d6
	 AQTRvTECTW+6CJcqiA9uKNBHpwmTJJIqhN1Ndyz7xS7O1UbyXXxCiN5/nXZc6pJwRe
	 /L5zIdWGp1ICVTZO1i0uXVRmmv4RgTI9WbfmOjl7Bd+yVE05CWlbNtTkB4TuH5gfGd
	 ExMfwOcOvXmQcAaeoLgaHAfdTki35zbl4TljxQ8u7GeuvA/yUcKdZA4QpOwpKJ4DaN
	 NghGxLTNJowK4AK8pyV+L91H0EiJXbZ5tO+nDlvgs0WvaQkQeJ7LallV4NnzKlcne9
	 5M0WGAat6JCCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA41C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273071370.29245.887142277892887457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe30e10bcbc556a532e318edd8c89916eed7d26a33164962875efbc642ec2f70
Date: Mon, 29 Jun 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782730713
