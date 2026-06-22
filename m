Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AA330F7E8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782095794; cv=none; b=dqVZ11LsmIs3zY2YTA9vKJywEFbg8TbmLtgkCnBYBIm1l7crwuO3Ndg/7EAu/U5XJ94+hxBXBwQM/wkFlnNlps3edbdculftPOF2XGOqZ0tpjELDOxWBdYe2imK+tEFKHL0iD0zndCLi+wZVNPC3I3dxDpx+JmUymU4ueelagvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782095794; c=relaxed/simple;
	bh=o0jbO5A3pu80K0x92I34fz0ECilyvN/BmtfyyLpUQYQ=;
	h=To:Subject:From:Message-Id:Date; b=pUTvAI3PatJOO2gvhS9Ne1EDQkUc8ptGvLm8mDFHN6UPzXkYIwNSM4a+UarfG2m99KXqwUpcqHamX7Xsfmn9NNtL5Zg6UUcVmAjFPIAJb0R36gxG3mgToF21N/xOEnEw2sHF8l0NNohhdVKV8+X4NIz40cMoHsOQQHTKb4VR7Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCo0YMvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCo0YMvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D024BC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782095793;
	bh=o0jbO5A3pu80K0x92I34fz0ECilyvN/BmtfyyLpUQYQ=;
	h=To:Subject:From:Date:From;
	b=KCo0YMvFYUeEsV8AnGA98k6UrYUD8kGlZdkZH8zgxYoRJmMQZs/67/OlEvDtluvYw
	 6hAS/Kj5jrXDZg5xwIFQaBuupvkktEY4Nc6xLrzN20Qj4lTVsMCt8LWCwqmiRLDmqN
	 yYFl9rNqkSqYd1p4haD+GxGPOlnp6oVOPpchYTr4HCKgaox4Pcm1AhJxlFtrgxPh44
	 vHYvq3XtpS2F5gF/PkiMcuAERfHPXa/PEP4P0FqgwClnFZOSjTmBjsOE2cHgdlaLjq
	 c9w9Ki9Wxja3DgT0s1YMg1lhWWQlp0SkRICOIVDxgSbBzjZNQkw7LLj7Iz5nkpX3Aw
	 2h2ktcz5bsIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B59CD98F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209579370.9811.68778284566360181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe930612a3e38b5a6778782b3a1e5160ccd2f66f408186e8a55f31a27f7729cb
Date: Mon, 22 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782095793
