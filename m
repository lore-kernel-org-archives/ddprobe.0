Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24659FC0E
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722770154; cv=none; b=PWNSix7/DBiOX8d8Zr5K0XbGaH87csyHpDetmCDXmgej5I1AjD2sGhPDLrY5Gbq3z67ivnl1hZYvcOIG4UADCq82cENvWQhQq8m29eKKRJ0/5uRozkAE4mZrdT7oVE8pj/8Yff5B259e1aLwjiSpReP9wyDMESu7SMBXkFioQu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722770154; c=relaxed/simple;
	bh=eIkJwuhmeXQX8sXJP5HHHce7WnhxPEBFHsnIMUE8WNM=;
	h=To:Subject:From:Message-Id:Date; b=nAxN+cjyMAByOsOE1Qij48QrWCzIJQ4HXvzCX71A6ukAMJufHtaNjj0QlFKcoW5v5aiY7grfhuMA+BNRwBSdPVQkEI+elCrcFJ2YVP21/n43nGBmqZEbpP7GZv49/PHjJB044O05yXGF4MfRJCpk2QiYWXjvNkOc3RMb1i5B6WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0qPVzmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0qPVzmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE69C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722770153;
	bh=eIkJwuhmeXQX8sXJP5HHHce7WnhxPEBFHsnIMUE8WNM=;
	h=To:Subject:From:Date:From;
	b=r0qPVzmvnrJaHyjSLpQGNTQoRBybSXXElrFQXLCQX7nHsrIpBdIHYhb2EGIR/tnOZ
	 KjmMRrzs1FZ/N6rqgWzPNLpDk9n/Ng7wMuleaLx3ZVlj6ld/P7/0atX7GOcniocmDR
	 1tSZ6+y0c9PlxHrn+ER6ZLKeXX3YIgBUx4zhg6T5/+UBje+4+Bq8ztzWhi5VtCWwN7
	 p8p7iPxEr4jYGfO3+fXB11a7a/GkezdD00aRkfWtLlK2YDKBMswx+9cb/9nsE8dlJ6
	 r9/DYxLleVuPWPfpFFrB8/UKiOhAiZY2H0//jSATOsCEdQp4PPBOC+aNja75Ve3S2T
	 B6CmEz0gLjlFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D56C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172277015358.5172.3060930858508155875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da93daf7d30db5bc6e3e6a88887c328ef328036c512d62ee6c73cc76985255ba
Date: Sun, 04 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722770153
