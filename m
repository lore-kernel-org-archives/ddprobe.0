Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC911FBCB5
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753567194; cv=none; b=IjmEZD8nIBQn8Y987myU3XiNOEoSRt4BAhDaYxVvs2rfLYUoaZzosP1fp2vUcPbK1HcVZ1IB7bB0ebJru9lxPROJvr7IM79WdcuyGe5OieIhSFfNQJMXBLWd51vInBBJYi7DHc34FC3+sp96yg9KPbk+JA50pbYcGxCsSsBgNBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753567194; c=relaxed/simple;
	bh=2p5rIbm3I3He+0k1BEJ3XW1nln/gwPWkkGc7imNcs5I=;
	h=To:Subject:From:Message-Id:Date; b=DLlo4sOMPZ3AKX1+CX2K8xiAZWTGo7GpvF5Xr77AapGvkCGAzXCWieg46xK8t6GoEWNLDdNbynhRZSpFxW/ofyw+Ai/HStqadBX1TQ6lxq+OqizAW6oSqOXCkdp2jEJSSquRIdmpYbXmtGd4m4S2XcXM7yDcM8Z5QO4Y4bKzbAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOFmGawf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOFmGawf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E9C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753567193;
	bh=2p5rIbm3I3He+0k1BEJ3XW1nln/gwPWkkGc7imNcs5I=;
	h=To:Subject:From:Date:From;
	b=dOFmGawfnY3rP6sx/2SNaDZoP8d7ddvmhR4t1uH/Ro7s278/a54NGyhBU9LnEdp66
	 61hrUl3FILOGwAC8X9y9LZjI+Wo87Svsifx55rvjL5hP4ok6vR66eM03/WjZhQHfth
	 7ObdEERKbavjZlAMXaZ/NQgXBbbnIPrF18q6FcoQhxHnm5KRWyakiWjA7iBS9LwY03
	 Imje7ZCk/xT2BDewR13ypQJbchQbjeHDvuLykFHFfSCjjDjRTO41PjppvpM9REGxjl
	 XFoF8brKIp739guVWKlJuf0pygQ77cZ583EAsIn+5pYnOWuBAXPe1J6WjDNM0Ai3RX
	 Nx1BKqL2hndwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91856C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356719357.31211.8098705570529201391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579142ff3c5cd8350cc69c1272e2ae1fe7cb870ef1d84a5919a47a5b16d628d8
Date: Sat, 26 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753567193
