Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB0826ED3A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783517314; cv=none; b=FE8zmQoBX+AHAT7N5TsigHk4ygxShj5TehiS41zHYs6tRFmZxdgK/3CnqUfllthv1rLs9yiNXZSttlPggB9UrJGg6o42IzMEm1+8zJsFY7/hLyn6N6OACLzz1L0TGgIRPLFLBV7OrblkejpYPR0/K7qdfVlJGbHte9w+mvF9poE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783517314; c=relaxed/simple;
	bh=znRtyet2f/kV10GT88kC/eru0LPvgVom/MGf2SThPpg=;
	h=To:Subject:From:Message-Id:Date; b=POo7VUflGKZN7NlVVEIfzPLZjhdpI3uftXXV42QHsKvVTcTU0+VHSWgwSWCO/LvmjMbe0CWtn9M6gcwguys6WEBGGiNzrZXs6GJ+mqINpQO/d4ZXycz0aNTXniaXyeNkO3vxMkSLTVFN+Io4xvDksTBCevzy90JhX/Odz+WfCo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPa17t28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPa17t28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF88DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783517313;
	bh=znRtyet2f/kV10GT88kC/eru0LPvgVom/MGf2SThPpg=;
	h=To:Subject:From:Date:From;
	b=SPa17t28X2R6hrXqJ1l0djrkeeU9jc1lGTDLC/GygT1zg3Y7pwPEQUdMXOdtO44aO
	 VF174ofqqCj1Md7aswHHfWiJl9vw8teymg/wzlvtwOpOQEyk4grrP54Qt9c6eA11d9
	 5V13yA0WPbl4JBw5I/INdoQRd52xAMVmcRh8iEEmBqHhZ6y+GZG+6NaWQDJXVS5RHf
	 z/yaftgwj/Hvdc2vUWtpaJkavia16q8Fk+C+E7w/9P+Gflq5vl+Go1GobE+j/uC3fg
	 MnzYQjacLrQcT97njQzBCaJIhEVQksgUUpkOZgRx/+cUxMWeGJ25gpKzMCKwHR4plI
	 o9cpIK6XC2Rsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF65C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351731369.22424.6409594668677882782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85eb70822afe2712011612eb7705b2031b5a856190a81c4a603514c4b7ebca6
Date: Wed, 08 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783517313
