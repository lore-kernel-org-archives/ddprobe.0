Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED2D14A4DB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754248194; cv=none; b=RnCRS1MzRX4GvDwrQA5BAnYGsFrVjEuAUQ3gKOyDkybs2pwRV4oIWF03Wgb3BXbJW5WLZL/5opSMp9l9O376XbfPwEjPNrTqxYXRfC7tf6cWOHrItCR7jis2GHDzPqWN0cM5vrZKKn1+z7NGSFx25zdoFzbi8tv0iE9p98eagkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754248194; c=relaxed/simple;
	bh=h3vCpCa8VtKzpSL7BwMvZXDuyI2UVBbmAb5bqWJ5UIs=;
	h=To:Subject:From:Message-Id:Date; b=jpnh9Z850Qv5j5RMeaPZeq4l7DQXknyQ1+9YD9Mb9WW+xCd0FLTqAZLj0VOSav9DRtC+fHxrMEqvamefumcZT0tqh5SLzY0whC8sa1qdSdbJNj+bhCM0b6crNEpYL2H1clMO3/sa4qzauP7gJOwUtnjFuP3m+9WXjS4ODJ/2e7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ers0dEQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ers0dEQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F32C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754248193;
	bh=h3vCpCa8VtKzpSL7BwMvZXDuyI2UVBbmAb5bqWJ5UIs=;
	h=To:Subject:From:Date:From;
	b=ers0dEQC7zHIUUCRI2JLSNV/2b7bjmDyFZFirlleJIhP3XlLJyrPFoI9YpjQoLLSP
	 OaxCGWbamgeGTSK/zcdTKdPoXf7rpP6mDn0GnYlMsacK3/QD5Svbv7F//HtCcVzEbq
	 7ut4bPf+ggli0ybcKmGHh5nSo06CR7APCn/5zWYQJrv9Hgz3SUrTgfTPlpAlx6hEUX
	 nAk2crv39Uz3cnm6ozk3SjQqOHzxr4yOKZB1P5lywP07GC2VEzXRWXueHDhJ8/gd73
	 IgkzEM6z4O9i6WKbB0b8dKNwxynCWERWINcVmf3UVqHAufQ0P/Uif2Zvio4B3n1qrp
	 W5DLA8XBYSUMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2AAC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424819357.10587.10302874536338572296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d498bfab9cfc2ec5e79b8f182cd21d65f6b23b49e5c07d4fc2f2bc2592cbc3
Date: Sun, 03 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754248193
