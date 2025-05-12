Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8D725D53A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747043395; cv=none; b=OW4zs62o85wtJq4lCMIh6P8xtwLTrWVhXO7GEJ7EU74iti/kvH2EYwZIQCvaMVZWoBVyHmSFk4rOyE1e3ls/SIrIUseI7UEuCAjPNF0Xxdpzx9oSpWi/8cgX8TYltA+TGQMaSG6iLbMMQTgHiPVRg9MLAHzHQNtUEnHT+28tstA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747043395; c=relaxed/simple;
	bh=petXGs1B6UZNYIaWWjpDbkxs2x3uIqXh/sARepDQSM4=;
	h=To:Subject:From:Message-Id:Date; b=JmFqXOwn9BplRhj2Iqeo2KG3Ob42p05UvHUOu3HYNkVscySWhryatWnzrbj+Y/mabJN7RZ7GtyMyByGvzWx7nOVP3hj9FYG7Jhdfj3r2nWdJWFllk66tAkvSeeV0j53PBEarpsLQkQnv2dOQ5A1Qrh162AoyoKoq27LvyPPqnD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FReucs6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FReucs6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E8FC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747043393;
	bh=petXGs1B6UZNYIaWWjpDbkxs2x3uIqXh/sARepDQSM4=;
	h=To:Subject:From:Date:From;
	b=FReucs6kb85YNM+pmoDB2G1AaCqIQffhDNnB+9GSS+cC8a5RedfCfBb+ejwn2bNLK
	 4e7UNHFY6MKdlAuVneJMCay4he7pop5CR5TeeEuIHwYSeUZUpEiRqoJB8fYQ0M2Q6A
	 CIBZVxyKbXBPVr0OjX7WkVqtZdYVvW0zjwCPcI74agd+Y/CSBtSZS1AdHQOkl3P+/c
	 3oIfa+AaGfPrVhP4SX9jFfW3hwSxv1xwiTrDqvKBxnbAGCz8WZTwSZMSvWSH4OeyED
	 io+xQTsrdOje/B3qbZQdyrWeTZVILaO62iP9Cg3JWtK3IT5rARUgZujakH+JxXUF7f
	 4q4xSL6JTLoiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F0AC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704339358.26790.8027786837081342911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd84f5ea3ecbfc16d0665e61766f4ff1da21b5810cfd88dc8520c2c855baa3c
Date: Mon, 12 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747043393
