Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8C286334
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743875994; cv=none; b=AFkf4tRLZMaB/KgPsa4YDmaxZkxcWLiZ0xo2NTvivaGx2bFAwHpjDCtrimqTqoWPEX8TMU2dMRFq3J/eN54jxzxg2+B0zJruMZkO52bZwtEuydPzK7JAU6iJV04okk84wUEINqe2VYjZyFmezZOjOY2VQC7DLq377pzC0BHhzWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743875994; c=relaxed/simple;
	bh=IrxxbwGmBCs0zjkC/8TXaOWIpzOGItlo8AocMHvhlJ0=;
	h=To:Subject:From:Message-Id:Date; b=o+H2F+t2mRC3LCnYtAA0zgF2VhY5FLmQxavAAZ7u1qfA8layJPvUK9F3huxm/shUvhc75anYpCBg1m7jUCB8okcaegFebvxeAdf9sVzPcD7gJDHFY+ajFImfVldTt5iWmVtO6NxI8lMFOxyyFQyoDP+2ZARGx8u1Ueh8ryYnO4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQSbttKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQSbttKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B05C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743875993;
	bh=IrxxbwGmBCs0zjkC/8TXaOWIpzOGItlo8AocMHvhlJ0=;
	h=To:Subject:From:Date:From;
	b=vQSbttKX+Dwk9ddf59Pfy8o+c+558UAdvMsBbzZghy3F4xTGOnfEwX7mhDbdwvMMX
	 ybIwutzw6cudJLrdl2gstH3HbRsI2moSxTZgEQw12cZ+rmghy0agPXckVSlLwgUbhn
	 MJdI5bWWIJxkWyaLBFQsyMEJL6YsIFiwGfXYJO8YzDcqUh/lT03k61Ljbv/b4Az+Zp
	 unq/qLnoVxyKGVi1jJypVyglMycmMNm1lGQtfbI5qaJpGhfelcdtoIUsu5dNgIOhwc
	 0JYIOgz89AyxjU92FXfsZuwlChSXN3m7ZNf4kSkPc70Cr2Rgd2h9+s48ewVA+3M3Jg
	 PyXP1tpgyTzXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDF7C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387599362.12170.1976549512154337491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d494917fb0d40dfe7c40048b2a8b4b6034c45eaa3c878b9cfb077ff1ed7e35e9
Date: Sat, 05 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743875993
