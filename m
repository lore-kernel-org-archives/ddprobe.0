Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DA613DDDF
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726478154; cv=none; b=jZYY1eCo4anbDmo2Av9ZmtWTzlKeEykLQj08cU7CC1CmEgBYUYsTA3QbKXFKRIaMiF/4Z4XFp9kwM51U5Fvf2PoAs9APtD1DS7ATmmg1fgjZEZLTGNgyQvUg75ysua3kfQW81PPjNQSnMvo5jERgYKVLcEEmfXP4YmD+gM9hmOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726478154; c=relaxed/simple;
	bh=1luDT/WPBnTRQ/XTzGErCShfCiQgC+M0qsaWzRMw/jM=;
	h=To:Subject:From:Message-Id:Date; b=AgQfRPQFS9c+h9qvp0yUm97d3ZJxGaRe2w26WtauYMEj1sOXQqiU1VISB6ZWTUQxflrMhDQhkV06v/ht22pH96qTZJJmKwLLcU49+RBJXlejwAPoMcJN+PMfTTeubK6EYDg6SYD+hLPjWQDjuNY7azfmtGJOiJ7iyNXGAydnKqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pga/sf6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pga/sf6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E606C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726478153;
	bh=1luDT/WPBnTRQ/XTzGErCShfCiQgC+M0qsaWzRMw/jM=;
	h=To:Subject:From:Date:From;
	b=pga/sf6Fhq8Uj/5WmSrAEBLBFEBiGzZZN6vywUAASdeM1bffOT/yhEjZLoYce0o3N
	 b8oa21J+Onl9HBnhKi11VVOBT5ThJu1u8lUJqNu/s+2PSGvd7k638YWZRyJZ5KeJnJ
	 OuzB5pL0Gg/fVrTtHk8DV5HYBn/0OO80DWvRXi/UNsVZlKxP2AJFmWkYy6K4MwDubj
	 qpcHraa7FDvL0kQ+zWPAjcJt9Xz6sTBtpgP6uZv0X39pC4CkzmuT5R6nH6LcVJCVpo
	 nltM0fvSTpWdmSdwdTJ+Dj9EqhBPrZ2aQm3IPtML1eZtFLd+mzYjKnGwfAcXzwYM86
	 OvYbuQfaBuWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB1C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172647815358.9851.1825640837303158413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c411bb4ffa1eff535f88f9b78f4b633e214a73e97914e5eb30452c7931f0e0f
Date: Mon, 16 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726478153
