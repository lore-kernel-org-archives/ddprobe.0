Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0EFC8F0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769486033; cv=none; b=m53haS586uCzn2XQH0HwdjQgCPcoHACFncNOIn+9Bas53vi0FyQSaadLzgwEoZTd51cjN5iIdzbP4kD6dk5jWN9WbClVqBf0G1gEdvwgKWSEOG4ASNRUfUvq4VoHIjEFCecdIivZ1CIs53+Ql3sp2yJbJO0jza/iZ1jjxHIyAV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769486033; c=relaxed/simple;
	bh=2risP6H1TuMcdTH9UfPCzMEkK0NpvVScMYQoZ0DYm7o=;
	h=To:Subject:From:Message-Id:Date; b=dTNkBxmzTIBedqpnlTMqMk9AW7Ddpa1ttGt13MGL3gyr/gfyig5RpbwuBNPif/g5VI8N1ikzSXTFPMzpwRCW7ssB9EpJx7nDpEivPY9gtR+DjRrDaLcGH0sP89KdGutU3b9Up8jPYpw9EcAol/ef3oWGNdNwaJ8UP7Vsd2zPiNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSigYvUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSigYvUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5A3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769486033;
	bh=2risP6H1TuMcdTH9UfPCzMEkK0NpvVScMYQoZ0DYm7o=;
	h=To:Subject:From:Date:From;
	b=CSigYvUn8Daxe5RnaAhd+Cv7FYTQ0x2V20F7qFSOkTFCEwt91UkF57dSTYX/a1sjb
	 +VnOIbBhRRQ0WvrTsD95fnPcVqHpwb5d6VGwBkQQuzAUbTJOhMQCmTMKjcBJDqrwHQ
	 txujKERMv3Qhuk9DJlJsPO9k5NsgGrY6jHI0VanN2lUzO8rC4feHAFFrzHI4zY+VLh
	 3TUHZAdWCeQetiytcpDo3x50DWQXQV3XGHbV8vmVwkJi5VfoBkA9SCbr+BUitqdL3A
	 mO932zkeneOapl1MNn8VnmmoNH+0E0wyG66VftRPCO/BDzTiTdRUFUBsWPsFwCY+c+
	 /aWu0yUjSdZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F000D25932
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948603357.16615.15908428224832865629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e085969e8d2a34ad53211d34699cb89aa96f4bd665d61b669ed9517ef9e686
Date: Tue, 27 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769486033
