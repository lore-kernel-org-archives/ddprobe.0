Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5186022087
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720075523; cv=none; b=QGIeFbLpM0SMeqWy6hNWir3sNQURhWfeor71hE/zfCdqEz2wiAydIb4lxL0TT/rM7p+5eAZBPRm0jYuAX33rQI1o2ORE3eZQzt474gArobFtGH6pCcXl9CBkRLXe9HzQ6VcDmUV7ExCFFsvCSeFdfVgOBsSxZrv5h4RvadsmLD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720075523; c=relaxed/simple;
	bh=K7vpz0tI7wlEhOtyBTvnwwq0RgWHnp6I1Lv0RNv3WcU=;
	h=To:Subject:From:Message-Id:Date; b=ow7lDBGOSaJ9x1Tmrsd+Kau2sDakUUP+4pKBizdJihi9GA8sEsonK7UYcD4PNDlRa5kuDQfmUBhsw6V4BNSwk0H1ph4v9TvS3S1hg76Ms1kqRtBvrU6Ux8gdvLlxTR1TEz5ZOjp6s5GIf5bf2/mA0VMggj3R5irUA3WQT+jvAxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btG07HsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btG07HsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E15DDC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720075522;
	bh=K7vpz0tI7wlEhOtyBTvnwwq0RgWHnp6I1Lv0RNv3WcU=;
	h=To:Subject:From:Date:From;
	b=btG07HsSg+u8S52PQTX0zri6IBlzDWlic5T6w88m+Kisixcjn/KetWjor/7ZGeGTR
	 YDL9Oy/sqkwOPAxUJOHVlP9SM7so78SoipDNxRPYFBiHJu3FvLMeMJIa7DzldbmEia
	 sny6L6YKeK7O7NfY2LQaYJdvookRDeOvv9HM/DClBXFZv2IjgThO1i+cqSHTTvvdzX
	 ea+zhR068FRAKkqgRUvu1RUs68nmwF3xpSARsK+NL5zAWLvQGvags6VSo+44XaFenO
	 LVSVxh8Wuz3YFhH/XSX7DCINXbzeLCfDpxGs9sv6k/lY9xVblYWdobWF6gH/Lxk27X
	 JjMyaLIYNUskw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD119C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007552283.24589.11438610605610461515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7534404e44d8a7e58426c74e52ad79f527592f5b985adcc7d83a1c697f0b2646
Date: Thu, 04 Jul 2024 06:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720075522
