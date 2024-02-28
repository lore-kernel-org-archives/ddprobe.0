Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FA336B09
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709118497; cv=none; b=mvJBsQ51hUgvMEWKpFAQ0otsnjWPADjqYwrn+aTPedf89AwaL2PyNU4DZm5gQKYRDl2akAJ7OCcJFvk6g6D6QVuov15hspqOJZoA9JyRHMrTwt64cEQ3ffFrXkqK3h+kQ5YYeaaklzqlZg3HMHBFk1K1K5xpD3hDaDEd0iJK2aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709118497; c=relaxed/simple;
	bh=qMRxmIti5fPJgsbPmSKrHgSYdXLOiw1EYzOkuIX0R18=;
	h=To:Subject:From:Message-Id:Date; b=GBoO/v4cp1a6GaSEUaurG7DkJXWq8uP7QGQ9pCuHtUFO+u7s80MVjt8ZZLREWQltW6JBGfFQO3M/pWaMZ23u6vxA6RFVlzEwvQ1XJNz0Cr7M4Pp+yc20y71EolIH9+rC8wPaTXrBURU0m8XMfYaieE+7Juqb59cUboakpM+7d8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGkEvtFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGkEvtFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AF3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709118496;
	bh=qMRxmIti5fPJgsbPmSKrHgSYdXLOiw1EYzOkuIX0R18=;
	h=To:Subject:From:Date:From;
	b=HGkEvtFT8d/zvVArHDw3GiuqFyrr9iAdoLRO59cFQCt/Af/UEdRrC5ESw2WqU4yBx
	 1SoLl8ybkCUXflKswGlLfEbdXwu4sT2kqoTeTJE8yQ/er6CWvenwXfW2imGWyCYsu1
	 wvgRlrKFbAFCV1NwXO++ZQBk1D7ed12Rr3NbiH3w11Jy4oqamlvtpMTHhT8ywzD3HU
	 B8bLXxq0VYE3IO0crAlOS3DP/Y5TmvZJgBr84TCAoAUdFKIr33h2856BTkGhkFMzLg
	 xr+6fxm99u4/wr5uSLlnKq3qQj3aBdaiCKzUSTYqHp6+sSRu8n3keLlzpNGfF8kolt
	 97MO88JQK8oyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDA8C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170911849637.1120.3285451246154582860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0200ecb3356d75568b8668902c3855a255034dab6d4c2f5cf97a39d3caefbbac
Date: Wed, 28 Feb 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709118496
