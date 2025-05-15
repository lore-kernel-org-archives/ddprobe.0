Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B361C27
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747291794; cv=none; b=WtKIkU8osQRl4JpWTbxEr1azLrb0QOiv7EsYnsZi0R15NK8RHwXqR22G2h/Z+zeq6KzLJJmRXAOsx82f0Rep5AyJyKgKPYBLR61PngJpfO1o6onWVwoT4k5ZflTrBlWpK/mBt4/4Jc4n706Aw1OsSquX7Y/IFQK9vltQolAp8nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747291794; c=relaxed/simple;
	bh=QuGxPRAA3NlRqz/eyj1uEFRx2yBWPnyp5WEvrtMxxV8=;
	h=To:Subject:From:Message-Id:Date; b=PONc9bjWA6s7qen7pC+eN7Ig2ESEHoTO1UPcWZSVOGF3gzxbEf2FM3ZPhdpMUytJdEJbrQn8CkpV/SSiMw/4mfTUdGfKwjtsSekTr+LgzrAGIWkTTXxARZeIhoFJkONfk6DBQF5uYqxJ0E2sH2acBaNGwTNU4MxCLpaF0kn+VMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOhwotJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOhwotJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0EEC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747291793;
	bh=QuGxPRAA3NlRqz/eyj1uEFRx2yBWPnyp5WEvrtMxxV8=;
	h=To:Subject:From:Date:From;
	b=uOhwotJ/YlmttDEVfJ/KfXNDYzWv6+4CAbBS0EI9Jf6FI9RzktaMO3YWmsjsaELzO
	 HM7/Qg6j5aAwHFaiyWcv3qq1Z6JOP433DplaoMHNC17Vq/x78pXoCN1BQpuC+gFg7U
	 ZkYbEi9mb3APczk4cMzyv6taLYGTokF1ebIovYcaK1XroMPuYkXApvRg/s5O3Z4jJG
	 hA90bO30AgOPVQig449ogBfQwEiYAhM9Te354ij1MGyCSL8bEzJ411bfmP2jHHsbmV
	 68oBUO7/pjWyXp7DiLo6F0QetzzeddY6zn67OU9EzmsJnhqJ2rRlq7bfUvKqiSKBzG
	 9VtFWXfV8aVHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF0C54754
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729179357.8072.2527681863614802909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9336c9b4f578255e76a82a4fd083ab425295fb211aefdf934989debafc02941f
Date: Thu, 15 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747291793
