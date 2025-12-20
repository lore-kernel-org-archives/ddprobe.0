Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE3726CE2B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766233434; cv=none; b=NUdX7WHUzWgwUdWngMjZ+BdfBZRUYfJtFd1WV+wSXoCWef7U5x39HRuaGqJpb912AQwVchBb964qGr+ZxeyDjCgsF0XZBU2cqCoAx4ModNgBqeBUU+bgoT38BVtzdhQNHOYmcdUKYhxEYvJznjJ0XNMIyiINHXXvsjKWhAbLKAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766233434; c=relaxed/simple;
	bh=sIepCqYP2a+rL4SS0kLzxtNgrrmISPplFylCmnegjEY=;
	h=To:Subject:From:Message-Id:Date; b=HAWkrmwmKAQ8ynu/YZnxDnA7dXf57ZpUFflP0zWjOva0yxtyaRCC6pTqHbxD12deXMnN5qRV7AJODPPVinLvS46wpOYSc6HL6NBOBwl+NZg/8ExfQbP2kJx0MK+SLi+BcPBIbbXCFVySlRMYsw/4E0xvORODmRziaD4GNkxhO5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D03Pp9e9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D03Pp9e9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A56C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766233433;
	bh=sIepCqYP2a+rL4SS0kLzxtNgrrmISPplFylCmnegjEY=;
	h=To:Subject:From:Date:From;
	b=D03Pp9e9gAQ+kqy4Ecu642OiQ/OsX/1n2N4D6pOSPiN39q0XJozl5rK59rhy1p06u
	 /sRk0jBBiRhckv/0wOlvalydpnnz3uwldzeDazL8OxjoqMOpjAw3tWY2S9WcFKdz5z
	 Ijcz3nM4Dgnr+ec425oFdnbK9UVa/lxWbOE8cPjci2768bws8/sRVHRBYiwvYNjhk8
	 NZE+UQFh1zDJSJBCCFc0Esdk8Va1187QgZbJVbdl4j/eUfoApX0p/yzf7kcOIie7hz
	 unfkTtxltaCD32bvoqQYrPRgK2+DbzpQln5XqEW7/2IZquAm6A7UHEIVKGtRlXPqcf
	 ugE7ua5KEiCmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95274E668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623343357.8879.14210994194570454134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e43ab10e7fd96030d23f2483fb42c9641b1a83162605607180f5cfe4a24ef63
Date: Sat, 20 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766233433
