Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F001A9F88
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771220694; cv=none; b=U6P04LIAW+EDcSRTRUPwUBoJJzSpbYo+ssDN0fCzxAJKExjojDwOvMcZOHh00Dl5k3TlqD3Oc084GI8mjyekbRjb05i6gwG+4ciEaXWY0oCyZ0kPv5XesAjbApZw3anxwC4xDMSUsEsmTvjIv5MqL/k/BJyqWy7Mecg7mIKbBHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771220694; c=relaxed/simple;
	bh=gVZi2GVSOu/3KQg2JvKGgFQaqfurGMShT1kXRInv0Q4=;
	h=To:Subject:From:Message-Id:Date; b=a1sqBMIgUgD5kT0VImVYFh6k0NTQox+nZokKK3A2zs1+7+d72ahCYfeukMkxpvjuCfhvqIxW8tuYvOiOG+OOFW9XCUSdUazkOdcpA6FdJHZRiqNmNn73JY0iEitFYHQRuBzgg+4JGzBYtjjQVJUIW75GMnhkG0QGjzmFQPKj9MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZSHDojP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZSHDojP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D78C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771220693;
	bh=gVZi2GVSOu/3KQg2JvKGgFQaqfurGMShT1kXRInv0Q4=;
	h=To:Subject:From:Date:From;
	b=LZSHDojPOeANEEviINzkdaKZlMOVc7RpEhAGAqHQCHNSTtcBv3Vhc2BfrN0Nu/jr3
	 DNWwdzuMGOLFgdkiyQuSNE+hwkioUUOoqv9OB3KkbAYyFjxnhSgp21e0cWRi/rVwVW
	 UD34/WT+RaYOVMXmp41HOTmn9l0iV1dICx2iYS+KbmsYvL/QtOj45SVi+dP6YGNi7U
	 yq6DZ2ppMVB0obDEOepfpySiRG8/RIGPeAlENaymfU+RL2YKqgSM0TSDmKjCzlUa2G
	 PUB/+BLneRpC7mvzzzusslGk8NzhubtzE0jlaAmsQ3r6kMxtFG4d4r3lyFPVWlmhGR
	 39F2HSGIIqFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6DCE63F2A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122069360.27998.3373299664548085118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d0546c388b062b4f25603b07a0739d1d67215b747f91218c706ab93cd5fd5e
Date: Mon, 16 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771220693
