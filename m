Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471C548989D
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785713434; cv=none; b=sZCwLD8tQeTIVFOw6GIrtRkN/SCpNWyy1dwFZW0ejq+MBR76Eh1YOfwk3wb1nT+8W3+jm3vExLDxLV4qoH56+HAeWbA9vXzau9X499BNrh1AdgtzxjA0t6tjcZRhFOcKtG4uJhtHrQDjr3ORLsjYx3j4n3mSRqdY71d+32DQlGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785713434; c=relaxed/simple;
	bh=2Ud2lICWRvpD4kLTN7r/K4g4rEmqdKjRub9Vp7fq0uI=;
	h=To:Subject:From:Message-Id:Date; b=ESh9FbmM7Uytzz3+2NtQk7LquZwR+TZtjB4xI7HYOoBUbgoCj/AzzeE0wYUtgbkgdpb3clxvMzv3FNWkOYfCyFFse9XqLq70bs802wCa8OWpsRQ7KIN/Ut9/jEtZuXzTHHp0MdUvCzDVrBDRaxhvKJ9AuIObIeEHC8O5ZTLsoIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFBMXC1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFBMXC1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23FBC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785713433;
	bh=2Ud2lICWRvpD4kLTN7r/K4g4rEmqdKjRub9Vp7fq0uI=;
	h=To:Subject:From:Date:From;
	b=fFBMXC1vLw2NZNaY22mgaGVYRtSlnP6R4XH2Zfjf3b+w8VVJvK/ke4x5YmUew1VtQ
	 djnlUwO8H4v/bY0IICARWTZTOWviScS9rhxBV1SAoLT9RnkP8BUsurC4+EszJO7G/n
	 nA56iNKZTTX2K76ncCA5ZySpIAGeh5LqHW2wkzGBN6RiKrKSPh1cGcYZxZeNndzJqj
	 w8Kz/tGYNVO2kpFwZcBW870DQjCH+5XYC/OCf39WH4eYxvUU07ZKyDsLLajAuxNVW2
	 iujRoeZA7USQSqUDNdCpReZCwiUCRrkGZ6P7NF/5FCet56xJvAcm1FdMY3NkrsvN1n
	 O7En1RYAZJwCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE22DC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571343368.31173.15167105078587521897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6c1e7fff73ea0be95bb4fd5195c0fbf08b634b9d6e22e25eba7bb725dda1dd
Date: Sun, 02 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785713433
