Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E93224CF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717278923; cv=none; b=GtwQTmoH6c7K4l07Ue7Jbf9xk8dHDgxBNUFcpxHH/gzQ8PVCto2MV3fBhvdTjeHwTrNoOmKxTbqY6I0Lbv0vhF33R0RsdXi1ImAhuLkSe9jSeZVghdssEML51CV75IvJmgHVPx+lcWRnXf/OmwAJ7MXfgzvYyzLRalgLkum8/64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717278923; c=relaxed/simple;
	bh=xmyG1fLXk+pB6H5RGxoWHw3egKMT08m+4currorTwjM=;
	h=To:Subject:From:Message-Id:Date; b=SBJaDkeMUF26H/qYezvqsXvqMp5qxeMVcNb/ncRlapWzMQg+1L7AJFA467aBEuwOmiEe1MSdxrC8xMbj6PZe88+0WCZGRoI/abiIbuUl8VsGBeCHBpFzQYf+9InJ8guwyyZFOqMvkkfjpxRs9OU6DRlqyBsOHOwpjd47XR5LfYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbmNujU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbmNujU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB051C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717278922;
	bh=xmyG1fLXk+pB6H5RGxoWHw3egKMT08m+4currorTwjM=;
	h=To:Subject:From:Date:From;
	b=BbmNujU6YQo8OlVTCeF2Fj27VYwuaHyF/t47uY2OyQdZcXr3W0RBUOn+JPAE5CxDZ
	 YwJbWca+4P1veFdObyPiganJsN0kxECJo+KbUJCe2Ac3P7zOWuhfHGdgDf394jPMcQ
	 ysA6HVC/2XuwBio8JOoQ4lMnOFHllK40cn2m2aKw/uQtsbb8USkgd546V292P96UJ1
	 O8kQWvRq0JNe+Jst5p7wWUc4dam5GfHLEudIODSySYSslW0nVfUiID4bp+n/ivpDnq
	 0udGM2woeqiabWcW+b/COPJk8iCwoCX/kCaxxKzkLDTjRlN9VrYx6DyMmuxKGs814D
	 Okhmtb5GTJi+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2161C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727892277.24796.4692599500863852251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1076cf15cf62a94edc005b40b156924957558add332f81bbb79b3622273fa22
Date: Sat, 01 Jun 2024 21:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717278922
