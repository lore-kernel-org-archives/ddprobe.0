Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B45F175A7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784429314; cv=none; b=Oh9IrWbDAcrWPKhD0jqPwfY5+31mlvQdpPshkE29DCbcUUzpRKT7d53xuDMdQ97K9/jcl5FPIiE87nOlGUbUfnvLWmUpGnH5oQSFLvxMFmSKmsrOAWEQj2NFQPu7L+bXPRKOJVj5DwlTMwFfr22tbYlGb0Jn5ZNpEZSGCwNDb0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784429314; c=relaxed/simple;
	bh=N0vFxLttURXZGJLNATlr5eN3IIZKD2cl8c5MoxXlcwE=;
	h=To:Subject:From:Message-Id:Date; b=kFM3VZjHjpT63WZMfRVppRe4uWiSuD2W03UVRD0jVgTf1wWlTrHgNL4+0yINDijP6NfKhvNWJnRLEL2zDX5EKuD6R5L9Hy6UbIJlh/gnRjYcTddmHppnN2jQN/tC/2LHLAS/DHBTYK3AkbH+vbgtTkeXcVb1+ylOWyVwqjpXops=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3Xvef9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3Xvef9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79C8C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784429313;
	bh=N0vFxLttURXZGJLNATlr5eN3IIZKD2cl8c5MoxXlcwE=;
	h=To:Subject:From:Date:From;
	b=k3Xvef9DgR+k/SVQW3wsvk9ba7gOpCsDBzpZEtWPpvzHrExPfZmH1xXDQXbT4PBdE
	 Qw4cLu0NOlt8kNmLUloixoLbeIEpZBHklgt6V0BDw3tAgMXwNUasLsdqsYj8249QV0
	 BBUfDAhRVjAJZT6y0kPGu3HltuEe8Zoq8K1eanD9s3iFKIBYk27zQRXYX1P10AFmmX
	 snqkc0jLpNn8BABJNbq01gyNBEQSapYAQrlIgpwq9E1xhcZXmYsTS+iBc+XZtlCxpt
	 0gGv+G5fw6DbS5xk4HK93onCPAp2ZUyxOUUfPwd9vCgeS75oCRHW37NEz9dGhBN5ih
	 eNi0TCfRQbXZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D1C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442931370.5245.12804749969487568674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200ad11d1f14e14ddb83f07850be015a22f33f8e09645c5976882baa38c2cd9c
Date: Sun, 19 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784429313
