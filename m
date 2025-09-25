Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4076C2E8DEE
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781194; cv=none; b=adKFAbH92gXPImbfuxo89FUDdK4IT3CoutFzy/BZETK1j24GCBmwEzSuaeYGO3RXZUU0xjKFQTbh0+y/sD5W6nAfNIPHUNrkVRh1LjkzizD/F+vJ+c9h9oMzJTHGUr3BaJ6MRvwch8HKzWGNukAZUmcldt7lqqfoN/mN7NJRRHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781194; c=relaxed/simple;
	bh=NYaR47tH/Yrn836vrxQXhwork83P2UiyZVeDtHniPtY=;
	h=To:Subject:From:Message-Id:Date; b=M9NhECcDQlgGUz2I3Jri5jM7HOoyrRA1oVnZpDTTqRyYUk3zvukuwk4vQF7pWduOLQmuxDZIY0P4D278N7rRFdG0tOGajTFFqMCf0ekC9WdB5fXROI17D1bo3ryxlxLN1ZcBZo0jXyjL9NffSHN6G80hx3dwTgdq3oypnlvog1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9rTisDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9rTisDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A476BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758781193;
	bh=NYaR47tH/Yrn836vrxQXhwork83P2UiyZVeDtHniPtY=;
	h=To:Subject:From:Date:From;
	b=F9rTisDn78saP/RHMcn/DErSwQZVnyhuOghuGb/bUCXvbZmOd8R3Miq1sNZ3QA4Pl
	 v5pib20YXsKmOZUPuelnxkQCWG6pkEmt+gPSUIF5a6tsyoxGdvKchDMrX4HFfQuPhx
	 71+ziWvC9Jif1pDDtrTyKoBu6T7HQSsN8TUkH68Jc/DMZR3L6e9GH/SDvbIjnSkxUV
	 LQBXWOLKz7xXErC6l98sFueGkz65VDHs9i5C19smcNFfQK6M1qSoow8cJUWGpbuWYz
	 2HzMIx2/GVFOSz4v3viVH81xzWZ+Wi4vROF5qyoa4eBv0Zj0UMA+wfxcfsjRe1yuMV
	 XuBqlIrYWug3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926FCCAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878119359.11081.14708418878485342100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce4ee86fc05d8bc45caf2fcbc62c513d66d5a01d48c883b81c8b5eea142182a
Date: Thu, 25 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758781193
