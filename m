Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C47612AAE2
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717707443; cv=none; b=mBNb9RWwn+w2KMBrUXcoqzaCFbt1OCNo0IBDyQB1ettnymzS1S39RiYsHREWUUG0hKVQCTZS9EkbR5vBlOi6+bmo6hi11hUtVkT+ftyPZVp/W+9Xcp8EF4/v/1KKjaSXZitXUtJqA/PN4CgnyrX9r6G9e4gm80PWNN9ZpfXdPnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717707443; c=relaxed/simple;
	bh=ieErBZ/rGLhsvnqeD9zw+Aqo7WFBHLSXKX0LqI6C0b4=;
	h=To:Subject:From:Message-Id:Date; b=sZrst4+U2ZZDi70WxaPRe8X+AWhkp1B0H2kdzZ2EqtNiQETEDFpLg+1p9XoG7LCrRSZN7vMGWmKaLIo+p/Njhzs6EJn0eIsUkONcntFpvbEaEQzIEfzs+DqE6K+fhEv+f9R+nBO6QhNYJkQjQsERYa+/cqu8qKidOEprPKkGmS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Seg0Ia7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Seg0Ia7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B15C4AF07
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717707442;
	bh=ieErBZ/rGLhsvnqeD9zw+Aqo7WFBHLSXKX0LqI6C0b4=;
	h=To:Subject:From:Date:From;
	b=Seg0Ia7dsCuDNXQBYqwbJNLdhojXKWan8Wf5YPO+aAhy5KU5JDzssU7vquWDoaTJl
	 J+pvwlV+1GcsC6uQzNeKjk9on6gjKEmxOPT92fgnMDSf/2HiD0T1mq1042oK6H/nbJ
	 3uQHI8A/GexOnlPkTOCB+HbeI1CKfXCCDYMR1ogFmv7dLh2HpmYjMMEToLh0P8cTKr
	 VVRaG49ldlrXjplyTgiBRhm+lH6i3LpooHWKm/fkFeNL1iYMwHbrn6ngNi2WBkvIIz
	 kBQihBcuBc5mHlXen6yVafWWLT5H+S9cuHhU2ZZPn4ooLCQDraZaHj+1j9z6SWBEdU
	 zJr23JqdRUb3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4058C27C55
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770744279.15846.6197847627121297829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0ebf0bdd1a06c14a0cd9b3283059901c9435127a537f2ce8574023b7433c32
Date: Thu, 06 Jun 2024 20:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717707442
