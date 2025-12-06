Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9003B8D54
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765014774; cv=none; b=Goz/QHHEg6LsVVTRZMjAHTqT5eda2TaehO9ubtBAWjwRLIY4rzTMJDkpxkBmaLXj20rTNkeO0aVFCvetPIRHxcFqXw0zKTPCwA7QGBGWkwMUryNZyYvizuNnglu3+9eqaNlLZ0oTpSK5lb9lBO0HEkQ0as8nRJ9kwDuzaKWNx44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765014774; c=relaxed/simple;
	bh=fvgj54f+hrN0S49nao42JrRIXcIL8t5R5NONCoDpu0g=;
	h=To:Subject:From:Message-Id:Date; b=d23Bep4VzInTHS/e6gPEzLaxmLfJ8IO97WzEqclctgXkK7bKJUXz/vl+E2o+hy/wxDSc8+C7E5c0L6AhYUMceRP+ozULMguBrRy6rLSz1Zis26W5sBoFY3TzL6UCdVO0jYYVgCjiguL77Uy3MU8AeAydYJwtJzfdUmM63QcTBXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l70WtUbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l70WtUbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25AFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765014773;
	bh=fvgj54f+hrN0S49nao42JrRIXcIL8t5R5NONCoDpu0g=;
	h=To:Subject:From:Date:From;
	b=l70WtUbE2bTcE59av57PsCdDDt1fefMy6Pr5bsij7Iiu3yBtopdq8yf2mCJTbTT9w
	 v47wFlCImxjnsBgblagR6JbiR+lAKbPNRVnhAukmU1fYFTljSOy0GaK2kMHbgKK9zk
	 a+yqTmpp17vAfLs4zCy7wsMc3LPqpgiUpGXBmKWfAIWALc3gv9X6y5vAZJOpirzEGM
	 34bZzNJ0aYvZUks1VwOugW0aIlrKlgfkllf4EEQULkOLvpMnGn5MON1NUeOSmyUv27
	 9YAYmzE8rjw90vLkYoubEFiNBW4JfWq425H0g4lF7ILC5vyBJu2cadVo4Qs9YAIQxA
	 uxm8/N7aovqvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90738D3B7CF
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501477358.18013.9579961552778333471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c656fd9deef7a7c10c1eb2a8395dc6ee047a06ad6b3ee86a5235413c7b41af0a
Date: Sat, 06 Dec 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765014773
