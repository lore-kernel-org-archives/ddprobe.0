Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AE94A0C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771131894; cv=none; b=ty5ifm/xfG8PRZ4XQLLlU1BWLtzHa1+9Dhp1dCUH7b36tb4s0FpTRJVNb8gZAWq6gnqlOMYkUkamj0L5vHfYNgtZDFm5OrpGJtZiyvJE1KN3HJH0Ifnhr0KyTp3o6XyZr23ghldtDacTEvkSMEKNxO+muFtZOCxQHxUonlcdJVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771131894; c=relaxed/simple;
	bh=sKLP825NngGnc7WE1y7NY45roPSpfJ6waYGTTMUMn2E=;
	h=To:Subject:From:Message-Id:Date; b=CzvDg9w1v9LnZIBeiU9tVcbMuoM5h4bI21tqdXMRZI06sokw5/vk4xxs6C0qTSi+BQbhikdywPaCFs8nfdYTjTsxs3ukJvy83I4ynNy6mcLKEg/eXbgZrMcyfRK5uiA8guaOQM8yCabio1cHGftGmcT4MqnZtOrT/PyBL5UaqU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovN00yo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovN00yo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5232C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771131893;
	bh=sKLP825NngGnc7WE1y7NY45roPSpfJ6waYGTTMUMn2E=;
	h=To:Subject:From:Date:From;
	b=ovN00yo04F7mu4TvgunwAt4O9/BZwO6j4W1qQty/csat8rbclqHUfaOCRKKNhx5Sb
	 66dR3W/hvJPw5v3EOosRxHlK4PNeNVSJvau4FOcoelgwruluvZN3rQcc1usziK5DeC
	 msY+GkkKGy5CNpqfuscdQq9SX7LPZQ7eyrdI3vWPuAy66FIlHQXQNAPQgb57ZuDbTg
	 1vWKbz1XF1nWxVVineRmPrZpnlnYaTqVgsGTPAuQ1YljAti1Xf5KehvTA5XaKkKLoq
	 STRQO1MrmIwBBS+8kbwHAR5YJUQUyAk7KSvfsW3AkMDJPLSoGkDU+vp6Nucs0DsVk/
	 ds9dgUH5q7Y8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5FCEF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113189360.23329.3390135640487495269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e89415278f462a7240b96e6816959de2e8cb8253b3999fce68d3e2bcc5b8881
Date: Sun, 15 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771131893
