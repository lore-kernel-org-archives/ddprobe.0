Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172AC175A9B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781484994; cv=none; b=T7p+0ursNFPfnyzr70gJ8P6gvn+89fyr0DKfkk6JpC6pPdPindztiDh8o6zDEU60HN+rvfvTCi5Shtk4wzh9uJ0IQjC1vKRmvRhQnXOl1vHU9DNSwW/1Fa1kgrFHnI5yM5wRIbT9bgRiFE53sE234iedb2Kobv1aeV1woUVSpqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781484994; c=relaxed/simple;
	bh=9IWl7l729tMosZJgcKAfqoS9MCppWqHxsSxv5Ko5i3g=;
	h=To:Subject:From:Message-Id:Date; b=HFPtRGbZPejFdvjjdZutdnHpTJrwb0ydXie1akzl1wjKwm6FeR/dzNFZ08CE98OWBOqjbtxIESJbhkbIO3mrdGwypAwJL+r9M6hLQB4Ts9UCeUe95nB5t8Lc1oamxmHsa1V+uj7+TQctBjS8cC+IZLlBfkjChKnavwsF8LkC0vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF+l+qZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF+l+qZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45A4C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781484993;
	bh=9IWl7l729tMosZJgcKAfqoS9MCppWqHxsSxv5Ko5i3g=;
	h=To:Subject:From:Date:From;
	b=gF+l+qZwvlzjRgqs3+5x3YTkOSazXkKVQYiTs5xSNMAn7k3wFKqYtHZoxkGQBJ9WA
	 A09/Zaj7512wMe+0j0cN6D0xLcsMOpdkJezsuZi0qfWLbZLe9AOlIVwuAN4XpBWYJM
	 MEW2TeELGkY9qppUVeKiAA1mrRat4CLKM6FuXQk7HT1nGvtoFGrlfpzSlwew4CRAwX
	 W5pfZ7zR7gLEYDuE1ThYAYHb1UXx7h6H3Si4jy40z1ErJwOg5jQeRio1cUPWsQQONS
	 6rC/7MNPqLBvM1Ktfi5teOkIRmToYb7RatxiuPDQmBEsV3vK9DNAIEU3E/yZihrsmp
	 m23Dck8kQZjvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9597CD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148499371.7711.16173059500299886909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 338ce48a6a24cac3f01b7578c897c097350642abe4f04bb63bbd1c75d73bd7e7
Date: Mon, 15 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781484993
