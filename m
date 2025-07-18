Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDF24A33
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752809994; cv=none; b=k8zRU7efGv5SbULf6BRz6ZCNRnZpx1zIo6Ao9vbmMQIhfKTSCBgHfgU77GgXhL6tJvwfIM91qJtJn5b/pG9lgwuI6RVnNQEIyHHklyHEWe937ZP+TFSlD2OY//cNSEOhIWy2IfWAKmf/sLHwzVSVet3ng6A4X34+jgS8XFCWlUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752809994; c=relaxed/simple;
	bh=KFrA/bXAbus3gzYRy8CpKRwSDa8/QUQLpdcT3zW3POs=;
	h=To:Subject:From:Message-Id:Date; b=IhB5ZNkPi3iyqR30wMZV4YGmTddCzsp6Ct3ypMBDmmc4hQ4fgKmAW0X1SM1jtWNPBsyS6jalLuG842jpwNnrb5xGu00oO2pj4axyWVeSFfGS+YOwffuaFMBNhwUYnGrmBKs72DMo8q4IFAdPqmI/bw4x7DojibiqJjf5ecaxVKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJbC6Rs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJbC6Rs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1975C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752809993;
	bh=KFrA/bXAbus3gzYRy8CpKRwSDa8/QUQLpdcT3zW3POs=;
	h=To:Subject:From:Date:From;
	b=JJbC6Rs5R3LlLZVkLhVw3teOjNWD+RZv32dlKRY/rm5i9z38VIss5XH4nulju7V1+
	 XAUu0n8AknlCB0bfhCiNn0u+EULKAsLTv8YYbeBPxt1ajC/6WkH5SSExB1UI7JyFyb
	 tfRDbx2oOrxKubtuzLLFW30Dm0w3etEslMo6XiA1cD8ZyuE4YkjKgRoe6HAIj5vkkz
	 SID1NmUwAZA+RhAifgtbA9ZrztWzWYff/SQ4y1+I4ceqrUOLx76INF/TsbHVEKfpzE
	 cH2uiybc+RuZnocr74NxAvOQr6jaBHhg1IP4023o6Fw/ZD02pXW70W0Yzs0taFpt+n
	 lqGkx+bOclzWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03BC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280999357.23737.13026945344619233838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2b87d18238eb043f7cba42957c251f6b2f0de1485dceab48020bf80b7ab0cb
Date: Fri, 18 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752809993
