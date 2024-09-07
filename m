Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B56DEEAE
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725692754; cv=none; b=jUhgzLly6kyxEJMhSrdvqWhg3SU1Z0ZycPKc4iaCAc+jy5FzVArBoN2MCA3eqmgjAXQw+D5yOCPPY2FBw08OzDYvGQmwzeMb+ORbfK3gdEMIwTT35Q78i80idyOqPph8+1Vt4wLOwyDDZiQL/6C61IdBCyGNY6iRBPiOBMlfvUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725692754; c=relaxed/simple;
	bh=mgTqIX1ALT1dtUNpzdWgI3DXAeBBcc6pIJGhVoh/zbQ=;
	h=To:Subject:From:Message-Id:Date; b=HVDZOG/Cgfjoz3jAaXRSrainIBGu1XDDOMIQKJRx4rM2GD0K/YloRYMspyQcCOIgjrkgj7a+j+w0WXWj1k0QRToovFv78ewca3KrMjtMetKfD8M0fCKpOlBogR95w5j3Oq3lCyKWrI6Z0eCqrgXLI2qKaJn3t7VgXB68NBRB73w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9mFMNON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9mFMNON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC77C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725692753;
	bh=mgTqIX1ALT1dtUNpzdWgI3DXAeBBcc6pIJGhVoh/zbQ=;
	h=To:Subject:From:Date:From;
	b=D9mFMNONz4OioR6Y3LO+27bUOQPL4JiE0pnNncr9CuBs1DIcw7F8D9czAw8KrI9NU
	 9ZdCwNAA/GNp95J6YTU6gXzk6MSSFba6gCWQKVRXr2bM3xs1XpIIG/HJAdZpOChuYx
	 ER/mhaRJ35fx1mX+5PvWYQfyu6bPA6q1yxfFghp6nHqp/XEYKH8kZHjLzfL0l504Er
	 5EbrMIGy2RZWna+tS6hKyMrPDsV3RGZvoHJ1dsSdcnxH4K6wKhXgoC7k0e+CJVO1Ad
	 psfKy7Ps3XRdOuZSdMOK4Qz3FYlXJxFSVDMxIq6BFmU1vpCdb92K4YReMag2MZOx10
	 MWjk0P0VT0Zsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95544E6FE4D
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172569275360.9825.8269392004319092315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c60207c564e9e38a0195790147a69c465350ce0ff4df08e53a338e6114c79c4
Date: Sat, 07 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725692753
