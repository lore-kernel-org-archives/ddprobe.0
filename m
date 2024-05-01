Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0571BDCF
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714542743; cv=none; b=PaO706tmno7hoNRtgpLu8v+vhXPK9I75VlDInnvGXYE3V/4Jae0xoi0sXP33HJY4yCm+V1RCn7e1UcIdW4HegnaqmwDzVgsyeX2jteS3nea76UkC6+wqwVsEhzNbYpTuqaLNBUeLeuBunDAVWeSnlE87gMQTLRQCCjPSDcIFgYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714542743; c=relaxed/simple;
	bh=C9l4aHtMLnDaHQQ5VnI+iY/CDx1uqNNzNvFRkB274Fo=;
	h=To:Subject:From:Message-Id:Date; b=qGt796eacLY24AJ2brS2XR3iEkiMayh9AVluo0j7VyTaMCBy2a46HipJP1dIwm9oMFWIVL3BjwkW1khm7xBGJTn5Q9+aAXmDMywMEe/RKED2r4drg6w1KyieOGQcHkLoZ6oYYopAMbrlvevLTa4tUm9kzBbgE8Dia5zmn9SRhi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsmahjQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsmahjQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34B6C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714542742;
	bh=C9l4aHtMLnDaHQQ5VnI+iY/CDx1uqNNzNvFRkB274Fo=;
	h=To:Subject:From:Date:From;
	b=LsmahjQdWmFVEDBJmwUIFqRk1aJHwyg/TGToBut0WmIznQtTtqDPMELV4j1a45X3i
	 zLlwrEAfOI+tcRQyZlj/YTxLPvEaZGeXicTyTrsM+9ukOYtRgbuGskZiGk6oXHA9LD
	 0t0n4mEBV2xK0etK4uEBEN6slSJ8kpxUfIEyT8V8hkPyU7p4eZcXBvJPm8wVP046yp
	 TJ2swnG6C0FralcnZ/YhWxgBWQdYLd08EobGJaYKzDwz3TACQNCYDHn/vnzX0iXAnN
	 KKvzf8AdBbtF6pab9+6DK+Hzsyl5HivWX+VYlhE3JFi6tSJ8DI5roavkRFxtYh62nd
	 mv+HQhwWC9Ypw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16B6C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171454274275.17643.834255688962891248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd0ff72e48fddfb4dd558380e41211ad5a077e55a8ed78f03777daf00776394
Date: Wed, 01 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714542742
