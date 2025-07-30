Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E31228751E
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753860594; cv=none; b=tBqRRqQKXLVNky/3OcxZ28k27Hc/5F1ITlM4ILFOm8deQZouP8d3GEsJJeROa0UWhuE7OkpkLn82PkiMvrvYOjc2Lfd0+ktlFbF0A9H6a+FI++aIn8Rt3RqGioo6fTGmbf50OHVmw06aQu8K+YDR+58dnpNgXw7Lww1pzLpD1iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753860594; c=relaxed/simple;
	bh=GNbsTF5+cixbjT9O8RYhiAvTZIeBygLlrncW+OPZs1g=;
	h=To:Subject:From:Message-Id:Date; b=PEaVujHLl1UHzGZmJUtlFaF4TqRI0qWrq0eKZ2pD1tuO74WqJbTKphgDlyrBfVdL1uSh4J1da22gVG+3nGQHKspTfqhwEyVcgvgvIhm+4x5yV4N1HJj2tKPQiMFk7ltvsCkNHbmdHvPdO7W4PDfvGMlt8ST+LMyMrB5gulnjmI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdUx+bvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdUx+bvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753860593;
	bh=GNbsTF5+cixbjT9O8RYhiAvTZIeBygLlrncW+OPZs1g=;
	h=To:Subject:From:Date:From;
	b=cdUx+bvn1TW/XqhVE/VfsIGuHnAC+nA57irzZClbSkqa2XZ0NdmLUxaRIrZ4BrfhF
	 fsL/H3jIIynumpWR2s8D9KXUHhtaFvvicXgSiXpmx+3naeNDnF5J40LHfdLbhR3kim
	 PDQX9lFktzqJIPgVq+qrSacM6keNRXhMBic8c8yVqShOUDeydSWeP3Yi02trsa83ho
	 71N3OzYHMa+b7d3wyYx/fAYoVdgPKDeMzejVmhCWwz6G6Oo//GNt73sQ6Rkl3Ssj0S
	 vEmaMm9F4Mb/mFlkKgeYZUIYCplKkpXQLSaOj0c8DQEoZU4uwzkgEfAWJhCJkAL0fa
	 trREIRqioOL/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE07C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386059358.4553.14218813867849386008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bea4cb314bd44d533105c3be84bef4748547853f6b2580fda7814dc16a417a
Date: Wed, 30 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753860593
