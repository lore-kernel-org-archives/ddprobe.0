Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D9223EA89
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763366514; cv=none; b=f+xd2cmJ0t39vc/c7wu7qXUzieg04in9i8Xt0ozvgN6NcD81KDWM5Fsr607nthkdp1X6+ywPlbQjcbvYqlOUwY0G0UjudECS16vJnFVsFZVn3mRHfK6FxcNJkA1WfVU5GMwV9n/7nM8XmJAw0g14Iox0wRea1rU4Cw3O8sts9NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763366514; c=relaxed/simple;
	bh=Lkxl9iEOCviPRI6E7XIA03p1EmQnhEIsCSgBew4T8js=;
	h=To:Subject:From:Message-Id:Date; b=ScFHRRwtCU+a1LQUXZARiZn3JU3V7vareZgwZt3wewRte+K58zht2EF2Kkre9McX3qeKsa8Rao566PVVx58dnTUIEOvnnLY9hXZhJW59qRWSJjuzS84cLLyGDJ2GT5RtmU12jq7T/GHGosCVUY3m2A0Wl8WW4iATjpi2IGEpAx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdkWb9xR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdkWb9xR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 254BBC19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763366514;
	bh=Lkxl9iEOCviPRI6E7XIA03p1EmQnhEIsCSgBew4T8js=;
	h=To:Subject:From:Date:From;
	b=DdkWb9xR362XVyV+U5BfyldLmf8SKLMPXdyIXKqJEkZjCx26UxG0FKHcsBNM5tu8f
	 G3BSM4ZFB6+HLhg9ANZ9BLHg/rV2sxMPtFwEdpv+UjRNJZ/GLn+FaTWB4GYuJ1rKHa
	 1mflEZJ2uyoX6olazvnqRVo7obhprqx0+PGDMrrdjhTGvEmPTGEYE5JAQ2pg4B0nyt
	 sOe9GEioaJGuesckyO9U//zt8c+73oN+AAVgS0/9bvlVqbVxfGRzdhtfqWbwF7ieDN
	 ccccPeTGNiNjQqORNanKm8dhqIPDYUheMYyF+gECykKe8V4SMJjv8z3tyBoP3idvvf
	 yJHcuUCnS0ncQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA171CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336651376.7825.10126366288782650302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231566496c346c5f82bd9ff54f5fab94ebe8da05f151293f345cf8a9bf8a9661
Date: Mon, 17 Nov 2025 08:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763366513
