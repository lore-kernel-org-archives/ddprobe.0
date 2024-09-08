Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500542572
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725756354; cv=none; b=AJstnLSqYYMqGvVHo9i0nVxmzO2jilGX1hEBtPtL2LmnDVq8O4tEMCo8XRnZvalIg7TIln2TVV7MsVZgvX1ouNyrfo/h7EWi6pmEEQ44fnKVvOsaKwHs6oqLzQHcTwXug/SjQixM1ngkudmGiZttxOc1D6lGuKGsDSHBmgntjnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725756354; c=relaxed/simple;
	bh=ye4h3pp8ld+Wpv5pyfCmeshvoRJHC1AOnrx9GptNULw=;
	h=To:Subject:From:Message-Id:Date; b=K23vbf4DpFRJ7pSg7JbUjhXOJadPwizoZzadvNo99AUkQzaHw9JjbpfUw1t/0F29aqW42jWaoewRresY7WfUCeeo+jbwuJNnwBpCqsL9hHaUXGArIABk4QFRSj4GcZHG1Eld0XxPlGC0PAPVVTKhB8yUNG9KQUxaKeP0b30+DPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow1WwNOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow1WwNOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD15BC4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725756353;
	bh=ye4h3pp8ld+Wpv5pyfCmeshvoRJHC1AOnrx9GptNULw=;
	h=To:Subject:From:Date:From;
	b=ow1WwNOEX6Et/25hX4uGB3fHC0iIT0XCl/CRWrje9z3zDQ2P/QpmxvLAKDC1rn7B2
	 k0YfWnhas4sVHw95WY6mBbGrBArmyF7V5POJZKhRe+Wkq25LrLSN648yFZ0ds4954i
	 21xEavEYvT6r2WsXNt+pIcXt8APm11K6rGJZv6Y2QVsavHH0pu/uQGQWV0b+n/7f2g
	 ginSBxz0Xzbfyhkl1sgBLXDZk1lcEpCP+mpTKXOXDztkvx3nqWG48TJS+sEr5uQfHG
	 Mu+2WT0YHYzJrLklqYiDdW5XIjBmvdCZC6FDv0543dDglm83mYwaMDSq9JTUo7h89J
	 cV2ls69E4dkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E76ECE577
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172575635361.1485.14052777543023299614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6d45f7829b3d309a4e19dcd92d75453cfdbb474d2bd9182fdc39e1c2fdb577
Date: Sun, 08 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725756353
