Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B791E834E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753454393; cv=none; b=ZWe49iWm32iVT+p2rU9u64DFHAMhLVOwfaaO2Yoci1ptrPqSuEAhuRjr6h9peLUKj8AahE87QOIkcFjZBythg2hH+uJHmJ31pNy+EYCuf0MXpRm973Us9hr5XNRAzY5fk9AhvXw/62/mI+j6uJoajk5MGZDehZJz9nloyax504s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753454393; c=relaxed/simple;
	bh=JiOUftR4AgFFBLEhyL4sejCH6gz7u2ScPQCgec1tCTU=;
	h=To:Subject:From:Message-Id:Date; b=pjA2fMxkPkLMqHxqdHjHm1Gefg3nMGTRV1icf8aP39qHF/yvYtVF9vNvqucOmGqaw5wPjU07hNB5NsVUt9wLNOP76WNgk9EX2EFNYczaA1UiFSVFkRrQpJNGWDjx0exkxZQn080OQOjwgTibgGhnN1zr7s/K8XAGM8w9qFGzrng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2aQSGEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2aQSGEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFAAC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753454393;
	bh=JiOUftR4AgFFBLEhyL4sejCH6gz7u2ScPQCgec1tCTU=;
	h=To:Subject:From:Date:From;
	b=n2aQSGENw0mrtVC9k06Iw5RIlM91K2UPP6QkYux/6XwU6/OEI3i7zWcQxSbHBqJLX
	 YWDNTFmVVyolIDUk9ZG1cmOjcH+qHsdSUupqrnvA9ofcK+c+3/QOCHp49ZKOd3lRWx
	 9xwFvz5wjCh4r7NkQN0dgp5e2hIOHzryUzVCZvIJvmoKd9ppEzuqmBqPwDiVnIN+Em
	 t/qR20gutHB/Ta3JmFyeMddUqdU8zogPoKWp85sr3FUXBhyYkxhSjK4bzcWp6FEXWs
	 YjIDWUjqPM2p/1SrhYOxrCMW92AXep2H8UJhCtJmqsIAQD5V8EVhn3auhOl+nFgaCH
	 Wn15nG5el9qFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F444C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345439357.9441.7310316137764779861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45300fec0732afd3ac8029fcc9c255a60652cc62bbade2c5477f218489fc5f53
Date: Fri, 25 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753454393
