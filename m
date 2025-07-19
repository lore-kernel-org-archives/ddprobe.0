Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE149476
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752961194; cv=none; b=mnFJ79m/u7Mv3ixZ+uXcR1M1DgiBChOskwgNbpKc7443AssVC47GWNM7eEeGGjYadaRrQ8X/CS34qi3SIsOdXCUvmE/dfOSYk2M7x/VXLxwpfguD1Nqm5Mkm2E6qyuhzgY6NnADVvveYfgEGF6Ydl0lAqFj0wrEgZKZykkYrBuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752961194; c=relaxed/simple;
	bh=5DTxdr9nuNYce4mrlhP6JltoE9hCYwhCc7ZA1QOnt9g=;
	h=To:Subject:From:Message-Id:Date; b=gTL2C/q6E37BnqLSsZ7dasQvvK6U3xu+Bm058PEQZhyBD+ZCQFpuNm8x0DqOut02Pjwy6T/k3uRDjfD2ff7yzFGvEKOY0/XEiaBugqi5ukiosv+pgDmk9B3yQIMJYnw3DKTGRnMKpK0mIHRZewt1P5qfWEvamFJE2CFQM+l2EGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3qHVdWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3qHVdWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A99C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752961193;
	bh=5DTxdr9nuNYce4mrlhP6JltoE9hCYwhCc7ZA1QOnt9g=;
	h=To:Subject:From:Date:From;
	b=P3qHVdWtF+SX/v9R/aAd+VocfikIbxIi+FGK5c3QDVdrsBoqJZjQlxk2uUYCH/8f9
	 IVnUSFhN9AaOjpXrGRe3POMLb7rV+J23mljcMXJfYlQVvlpqOYn0cvBxcpjvRsKVNC
	 t76FxVV1YZefnUO1sXOq7CH0/yAfxhsYKgKFa4C8Ti5ssmY/02NE1rhYqrO0dHUkwc
	 4h9Qo14zU2zvYANIC2C9do7qL0EDU2eZ8bXxkz8jh+zzMnNTqu6F8hvN4wiGX3re0t
	 LhkHeKeGBS1Wm/mKuCJlE8oTGm4hdYNuFRlk7unEts70Ywg5ynuskeuDvatbcoLAMV
	 iVZEdHxTu3Wtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957EAC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296119357.19871.12694481468906935808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0093bcce1ee0eb7b0d7e7859469c53fe34582acfeda7d93f9b101f772c606ee8
Date: Sat, 19 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752961193
