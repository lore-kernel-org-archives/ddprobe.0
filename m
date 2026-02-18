Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221BE1DF73C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771397694; cv=none; b=iQpxnkyOF738TWd7Ly3HCp/6MYPAz4CgjjpNx0X4bosvUwV9NmoBfelR0F2IMl/olyjfP0UMho/PjeyFG7TvuknzkULGd4oHzN3SFj8MPLMSeoop7y8RAUga7FnAl0/h97RmOFAsYA9CaZRJ1gAWjfpmI7OV/8FB+qQ1QVrLPPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771397694; c=relaxed/simple;
	bh=hGjmXZbqhAogdtyoCZ5A/FeIXm7V847baRisuUl7olM=;
	h=To:Subject:From:Message-Id:Date; b=ZmtC7fWrAj+ldbO+wtbR3QRKrObeoWWiw7guK6Sq+Mf/eGrsKvXzyHzoPCuyxsqiZgOtmJouD0ZCl8mD+xlBpNIRuM69jcQ0cEIgfbqkkLIEXYFDViT0HMzKGYCqeAiXU9oy2feJdSdGSnAylivpSI41MY/CI9Rz2+R13CC7lZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJO4VYpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJO4VYpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2810C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771397693;
	bh=hGjmXZbqhAogdtyoCZ5A/FeIXm7V847baRisuUl7olM=;
	h=To:Subject:From:Date:From;
	b=MJO4VYprR3a2/3MeraerLxrthrzrrjFllP6AsQZbYCLmWdzwg/2p/xS4EOXdGkOvD
	 r1jtHbbdL+lSBYsmI1VwGcE/wFYe6rO+WVgJphfRryYJ27d3LAjSjgtx3ukJMarTet
	 d27FNfWP0+PSV91ur85cksIKmnpqhqvNH74kCKpVdi8mbwrT5lWlipxT9vgz7mhYQq
	 afKHlnRUnHoWbMK7etg5hZjp5moGQrS2duW9lSCJ0gCWyQai2CFTQ/mlD5+PnQ9J7N
	 +Z/+7tkOZFN+U6L0WnONPVYaQUsqKrSaIuldSI5/O5eGQgR5dWOKUjEqFn7U+Fbxp6
	 kClXRzjhTVkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2DE9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139769358.27620.909539907926315812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b3ac56b44fa9bd457409ea15ea001c0406488c1fb9dd8c17e2c59fd3e8f55e
Date: Wed, 18 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771397693
