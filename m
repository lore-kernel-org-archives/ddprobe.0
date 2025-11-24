Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1875E72631
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763974314; cv=none; b=Wd2dvXM37kb9vNvsuQN3QCsjWGuiF53NkteafIYpNs622+oqrdtqN0WMK6veY30NHqjDEgScBLHt270J64vmSGk3Ln9NVwYTQiQoTGwrINrjiCnpAA2cOR+zct4y0RgxZE3/TRITF5IpbrURO9hJ+3kxap+DjR+hCPAsLJgrz30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763974314; c=relaxed/simple;
	bh=CRP+8BXs3jAhs7U3b6gEoSYF+8Bl1eHJn+xGuUwGlHg=;
	h=To:Subject:From:Message-Id:Date; b=bPYGdVkzpabBqkFgoSiCH7HGWPJgDxYUcPQHg/0B85zhUHbx3PU4BuWNRmygrB5tj3PSUjtgCEYFEwWgsAx2wTojGo6Pq8UXLFcFVOvNoLeRMp6e6myQKFY9oKVAcBM6HXKAU9JROraC4yGP7ZxV7A3YEei4Cj+eUvTMk62KsKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U16MPUUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U16MPUUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E10C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763974313;
	bh=CRP+8BXs3jAhs7U3b6gEoSYF+8Bl1eHJn+xGuUwGlHg=;
	h=To:Subject:From:Date:From;
	b=U16MPUUjOPwcvo9DaFOiJ09xjDvlR4fxhxxIrytglGMhWcCWX+fCjfNwtzg+6sxwL
	 PH5KGTrW9y3oK1fo7ONvbwe2rYph2pa/HseV4bHVEhHVQSb7FGKmlZpYCytzbBbFOq
	 0E/H1YhEKn8RlX6JErGoMWQO0/DhBG8LNdPYsGXI0FO4JvIwIQ2ikYWdPZfgVAu2v6
	 gnH3CW5Kjjjhtlo5fxor0X2Y1lh8u7wOpRh/IpkkCuC++9Rkxf2gkq/V7NYPf7dZyw
	 5zXpYaQ5GTHm5JU0LLuGW7W2ztpQBZZO5fJNJ7I3wU6VhIeFn5QNHahuJS2Kmi8Ege
	 D2AUyYfx/1PIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9483DCFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397431359.1263.4386313320470261955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0ce6daf0dbad5b90158e7684e248866f0e2bb637c39ca8f725ce0ac3bc430b
Date: Mon, 24 Nov 2025 08:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763974313
