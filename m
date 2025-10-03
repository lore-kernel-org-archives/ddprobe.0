Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8C0224AF2
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759495194; cv=none; b=WG/17mLwRYEaU1AX1H3BsA2l9Ubdz+71GV9L/rinNuX39MGXTUV8cL0cARh5p1/bGa/aPiUTryVKT+rUCQA/v9XO8PySw1AVUUxYlNONFimJaJj3ST/ao+fG07JSwIfeE6yHjoUNF2hKcgrEdu7D3gU8O1MAp0A9i/nOjK35ZX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759495194; c=relaxed/simple;
	bh=CmwXs49+hc71d1iMLc85sgwZ1aVcl5pey78TymTrD3Y=;
	h=To:Subject:From:Message-Id:Date; b=iecNjX+ar8MDVlkiKHa2iHtII58YG7geWpvSSMlqzSuUcrWTJREy4LOUZvK8gds67aogjlq0In/MfSj+n5IMcK1YkQl6EWOUeuNQ2LdWwExKB3+fwC3XwJvkA7A3xyXB+qMQ6j380Uecj/xCB2iHDevRTOrcR8/38e7pAO7lEdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/iR2+LC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/iR2+LC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F03FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759495193;
	bh=CmwXs49+hc71d1iMLc85sgwZ1aVcl5pey78TymTrD3Y=;
	h=To:Subject:From:Date:From;
	b=a/iR2+LCG1By6l0XJLj+XwaII1jyYXwhdArQpIb5/m6JLuizzm2CoXqn9/eVflC4O
	 2L4GNaWRgYzEq2Y6bLMts3fY8ZrtWdda8Jc0rZoLQl3UOPD6Npskbi+Fo01UVU75Qw
	 2/OJOPwq7L+xuG7PzQ9HHBhzLHhaIWoeoLaRkpdE2CjNyk7oBEEfweVvQ7cgfhiruE
	 Jt3tbGZWUpJ7bc9j15QO2er+Y1TD/HjA1cRbzjx0evmX5Z4oRdGTbJ1FHtlrVz0MTj
	 P0bbBznyh2+locIDJjS3JR7JurnhQiTbuifwA9uzgYnXyXaSO0B3LWRvxBguyFKtqm
	 waR7MFtcZsFfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F3CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949519358.10332.969689623158539141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c5420065a296031a2c990d8d9a3f9ad8011599dccbfcc96759969603e74010
Date: Fri, 03 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759495193
