Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A7239A079
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774268094; cv=none; b=a1KqDfnsiE31iXsbQYEYcfdDRHHLwaaq5pK/4tT8XJCzemFQJg434zi4q8OU3l8T/JbGARtZ0aRvvx0pjGHBPayrSX3uzb5hNUP9UQuZDgt7uiWD1X5EIJtqJkr853AtITEWmF1atuVeeKzebDnmJSuJoJ1MeODKM2EEzlJn4uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774268094; c=relaxed/simple;
	bh=H17v1D2zz+2Na2rC7QCbcC7v8a0otCjHEEbC3YtOUQc=;
	h=To:Subject:From:Message-Id:Date; b=bJpdO/PNOzQ1mJFQtQhm9jeK0Q3HzgFBXdtvqeJoNXJINsx9c4FMbaYScpudWdzcZU9X3L5Fq40SZFYvBw51cNyG/7TAUUZwGbvYkF0RvJ0ROJewS2yMZus2OAb5t5vNd05CpuBhWSFnIsed+1figv/4h38DYBZ4HjBso1QQwWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3R2E6TV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3R2E6TV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FF6C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774268093;
	bh=H17v1D2zz+2Na2rC7QCbcC7v8a0otCjHEEbC3YtOUQc=;
	h=To:Subject:From:Date:From;
	b=d3R2E6TV64RRLq7IaCCHiQHa1XAjLjPsmm9hLllnedtBv1gH7UDlJpw9iVINIhgQd
	 0VTS/AL0gg1eQ71lH4aNMycpv8mHB61WdYeXe1JbNSuDXxx/0xVTuiQJiDONRRuaWl
	 6BijZi/NKtnXVVJX1GrhJbSp08llJGoSC6w3Up7e1/Nr8Nm9PyhSQZVS+09X6LV7wT
	 az9WNyz8fJAqFpnw8YoVm2YzaVZK+J9PoPrAAIkarwCoc+i+CHJTXpC7idsybQV9ru
	 N7hPV6swhQUVZH4F3aHDUjt9uhC2Ocb4qDncZlKJ15q+51lCLTLchIsiQhtJH0jZLZ
	 ZshPP4DjdIJog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98241EC01D4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426809361.14545.121577881027052410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a81db99d1be5048ae003cc702e473f7ad760f2e9f4304bd49dd96b3d65c619
Date: Mon, 23 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774268093
