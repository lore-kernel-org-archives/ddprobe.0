Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B863146588
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752847194; cv=none; b=pCqFBCL6p7+XjKbQPWmOG7zqpZlh1Lt+Jol0PJmVxN101Te72zXhalr3WiGDUc7XMsFQlsU4orzbrZdSXbiysNxMmEfL1Lq+bS1DJB6m9/tP1kqiL+bjg+vePPZXDFw0mC/2gS3vW7tQovgVlz2MvB0CT6XfzZi1dC0rG2F0kRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752847194; c=relaxed/simple;
	bh=7rPeA78dp0nBXRTXd4lG0X5+TklrWu5nU7wMMTs9jzo=;
	h=To:Subject:From:Message-Id:Date; b=aSwVs/D3om7ILtY7jykvF5iiwAQ+utEkdXyg0ItAxN+cxSLUfMV/Akdh1cSB1txxQWp/c8jvEupKuDE3mqzz/XwdwhuSQOzuvmHEPbChovD52My8wt3ya/A+7kshX2zLw/zAU43H1qHOcBvXTBFYeYjDkQhnHY3kb6NFAUO50rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3hrzcUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3hrzcUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F93EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752847193;
	bh=7rPeA78dp0nBXRTXd4lG0X5+TklrWu5nU7wMMTs9jzo=;
	h=To:Subject:From:Date:From;
	b=C3hrzcUD8CxRiQqDAWkeO2bSH7PNjA6CMGzfkEAtDdLfhcgJW8GL+QGVooVb8IzgO
	 eWmGut3tug5h1iOcwdN+FNA/730zsz3wo5m1rplRuS70jL/7CTDNMZDZfSREkVLwtj
	 ol0besVzF3i+6WJIW6lCb0rfKnWgIxEdZhsf6Dmyulb/hrKAAa3pU3nCiII99ZgDnu
	 0/kgyNZt6Tg9CTD0ofCG8vu53RIZSXsh09+9Q4y6DeIr/3WzPggminzSPl6TJkH2bF
	 jjqm3ho96hYTlW82euGh2gbncwC2Lym15kYcIrnhuwxYf6k1YnknS6BA5h+HpDU223
	 WtwVkNzhC7KPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE5C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284719358.20853.17578905933543120824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018824519310bc9d5776f550f3918fc8c0f99d7048d1f7ea04b1b5ffe65727fd
Date: Fri, 18 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752847193
