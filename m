Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA8C33EB15
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764187374; cv=none; b=RE3a1u7EdoK+AtMP5yF6TPSbYk1wCZT0FATNl5aKo43mte73NYQnUjFitzkyAt7XmMEwQNw3V+VNrIRPgnYYG7FOUHjqhRT47/n8Skv4nY0dxyLYkPbf37tAZqXbwlY067ltjL0is/mQ31UDgUXbVhldQ1BEGCrZvKe17m0MlyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764187374; c=relaxed/simple;
	bh=AeJzDkBPAzl0eZLpBiaquZlBo81mmuLo+qxFNPKC/mg=;
	h=To:Subject:From:Message-Id:Date; b=FUpvs68NmcHeqT6JGTgr0AaDXucqbuEP/Aej2Z6jW+jMA1WnF+KZCpFYXNx4+viu1OMDpvJYpOZYru4Hg4rFByL1LMKnCtlCW+ku/vhYsU3a2jZgDjLBl5NeR8XmnmoWiPTyr3mo3J8umbqkPz1ycA7BtYp2lfv+QGdvTiGmnt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1uJh22e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1uJh22e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A8FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764187373;
	bh=AeJzDkBPAzl0eZLpBiaquZlBo81mmuLo+qxFNPKC/mg=;
	h=To:Subject:From:Date:From;
	b=k1uJh22ewYeID/ZmlcXVMfGxiQ7CnU+HxCSn0XZhdkrNgZiLlqUUG4GHgNvdUuPSj
	 2IVpiJg7MezuBpx+zuNxZLs1wxc7p/g1jHxXNSU64I2WxtRvqZqpfpxHw30uqyytl3
	 wWsDfN3eOgBaXJEx5YIUFxYQzCu51sJH2zrk7tzQuzhq0w26WNWNGZ3NP7oB2DAJpT
	 wgcLDFn7VjB5CrGmv+vuZ8azVVNtzL6hnqUs1pZSaEoSvqUAqFo9hdq05/6ejHaux3
	 QkpNyACOJzsHIbn009+Ayh2YkKsXen555Hg3qU4q4IHz0DnpOxR0NpxKjLNepN6mNO
	 wo4LFIWpzfQCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9546AD11195
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418737360.7285.3570557761582264030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac4d87034aedadedf7b7a32875ab7a490b3af787d4d152196630e053837d726
Date: Wed, 26 Nov 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764187373
