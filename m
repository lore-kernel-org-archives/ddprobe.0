Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C884EBAF3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788453034; cv=none; b=DQs0VIX9vP90y4ZPG07viDtaXG/mHnzptwG9zG/I/GYHtQcxsIRc07m+9tZL7WOAQMtow1023e84DL6vYCc4PjR+UnnQ/LqpkVLnaxnt2VnVv85AIb4K+ZKSBSje7uhCti1MiLKEP9WNoRsV4Ir1aua2DWz8A/Zth/0ajsNayEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788453034; c=relaxed/simple;
	bh=yZRhXANTlXYc0KSVeDMGn8NnY1Bex5688aY6Oup6mo0=;
	h=To:Subject:From:Message-Id:Date; b=rYqCLBFzzW71fAna2IXMc792+/kj9XdngbGIuPDA6WwvhRqWvxUyETXUjNDzAOCInFZroSDxULBEiKYuNg1sNLYvkwgczPQMFNsvb7L1ThIbIlBMfDfTlsz7PqiFevmAdJUNiK2W2gNveauaAKJqyuUU/O0m/7hM3rwbyM5oOQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2EQo9bD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2EQo9bD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE718C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788453033;
	bh=yZRhXANTlXYc0KSVeDMGn8NnY1Bex5688aY6Oup6mo0=;
	h=To:Subject:From:Date:From;
	b=J2EQo9bDGS6ogkT3u3S0zsoJDGK3innBHYNu/VkDp1dvJ1S+1qjG05L7Z5DVYULh1
	 KfYp7dAoLGU26zf7yf6Mmxjfvo36RS+OfCYKDEXY0BN5gz7QQRC5ap4TQoxLtFql6l
	 KBnSCdglw1vCjfi/hf3ui8hbkBhQ9i56xINmBryvbV3uN5V0g0Wambm+qoxe1XjDHQ
	 aatkBgr/oIOLxljOBqABkKvZyilR/v8s4XRokUCl/7H/g2wM3uLcRCGpziwGQz7HUj
	 1ZG00rLYrkzQqP43sk88pXr+m/sZLtz2CTr617jtLh3jXDktiUcwBZLGkqi2B4WLAI
	 vBslHbXs/m4CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8AC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845303369.15735.679753675472481826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cdb5ab7b77b38c376d2758a6c22b775873f83b848df8ccedb8aa91050d01cd
Date: Thu, 03 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788453033
