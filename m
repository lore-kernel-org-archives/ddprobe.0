Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022A42D0600
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771530294; cv=none; b=TX4HJIT+0mwiINsXNjyowOmG2lIp1XSy7c/vohtK+n1pDfYlmWajYeU3oVtz8GVmiUr3yPE3FwyPavnTIpHR4kLUZwBda7b2ZNIxZzviXkohii4rWmWr8/rRvLxPUadT/jN+sSg0lyjOG5rGvW9o6M+gXsRqdsoYn6iY7PtLaEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771530294; c=relaxed/simple;
	bh=JcnbFfKI//65nZB7jukZfgdWZDK92fHEuerq9AZOV+M=;
	h=To:Subject:From:Message-Id:Date; b=H8jsZmoAYYAm+Tce7aUOXZUEw4RbcNLwShQPNqWAGiup49t7B04SJOBFxnOSxEdidD/jD+iBOsTQx1jYL5GEc5vxDXWKLVxaIVQBWke4ABRs3q216iJ7AUfmNPpfetKwClYoZUg+FRKNj3ynLXgMMcGdCojrF9Bh6O6n8R0wQmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZQaX8u2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZQaX8u2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C33C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771530293;
	bh=JcnbFfKI//65nZB7jukZfgdWZDK92fHEuerq9AZOV+M=;
	h=To:Subject:From:Date:From;
	b=RZQaX8u24q8xBcADx8pqjteviboLBIYLKmuqVLOwpteG9BzlBbyaQNi2gpC8TotUS
	 CEcMDW6iKkqJSlA8yadz/AGYJGVoejJQ5t+1k54BqrNhyDLj+chg8Z2BJg0qLNpxuR
	 r52TSa0GXWR4G7Qfko7d2wq0NIiSIrMoIchGGgjXBAQHQYPsox1KbzeLnG7Fb+nQMN
	 8s2ZlllKYrXvP76O9DTN1OxCKTRRg9dAn8CEBViojTTO1iHENoQE/ZthoFuhFhtRRC
	 W5EdEbuAzYNCLf49we/NUNr4UH8IU68iazP2zKkw283yydoUmMol/UVPQQphCMY1P7
	 gYLNLhlGfJchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92007E9A05E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153029358.3422.15413284294266348337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8783cf325497893ec6cc1f8477d047aff5c9cbad2a68ad08f8509585c5d0d0
Date: Thu, 19 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771530293
