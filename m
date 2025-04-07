Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C14F2080EB
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744063194; cv=none; b=uZdqXwq4M8ugvTd6LyKSE3rhQOy+8cKJbushPwZN4WWDttbZkIkWr7l+CAb3NEuC5GdX9yAJpCnb0OCO2U/J8ErXngcQbfqSyEw3lz0+GXEnGpC7VM/tAvR1NfZXmAPhiYkUcbIN4BHAQWvh8/yDFhJQ9g4E8LsNwGpwuRvvqho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744063194; c=relaxed/simple;
	bh=MBxg0fZ+IxouZJCFs83swPkNsVnzim9rgc72TwOzw24=;
	h=To:Subject:From:Message-Id:Date; b=s7f1V2to/mNkQn4d6i+SJaXlO0jy+gSBnDHMGHjIK9i+d1172ETGfaKOzpmvRvkdMfKRhC4SDzGsMdcegKumLhySyRB5yCtCkkSJlsWvxAUj7106Opki6mWwoRAHLaGc3lzEf4wVvmq75boo/Jcl2KBUo0QiW30+rzvBVJcZNFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3XanP6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3XanP6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A859BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744063193;
	bh=MBxg0fZ+IxouZJCFs83swPkNsVnzim9rgc72TwOzw24=;
	h=To:Subject:From:Date:From;
	b=Y3XanP6RX4ArVM5repB6NJ2iLLBXLcC+cjj9zQbCAiS8Vgcw5y5OjXhHAcmqcMOww
	 4m5XCG6jp+zXs0m0oGeaenrDym2tGH2AZQqXE4BrNIYFxONqR+25U77sPDnFEeqYIY
	 2+pEWS31h5ENNUyaYjuKeWjlKafYZyNU4emstios8Bzu3UFoP1g9h/BenjXe8+IR9i
	 NqsaVT77L4FvcJDovn6UYHaHjNug3/sAWdwphQp5epMZX3jStfjh2mMRboW6WqcUWQ
	 UbpcNekhtv5CiQYNIofGx6nKsumVrUufXT8cPyXMj4Eno2e0h7CZ8ge2GrsHapLvR2
	 PPRJMQOW5pPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155FC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174406319358.22688.7294673125306937470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d62857ba50906bfadcbbfa90cb77214da957671f876df282dcf99b1792a5b9
Date: Mon, 07 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744063193
