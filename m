Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E0A1392
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736666753; cv=none; b=hpcZ/b/uGsC+QZzTdmUXAq7hlpNAebZK3pb9KS+FzAtn8vf9pLGKYWtLuQ5cG9b+oohRa3uJvpPkoZrf9+QauX+5jQboKxHoRpBUUq4vh+NpaMwcH7UoohgsojPIP+l6eZfSH/LXetDmPNRNjlW9YXU2hnYgsa/fT5NGLwM9TAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736666753; c=relaxed/simple;
	bh=SsDmMMvLRn4U0m6Snxdba4xk+YnaGd0nbAV4Zs7jRaQ=;
	h=To:Subject:From:Message-Id:Date; b=hGjy7TrsvGK18kvG0p8A+2vQeYoB92XrF3qglSDI/FJg3GzV+nszI0SmaFmX28Kqr3biGsJUXvfA97TdrmAkA7DpW2nNRI2g2DMwXNQ9yW8ZYy19mLSFnNHg9qppSuMMrsn3NJV1eTjrQq+xeyWagFKiWWslNxo68ig045hixu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEW6RQft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEW6RQft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A657BC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736666753;
	bh=SsDmMMvLRn4U0m6Snxdba4xk+YnaGd0nbAV4Zs7jRaQ=;
	h=To:Subject:From:Date:From;
	b=sEW6RQfts8N/2b2cBc7OH1IxTjC6Pt/7pfNxvZAs7W9dmO5MxGynAUsGyLDVwVUEB
	 YtCCUqTVq6jHPK0Tq5KPJQyLsppjRViokgAoAH5npB1Gsjd0XWFX4GC35Sz6cKx9Xw
	 4j9+yJDlcuxSZgviLjZi561xXZjSgA95RSe6JOFv3m77ShQ5JMbaK4e7w4sCBRZK2J
	 Y2ev1aJy7Q5KgbRQ9aNkyMhtwpe2vJNywwZaG5HZd7vQweM6DRtOt+nCDxVyWXRNNB
	 P0dZY/shl8vSF6XYTMiIFmu1F8PEF09k8CzHKyTqfWXPbzIdiNZ26x+riDsRY4Evqn
	 A26l6JeDr1VGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91198E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666675358.18251.7032679342812884747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a44f6dfd1926c668f545d11cc7113b67c6178ce48bcccbc290df93159ff082
Date: Sun, 12 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736666753
