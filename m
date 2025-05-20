Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE9F1B4223
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747784994; cv=none; b=IGuD6ydPnxpCjLG/fGoVBxtbnBhvGG3rGlBGg8P1SdTamZViajznhYRKGojsBZ+yJMlcdw6LBSeRqkNX1vRH2NTwJtploGxcvxvZy9JEXOuIJD1YK3eJbOsnadoo0jwu1+ilVP5m14HfTQCswFKhXMR9qJqTLr7Zdp73utYz+Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747784994; c=relaxed/simple;
	bh=+4jrJctOnGdvRSLfQHtR5IzWOjYJHs/Y8f9qTafee+E=;
	h=To:Subject:From:Message-Id:Date; b=cBJAuqvGxo0I+VKXgRtWbGBtiAxQtDgXC+kaUwCCS0jxyqcvnJC4htyrN9zGi3Z3LD65wkcdINBY2YibaBrYbPuxNIe1crRblLQBOic38sMsjE8XNsNSNR8UElgavw8chPn2uGhpN4D6df0eYaT90L/2QGgklLHfyFEaFpwee58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HW6BWifk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HW6BWifk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA0AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747784993;
	bh=+4jrJctOnGdvRSLfQHtR5IzWOjYJHs/Y8f9qTafee+E=;
	h=To:Subject:From:Date:From;
	b=HW6BWifkCVC74uKlhLr3Joqs9KyNeOhCMiv+ZgZEH2s1ct6tJytYsZanXLvU8hDSc
	 LFA6dvLlthUQ0Jm+7J2sFEt9Secs1UZmTGt27G3UveOF1GGfo+qmCr3TUAf2co65SZ
	 Z4e1V47QDJimMMJfkIzTPibhTFza9qf68z9m3kAQpvSjIAZndoA6wem1G2w+Tnv2eJ
	 20E61dJNbRWGnNAn18BYjueZca3gzH8BCILs2ddamwqyGXYMcDEIrSxg2UlaMN9PZA
	 H/Y1w+UlwdKmpOOMpY9+0GjtwoEmlS73+TcnWWbbz7aFrVxmfndTDsgFnGM5MSGXYN
	 TplCjE4vE0YFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A0C54E65
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778499360.9514.18041269854599641906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed2d4b55b287fac4b92ef9919bab6d83ef5a66d0b51bcd7e4d3eb63e10f1da7
Date: Tue, 20 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747784993
