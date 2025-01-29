Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522D96A33F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738133154; cv=none; b=uPEaBFSIhtrTReh1xctFQWlg9t8+iVkTn0ljFmcC8OsDA4Mkj87d22OJfcxF6HDlFl6O8ClRUR/ZCuYvjOnepY7iyAh5lJneJwpHGIURxzCojyLxfJX/OMZe9QPrX90JfpvfVrnz8Ysno29f/rzGp+5s1+RLi1K33bQLFfpMlxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738133154; c=relaxed/simple;
	bh=zaCcU0TAEfN/cxpbVjMMV3RgP/2OSdosHwxjxJAGH7s=;
	h=To:Subject:From:Message-Id:Date; b=IhEl7FAXtEThrEv9NXcBZeBCkAVdKJGX8UluO9lTGbqXyfmv6JIT4DXIi0aSk8J+R86tiec78MZ1dkQsW6j0RCvedATBzwX7xp0Rg0q4IU/gz4blQFRCbAY1HT8fbv2Un4YNfRk+dia44kSjqkeEQG4jPWMPMK8ekQcTEBCvPeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZB3DgjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZB3DgjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFF4C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738133153;
	bh=zaCcU0TAEfN/cxpbVjMMV3RgP/2OSdosHwxjxJAGH7s=;
	h=To:Subject:From:Date:From;
	b=LZB3DgjPLqk4i1bzQmDx9RhgekpUg3cgeI5Y4/SVyDpn7Eh3Rp5O8Y5Pc3ua7/sH2
	 tpTQWFsyJXclmZEUvckJtEaa9F028fI1GEhFts9x0aU+5U9qk/iwppBJVncedx69SS
	 Inb8efKp1nb+JY7uyf7lbSQW7KoXMvyRJSndgXvtxjA8vkRPLT8JGBB3gKJj8j8Vba
	 jkXj5Za4cutVIguF8QlEp4+wkCcIOyVjK4mS10NdMTUpaLtKyyHeUnC+87Es6pIyyL
	 AzL/fV6RaCb/y3Jhn1YSpquEnMQHZW+ddiUF6V8drhLq5Rd7uBXG/fOfb8dutAP6HY
	 S6SaHp6CD5ZKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C50C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173813315360.377.9012303719273370129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90d6aaafd8b12883d0a1adab7f4b971a509b18cc53fbba9414594fafbb477cd
Date: Wed, 29 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738133153
