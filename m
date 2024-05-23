Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6B7282E2
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 03:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716435803; cv=none; b=drz6YzTzcGSOD9jbe5doLFdrektHeOR95dWzpDYFpkVoPbi+Etw8TN7U+MlVArtvmrkrBeCvPX9R/IBZEJLtvDwuJEdh0zkZRIyOpOjMrC7Ny9jslFemPEJWO4HDHGYCWoPfo325AVTbI/ThN9THa9bCtOlS5UPcsl8hqK1O62s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716435803; c=relaxed/simple;
	bh=MfPcUpNnHWJ4xp2ahQoda+BpDOjRYzKCAa5moF4r+Yg=;
	h=To:Subject:From:Message-Id:Date; b=oxrEmBpyop8rC+Gz9t0jzA+dzL3zc2rbUCqZi6JFLqEx5nyA5HO5iAc2stk5SINJe3ptsHVVEJsb/AVcxWprJmG5TefGs0F0dTFJT59hQF3vFX8XDDRCHQHZQ45lRa9iPuX7UDk7fxBGKBAyuo9PAkbfAb6LLWZgi2vc/5Q+wF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPP+syf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPP+syf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E1AC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 03:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716435802;
	bh=MfPcUpNnHWJ4xp2ahQoda+BpDOjRYzKCAa5moF4r+Yg=;
	h=To:Subject:From:Date:From;
	b=QPP+syf/13z5exaweECRjsefMEpA9gj7VExMFrehH44G6HiH0po0H5/+E+ikIX1cJ
	 KGe/vW9LwBHdZ7OSVVHS33063Emem8F0WoqRlwYeirDtmUh77PMfXCg/ZUJYzn+CG3
	 6zFZWlNMw8iZ92inelEM65STmZlyH4F6NAsQ05ZzSr0WSDLyF62nskztBr0Co970BA
	 tf6rNVRBgI966INLgf6ztdCRl4Fo71hk7kxeAOB2H4mvpLLpUgota9jSo8zjLQD2FA
	 KL4kNSSWVIVxSob4pbnm2ZhgRo90SQmUKxctP6TkYdcR8bZN7nXU5ORurCxjonQ7A4
	 kp+jborFCwe3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA58C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 03:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171643580275.8283.17521943154429294910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ce48c7d8bffcac1845bfa72bd581449a7bfce9e616189b56afd0f3593a914e
Date: Thu, 23 May 2024 03:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716435802
