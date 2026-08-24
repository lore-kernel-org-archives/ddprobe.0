Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C68C49364D
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787550034; cv=none; b=G4IP1DBD3rONHks7shoIIetFUilGVj2OclWWtPibn5Mh/0rrSkP7sZPuVO5oJyookax6Kjdh8hvGKcjlD+Im31Xl5ASmuvbKQsuIq+s4eKU+fdB8zAsdU9fQ8uEOgIeKmkWTGIDV5bXnAU3XgpKY6qyntGGfuS1EunuSj37hu1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787550034; c=relaxed/simple;
	bh=sUWI7MU46O8gGEp/9pO6dH7izqxduR/9Cf7yzjvHgGo=;
	h=To:Subject:From:Message-Id:Date; b=Oen1pmg1DHFtXtxviTPCi3oHzNMxHntZ1EmOIxdBUhCK45rgFU634TsT0Y6y/USQBcv6Gfi6ZiKM8+PehZ+96mKkD58J9v7S2jECE2ZwGc2Ed+PjCVDqBGuhmWUHEM39U6675yeA7l3QrFmn8bNCa2Efjp5Zz8QX69RbDIJnU3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUXZnnCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUXZnnCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB183C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787550033;
	bh=sUWI7MU46O8gGEp/9pO6dH7izqxduR/9Cf7yzjvHgGo=;
	h=To:Subject:From:Date:From;
	b=NUXZnnCMuiwlj4l0pHec719yQWWnuoljANMoB6qcSo04dZKczGOOxBdtGmEl+W9bL
	 Jgz9d8G7u2N1lvZH820AQRAs4WSyOXLSgIZ9w8/4lY+1O7APt4bPPlzJAT0QzmiepR
	 q9SdFRB9MIw9UoarsPODKqoIDqunhVBIZEjl3UB050z+BGzaWsj02WhoTWLk+zPu2C
	 WuillHY5ls4Z5oPOHtb4cWZsiT9I1DREe6u9jym0bsOiN2QATEtU6sukkriWIkurqE
	 U4Y/pzMlzPLEoYU5fYuLrrIUwpeBMXgfJNCuHbnXxcU6Bex7wJYf5+FaLZrcAkmjzM
	 muFTJj34fBYCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C3C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755003368.17720.14278919676782771058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096e246bceb152ede98202998ed77b06dd8bfd51feb241b7578956958eaf40eb
Date: Mon, 24 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787550033
