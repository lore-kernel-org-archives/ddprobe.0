Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B56453A59
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791498634; cv=none; b=dizHWUjFyWMiR46q53YV2JAVJQe1kqG+BMN0iMODx+bnjuiD/J7gW3QxRQG9D70FgXwHdIEl8nMARUmc5sHt+gQQG5L9h3Hv5hCIEXBBmobj9m1ny56fX7OAKN4+cyyeC1m2L22PJm2iOD/N6orE7rXinFNl1xAj1qMpHIXJrrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791498634; c=relaxed/simple;
	bh=ow1CNR2sktSGsH9aoHuW87vifJvTqn3KqBsH/5PzydU=;
	h=To:Subject:From:Message-Id:Date; b=OGwB61plfou68NGyVgz16e+oxPtFWCAael3ZfO1Bpfa/r25EwcTHb/1YX/R8Of1ZVMDzj297JMREhVafYZ1GJMZk4lI68aGOBMA4SA8GJIeAow7thmmgnhc00zc8YecO3sgG1SQE8sb+sxSBJcUs5PQM0AYqK6/wRfeZTKec5RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1jSsQ3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1jSsQ3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4F1C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791498633;
	bh=ow1CNR2sktSGsH9aoHuW87vifJvTqn3KqBsH/5PzydU=;
	h=To:Subject:From:Date:From;
	b=r1jSsQ3QJkcH5pyaKhuhH3yb/Xpa6aw3Q+Y9+/qIzBTxPm4r4R5eegt52TJIbteaB
	 3wvaMp/z4g9jN0myCrkWwVp6SjAJbFDopof4rhW+rjEX+i8P2PLdC+RpoG2XpU1hYg
	 ktJpgK+U8tZEtVuW0n2BwJK3v8QLyTPLhTZJh2o4GPnsR1Nv6HFH/9K6PIi5VEkELw
	 BeahU4J7qwXDV+hqi5N/3Fj9s2asbE9Hw9W1TCgWlEDYBdUZktkxaaP/E8PMm4zHcf
	 0dh3fFjgj1pGr5X5yvSRiW/GZ+eBdaxVkJLb+hPaa1IOIWecb2wLNTFE3Bc8wVFMMs
	 bRBK7Lwi8399A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A9CA6016
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149863368.16008.9260960234121274542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930444f529b1ab03cf89ee00f4fbb297acb821a716b5a8ae9db6c80cd4316e94
Date: Thu, 08 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791498633
