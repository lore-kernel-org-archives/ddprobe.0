Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D7D22B644
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729808754; cv=none; b=NTCHokGk4dguUYYCi6wO4yAg+tbw6DhvgJ7o7cDBh0BunuUQioVUNO/duHQpWofwdHQpnK31oYwT/xUKeOihDA/FdY892AaIP2oBQ6DNK6Ys3Z+4BK6ikiP3LMQO731R6UD5hhieeDgIeWsPuyYszjXqk+Bn/o+Jkozk0ge/Ft4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729808754; c=relaxed/simple;
	bh=uOYsjj76r/+HLAFors2A3hobv1T9iR8k6ZQUDxkt25Y=;
	h=To:Subject:From:Message-Id:Date; b=ocZPAZ9b9bAjjTA7XE3/0W5PNcK5SrIWP2mEcc+nu3ItklA1AhH/Yr7fbBWmXLaw5+aKvhr0RdaEkPEgd30tMNkmooKLG0/GH4yPPbI2v7Gw9FnAJe1/M+TLtOfjRCWiXEEtzKZ1s3ID9OaxdM29QpGKNhEIhQkaRARdP8Q7f6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZjOonJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZjOonJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1EDC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729808753;
	bh=uOYsjj76r/+HLAFors2A3hobv1T9iR8k6ZQUDxkt25Y=;
	h=To:Subject:From:Date:From;
	b=NZjOonJJ4tm/zGmdamZhzfb1mrS/tuFbw8f90tb4q6wVA16lAkeRBP6fbL1JihAjL
	 T8+jLVn0cgNFkoWjPc+HyNFkhC0J8dZyjdSSSqpHSRH0kEnqSPA0AqyPgPKwrgzDMD
	 LCveTTWW3JYn0rXreevKXIAl2UfmYoVnTgHAkEo+R1W/sti0SD9zL81LWIiW/m8EuG
	 sMSzBO57E/tq1qviXx6WpAVXG36PV+bSg6iAjbfXVJBdfIsfVV+gYOMH9eLhCR+jeV
	 NGseBr9HIxu8vHBQVO1fi/l6ERCulTYJAyDBCw3E6/vyBNsuGndvpsNHFcj36mRp0j
	 2iCiM6daGXRqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97635D1038D
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172980875358.11712.851349389233663215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37aff05678865edda694a15f2c175d155739a481c6c6a9ba6552735ead9955f0
Date: Thu, 24 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729808753
