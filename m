Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADB516C684
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743031795; cv=none; b=NBcnUeZG3BWwz+SZ7hozlsDVzuBPmCC9jQ25oeEOuxtGUPscEBd3M9hmrMyPw8QgLl/Yb4NpAq0hcmbjFAxQjj5+ubTqhjB0eg2luhLyCkh4nQtKda6RvZ6vfUfgVN7a/7T/PNaZV0N6Z44hcXjmuLOnpE3ZL5tbHfW5SDBEHM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743031795; c=relaxed/simple;
	bh=yBv5ReLewvCNZROZZSpKdMsqPeahdQCwTWOMvAVhSoE=;
	h=To:Subject:From:Message-Id:Date; b=SmICv6oVYWVUr6JX4Brwl/HiwUiLztK/31oJ3GqCU3+u1T1Gdq8Kg7JCm5usRxyLZRAjgFGnlu3/zFAXyTCzM6V1YvGpUAZI5F/J32o9V3+C6QyDm/JE4+bSN4xfo1VtWsn6pW8evK/hySnRbPViyJAoZ0oLgxywor+mzvCnTFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQ+XajjI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQ+XajjI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2713C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743031793;
	bh=yBv5ReLewvCNZROZZSpKdMsqPeahdQCwTWOMvAVhSoE=;
	h=To:Subject:From:Date:From;
	b=gQ+XajjIDqX3vDd5d37R12t8cXkgFORcAaci2gM+MDyIBHAyk21JSz1phr74pnKz8
	 UHXNU9c8wEVBBbbmtscgm0BQKHsX/sttxilLyJuQ5uLoTvVRTannxLEqjzdjJa7PaS
	 90rh+Caxeh3XReAnpiXdXVK8eBPq28eq8Jegso7pgwU3F+RxYUWIcdyeZR7+ogfxem
	 jGtsLIQ6fwrSq8fxe3OTy3IPMeX4Weu4J+DNUXRR7mvsaL8h3KRHooH2lVyXkPGbiw
	 VRds99akGl7hs3b7jLzfobw8OSzaqlwNMNRMAgG1v2iukfE4gz1AsZR2BVob0oQeR7
	 OnGgVYKrgrxYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5E9C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303179362.11850.15718354046964310621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17672d80ee23827e6262baf9f6731397c3f622cb2121b504d898d47bf3d9ddb
Date: Wed, 26 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743031793
