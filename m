Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E573338F20
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756499994; cv=none; b=uXFi/7POphImrXLXPWBEcE6snvY8YLb4PlUr0Y1N0ReEiWoq34HYZJ6pUF3WflJkcJeC71OFWlPZ+mAMOA7Ja68VoHK+kYUtjChF6JkuVgXkpOcEtVLY9xa6RHF6PlZXBptF6JFPPa5vZ3RM7wxUfyPxJqYc85XDZ9vNX6NREls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756499994; c=relaxed/simple;
	bh=H70v9/QEbNuiQ9DDQII2jxYNuK/dd5Vo3wF7ZMOkCvo=;
	h=To:Subject:From:Message-Id:Date; b=lTXIUSXWvIiq88HTBOhPSSRksO7xTkOp1tZhzlEo6hvR6jDq6g4Lg70DyUWcNrqHxHqX5PUhdzoWrZKV3DPjePRIO/tDVy19pdNf+L5bOkJTRUR+ZDnov/sFrgi6jCdc9NsOtuWj6dvhmN8OlQjhAxxjVAG46Qaa4maUcEsFiFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R77CaRhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R77CaRhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24BAC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756499993;
	bh=H70v9/QEbNuiQ9DDQII2jxYNuK/dd5Vo3wF7ZMOkCvo=;
	h=To:Subject:From:Date:From;
	b=R77CaRhXtQXHqUjnKMIwIcl3VxemlSg9ljbsbSLtfCIKFdg70Kp84hcCACl+hpI+R
	 yKJcCDn5/YxurXtey1aIpSi4RVE5vLoSRBVrBV9Nofg+9J5+JcbS0GF+0YouO5vJCR
	 zwswfqBn62PM0TGWSAjx7p4nctCzB3ygnhL2xALbrRx89AOKLpXUcxZMpnmLQwTh5+
	 9NSIHHOC3BjLAIPm6lBmjoXGkQvjTCx8dSUA0tAbGl+IYg37aSM26ZC6bgrqN/Pahd
	 YhQ9Fm4bS5s3q2ananLb2XaSaGmc8BZb2bII2OV0nD9+rvWmI1elsA67HwQ31UeGKh
	 z/q3sO5B+Es/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F498CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649999357.16480.4925371197948984504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bc8efda3848a958928a45616e769ba314e9fbf129bcecbb6eae7bb8a8cc2aa
Date: Fri, 29 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756499993
