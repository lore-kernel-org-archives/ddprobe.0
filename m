Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBF123AD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759450194; cv=none; b=k0UHXLfFDr7tThvxjNUo7YygogO7L+dNhyUj/2UsU4J9RML/U3inZ0dAiIu1IjXaY+7y2cY1rIRmREF3mAwYpMYbBU0jDWbihSQPwnXnML9l1Gtgpq9yfK0/MXKXO//2aeuBPDlTFBLqbS7jYILpnhIcT+aF2XFr6EyPfYJ704U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759450194; c=relaxed/simple;
	bh=n1h4y1iX9SlJVVX0h+tdUvkKi4qRefQvA+6fXPJckOw=;
	h=To:Subject:From:Message-Id:Date; b=IgoZMY5lpMo4ukh4ReETp4XFscb9LUcRozFbIzd5KXxysLljlarRRu4zsWRfv9QNSybnYiQ2hRaSKw4GMJm8pSTwdyNQY8GXQ8chp/hNHHXaOmjGlD2VVxVGXMBw25IW00GET4giHSTEXwWSF7ZLMg8wwI0qKL5JyIkg0AO4if4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbg5EZ+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbg5EZ+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A062AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759450193;
	bh=n1h4y1iX9SlJVVX0h+tdUvkKi4qRefQvA+6fXPJckOw=;
	h=To:Subject:From:Date:From;
	b=nbg5EZ+d+ZEzlwuP4qDI42cKf1LBAbbFt8lj4LVD5SaTFsxqxTa2ZvzYMkr8VZAa9
	 aj03FvEquMWiS1L/TwKh8pXSZMu1P82j+1KsijAS+VX6nXFcRfoN13jfuyvupepTXB
	 KANwNZHKVHqojooffyntd9nQeITGVmsPyI1osO1vE9+RLhtiv6CAhwe6yboDq+6oWm
	 L8U+5C9famOazSvn+JpQWk/yn/OEz3pUsQlQHMRNZcN9VRu59GlQ9L4nbmyltl3zwj
	 ciLBhwL4Und/2Bj+Ha7A5IQdMOM9KnGP532R+vNEeS2GdRbZYSw5393tEinTFBXOXo
	 NiW1lclPQdkKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F084CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945019357.28253.7330053193535178663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0efd5566767e095e5232bfc104b30e4c077420de8d0034b7440fea4b2d400c4
Date: Fri, 03 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759450193
