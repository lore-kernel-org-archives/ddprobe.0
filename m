Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CB321129D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737539754; cv=none; b=uPNM1fLFzMQWkIV6xpi38oObamIbCDe9VY00etyHiT4cAJch7lA1DUmTc+DB0L0UKwhlP0dJk+ICoJ84R0pVW4GdAMZoY2N+p+wOfoAj73fVQOShWVLFnSclyx8oy+2yOyPG9ZFX9KagM0rq6jnj6JT8ZRS8IqczMyk/372KMx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737539754; c=relaxed/simple;
	bh=yPCLEgUjHyR5YOMdHogw0x0k2qTv88a1lpJ5lWJEscU=;
	h=To:Subject:From:Message-Id:Date; b=hV+IkQj+cD7rkGpY1V0yzokVF/SsRNLdaSZliMHQMQWiVfXM3t+DaLNn0uxlEzc+lTl/O/kZTTxuP0f5lh0dMWI983uUbKi3icUYKZrV/8MBmwAURb2++DSlUYksAwAk2Xfk97hoB8rqu4uRbV48xdHSqOeUnRUu2oPLrjgbElI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLhUwbmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLhUwbmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA45BC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737539753;
	bh=yPCLEgUjHyR5YOMdHogw0x0k2qTv88a1lpJ5lWJEscU=;
	h=To:Subject:From:Date:From;
	b=eLhUwbmh2eWliQKRqGyEFn37dfyCM1hHODmv65gVaXHMIiwtBMq7d6wRn2oJFhvxZ
	 Hp+P+Q8vtWWNfqMOC9KvHsoeFD7KeAhdb0YOq34OAKvO4sVTOJhYx9igydGT6WOGWW
	 CBH9uX4eOeg5IwNkqjHnq0WHt3XEqoTrxo1K6bvIJ9JtzAC6fzEb+ShgiHi+c5F4ZW
	 6dsrd7OlQMzfnV31bj5wG7hHt0C7XEDIZ7fD+7PvtWxEdZTM9hpc57Dp/gqd+gf8V9
	 n7XTHsH+IJ6iCrnoAz0f4u2XMw1pBXr+71re89jQxcIjEQnuCNs8ENfX5bt4D7AVED
	 yECQa+/avkcqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94401C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753975359.26469.6900978342344935532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfb89f68ac16c29267f4711da91eda2898695d48e3fc99f69828be051680bcf
Date: Wed, 22 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737539753
