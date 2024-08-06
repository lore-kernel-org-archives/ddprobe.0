Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25748182B4
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722957354; cv=none; b=cl/s2OXePirbPiNY1+AQWoQE4A4IOoob4hLliVV9BMGGqDs7BT/YDvalDztHXVQPoYGPP8UZDv/yKJC/gNrrgk/hr0baJIbdTfZn7VygK+oOgo4NpCftkBzYfXCkKvI2IeM7nsAfcWnjeuzjiO6GwngmzvUGPS2ThAd1sxEzgr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722957354; c=relaxed/simple;
	bh=ldOMLCbcvSba0l6DAxHwtfPJydPvNAYcxJXTGHe71vI=;
	h=To:Subject:From:Message-Id:Date; b=DBEXfgZS5ciYp+LjNi3UfHJePGmrzXh50wruHjSM+AUKk5r/51N6RY6utOj8frBR0XaHEKQXueORsDleR7G/fGqosqAPeCp2OJ3fWYtExQ2aSSGOJJP/dy+j5aDUhtA4ywdvJ0Ztx6gxexTMlPolsnti3Ww+sizWBCwfaeRQJyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiWv7gaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiWv7gaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA03C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722957353;
	bh=ldOMLCbcvSba0l6DAxHwtfPJydPvNAYcxJXTGHe71vI=;
	h=To:Subject:From:Date:From;
	b=UiWv7gazx8gLOEUylhRyxyr/3YrR9UJ4y9T61BJM9frrZuniB1tuq3HOXCr0aBSAp
	 0NFCFrKnagX7YnmjfFdtEWZl+dPX1Rz/hQDY52NhafMcGZ6Ul2uPHaOOj6pAmjjYCZ
	 Mn07aO9nizRhSbhDa0/1Hmx2qYes7USZjWmBEoqhwwmllPRh0boZjNv2E3xO04grRm
	 OKTqK7vE8JCifh7JKPCXV/Fwpf7t/PxS/kLYo1SF0JuwIYFt8cyMMOyvt7fool5N9v
	 YGcoD9DydE9RH51eaDW6VRIfLI+7UWPp4px8dyHk3zLaj2NdonOK0L48Gzth5MTgj4
	 WuHWFdD2nnuvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9701AC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172295735360.29635.10169899554929328840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f37faa96b6d35f4a9b5ee4897fcc648c4fc3563f26baa37587b0b63ee3b203
Date: Tue, 06 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722957353
