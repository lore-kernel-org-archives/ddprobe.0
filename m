Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50491C1725
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727782553; cv=none; b=l3tC/XptESOfL3A7IZHu+j2526gAhE+llPkBZ+ftzTZa3sx15XdTCK1sLV8LkZG/1BxL3n8AbcAkOtf0lERg4OTarfdhKhwqQ5mNY4iFIAY6GObiQvsKLIfrL2yiKAhmACl/n3fo+z5DJKV7yYOjfC4ybngNRc6rZq7MQmzqvd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727782553; c=relaxed/simple;
	bh=zPJnUQUw52xiteRjvhF3LO1TsRgrFES63tHjrfsNHC4=;
	h=To:Subject:From:Message-Id:Date; b=HWKKdXuX5R7sIMh9IGEP83rj1MmbqHLJLLJ/eb2qHwvjWnemFD6rgjcEHFAvyAOk6BgVjtsssaEJu3NDN6ZA8Eaa2Nlyb8OsCqaMGkWxJZpMyWPiBMLKNwpOFZUOhWOInxrAbttoydOfH2T3/VjAGGEaQ/+Uum+RrHvtEpcL4Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+Om9PpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+Om9PpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E29C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727782553;
	bh=zPJnUQUw52xiteRjvhF3LO1TsRgrFES63tHjrfsNHC4=;
	h=To:Subject:From:Date:From;
	b=t+Om9PpEso7Nd8dc32jRcBpeUo9m2KGiQCECZHoEjPK/M++wddPCqJecdqKkbWzaA
	 3bvFSrt8yHZYeimAqjHqCXuKgyQgQAOtONf8W3ID86PsajCBJ3TUAmBWf+S8HT67r0
	 MRMSWMnQpBNa1u8LHnTpETt5uijsRc8J0y5JLqwXgu3sv6CQFbRNQXA7fDznAU8NGZ
	 H+TcnP0OKvHPvLAgW3dqLuIJNRjgXh32CZECYNn6iXliN/8W4q0YSdIIP2hc848jio
	 /683Y1Fpe1kR8A0tWFneZT0bcadKaU2PwNMX1EgBwQmeUy3NwV2UrmVDobj04vTI4A
	 5Xn/dpgeSljUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9534ECE7D0D
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172778255360.18189.15168666359098158831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd31b95c19c6763461e61bbfa46827e169a5d56fc2356e7b3a180b1f6dd381ea
Date: Tue, 01 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727782553
