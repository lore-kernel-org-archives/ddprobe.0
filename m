Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A2628695
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763359914; cv=none; b=oFcqY/jTWOqlm9z+y7Ho2n4kUZaq3N5gAbXi/v+/ozRx3U3R+5j/d1l9be445QbDkkewrWf62juvpWCclFwkLccOjEhjpYbaLHlPc4vMAb6hlsoDk28TIvlbkpkywbvFFtQO5PBS0IK66YLJcuMKVsZ9t+dKupJT//WeCg/+dag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763359914; c=relaxed/simple;
	bh=9ZEO3RuxT0MSgHTPwpyBG8GOGINLFNOs6y9fUPW9XOQ=;
	h=To:Subject:From:Message-Id:Date; b=Jwr4VmPIi/HXr6HDNJ45h04yp/SZm6euysau8z9xXaXK+CAZ2vhvp2GN38TJBnQQXDGnPlL7kI74gMA/cKqc8q/5XcfTtPZODxj2GHySxHzyVyXHlxTa8NLbbqQQNbuVk+mCSZ/HPHl1XS9fVhDX+3SckZhKlW5Y+VWAvG5BJ6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBeeskWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBeeskWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9940C19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763359913;
	bh=9ZEO3RuxT0MSgHTPwpyBG8GOGINLFNOs6y9fUPW9XOQ=;
	h=To:Subject:From:Date:From;
	b=oBeeskWGE+I7njcLytI6UlMXEhutRBdhNaG318F/S+lsAAM8sb+C7HK8ljADRquAu
	 hf5cmc7nWRD8lI+4CSU7L0UT34mSAeR1o1ZLhFyUYLIOB6ANqNUvTtFsRdX5HOrfsw
	 OzGe6mDSdd6SWtsfwEEM1MitoMRvhE/8vwARzj7rRQuTQR0q4PCdi9mszQ9Vkww5nJ
	 M19N9trwYFR4zbItU0Wo4C5d5FCtcCmmbCWnCEo+buyVT0ZOPIFHfaZqVeCHM8vQdj
	 l2EYTU69/Dl3+huHDdb7tobDn2h2KKP4jbeM92LaE2vZbAKLWWtfEEkX5im6ugJ1FY
	 n/HH/KmG6t4oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CD7CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335991361.29839.12278724789295870207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec52c048c22d8800f6f9bb429f99fc2c622c6adbf82b98c7ccfff1fd8e035dc6
Date: Mon, 17 Nov 2025 06:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763359913
