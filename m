Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A4F34B1B0
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774473294; cv=none; b=lQ9CIbRlN+j7pkOkztuUlG5nbu1x8xnp4K/+582Ir8X+tMF4SfIRF4KdQ5NBfDYOUse8sPTeElG7Cc2Ok4AbCG//LgJC9ESCecRkug8i/V2W4GcThAmANhyxZCFdkxcqlDJMEfQZ/s4dryPbk9TjyWWF7VSk2OUXAkA8KKva054=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774473294; c=relaxed/simple;
	bh=YJrjHd5epzKterXSX4TF9zFt0gelave2XVDNxuv0Ig0=;
	h=To:Subject:From:Message-Id:Date; b=RLoApkKrIFDnOWbnjPWY6cAzB2oi2IYL7XLdDGW13rYv2XCbHHkjAXPWB55UVaRuq5vJxc0kUodG5SwbXEP5cJe91rPkv45uWlf1zPTcej27Jvy507wP9n3dzC23P9bDQ0gBi88W5w5wZj3Aj1eP3+o7bkFu9ZXzwHcC4S/sZJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXy6IFuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXy6IFuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC28C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774473293;
	bh=YJrjHd5epzKterXSX4TF9zFt0gelave2XVDNxuv0Ig0=;
	h=To:Subject:From:Date:From;
	b=uXy6IFuDcIY5sluravIlFZ1kS7ksp6/j1cEBewTzbEAh4O6eVEnYNRVXf7ynZzy43
	 Q50LXqroblHGQytRw1YJT03BxsiNJpaid8VWbkXL5FeyQme0lqXr5P7HOK/rJU0UY6
	 xb1W1AfUkeS8ofvG/20JNj3i73Hc77g+ooTRKpNBHV2qUdU/c1xMtfyYEENVgBis6T
	 nEKaCLwzko63Wi0G6BlYt9Bs3826OaIyH+zrG+8bNdmnZzVPp3dR3HeIJVSAhWlajp
	 nKLKWXM5485d7D3gxkNUe1XUkh2/cX2C4fFjeDiRp7rJ9WtRrooraSXGHxAHlLlK7p
	 feutxW6XC84gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E97106B504
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447329359.15244.1579633235053498991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db7f5665762708401e9db98bc6321bba55610cb1e8dce0e6a4240d3bbf6a174
Date: Wed, 25 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774473293
