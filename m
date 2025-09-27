Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C200282E1
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758932394; cv=none; b=CYy4FUDp51Ibch4X63rr66xo70qKVfOzo83ZgdPsYttvJzBVr/tUvRobH5zyYl3jUIoagizzsLHTWhnjtvTT4jMkU8gK6nVsaoXJTQbhzjutsGL89g3CK33jn0TNtUqh3DZrp4NNIAoSBIhXtrr3SqqOMsL4+9VnCoY7rPWv3z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758932394; c=relaxed/simple;
	bh=cZy0H6/dpLBcOG1Us/PxpNVcXd2fJGD3+u8pmoE2ejo=;
	h=To:Subject:From:Message-Id:Date; b=nJCtc6YhXv7VNIuku+s+PdEZrY6jJs7XYI3Plr8tEaIYtJvCEX6O4pCkVDBKX1JK4mFa0mfq1sSXYlXCIdpPpL7byrQmrGIgyggqKaEsl/T6ae/AdGzlatZVBg+TQj9Mr3oEGnX5Mrz3H70JVe521W2lPZtTIgrWE+s/QyO/N7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pue4mDJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pue4mDJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0E7C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758932393;
	bh=cZy0H6/dpLBcOG1Us/PxpNVcXd2fJGD3+u8pmoE2ejo=;
	h=To:Subject:From:Date:From;
	b=pue4mDJYppkFQW1oINi+wSJe8yLky8yvl9un9Z82TSjgkZeCLQKP0xAQ+SHtFNC+I
	 2VPMzdG5k3ehqsIWRlUoRlUGaCZfstRNQ+lo0bzBrHRf/3mJKZmyJaTjGKb/wfxkau
	 P63eta4msSYfanr+T7ty21hIv6PW3J/tnS0LxpTkDYWEuwpYPyPaVQjENAaclAIUYP
	 PdTOa9KA54v1WPNMxLQNp9OA5FuJoTEbBOo5SP2WXg8TdIXa67mKRPmoI+LNdqrJpH
	 aZv+WFhwdfmr50oTl7adfv45a3wov19alw9aT4sA09aySp4jVi9yImS0DOHim8UmE0
	 b9JmTxnPXp9wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE9DCAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893239360.22169.15308343291952859990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88391322046f9e83a5f7f09b5ae84107a28f74df101da946a90c0a1fa0c56d9
Date: Sat, 27 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758932393
