Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D107BE6C
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742415594; cv=none; b=cuN9JLWv9qFBRtKdsas2jb6wtON+a/4SY2dled65RalHE9uFNWX7gvUh2HcSORVL2jh1lHxzxN0Xxgdde/pXT8yQHMrAzaJ/AvCq654of548t8S8ZELaIwQxfi4yhRnCSUjPBOZtolaCgLqbkSK7plCY4bS88Kof3/F6SSluK3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742415594; c=relaxed/simple;
	bh=BORX/C4HqUtEl1VmZ40GjXry60STMy7PYM6LKNOroAg=;
	h=To:Subject:From:Message-Id:Date; b=NiSxOTA2Gc4KAxd8CnKwOFHOYOiLXEEZFgklCwZT5dJKPfyilL27YcMTPTQ0OVSQBBiDiysr6FUeCskR8F+IJnwrQBLdkT0zssCpxv5l105D8GNWLRVnjnmCHP1+frJiWyjfQA8Qwho8aR6KZ1BMtlG4DWyYveiNpxoTz2JXZmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJtJ5qHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJtJ5qHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE07C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742415593;
	bh=BORX/C4HqUtEl1VmZ40GjXry60STMy7PYM6LKNOroAg=;
	h=To:Subject:From:Date:From;
	b=mJtJ5qHLC5elIiR+v6irV2jNyBdeesEsEqol2xWc6koSztBi2f8Z+huD2D4SbBk8o
	 Gk/FdwQ3xQ9s6ma+/dEnzOaUAbc5fCg5lWhz89CkijhrbH9+grMckFqkTcMwdDLimw
	 uSEw3/6Xr4GIrQe5SJme5DYIgYcwyXTkxCXMXK9gMAKr8g7KhtwL06r+NfABF2y8qB
	 KYrFWiEW1cS9NkADM42L8q2WQAZZwF+xzHTQHPkzcUaufkKBFHgA+hbjyE0LAYbfQm
	 2CspImfYlwccy9sMXNUuu34FcNY0Ps9XLzmpZEgKk7HpUvZcq9j0ScVFlVcDW9UBdd
	 sWby0bkck2OAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CFCC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241559365.17307.18117882974506390906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60654e1a1756bbb3af4826c55e202a0faa5374f6e761631f80721b9ce4839a92
Date: Wed, 19 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742415593
