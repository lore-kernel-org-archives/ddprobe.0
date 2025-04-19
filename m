Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7342F1A5BA4
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745063994; cv=none; b=MboSjU+YMXQAhGG9402cVuPO5UUTTREBg9uoON4d99muMWl0GqTMYsCdjhD4BG6K7CzqZF5VD7cZPJm9NpV9uqPCUn09O9+I3cQyDjkR8avbgvQzX7ca0ls52ov7qCn34md2uH1nGxqGn4qr5qbEkKURrUq8D+fjkRRBGBzJSNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745063994; c=relaxed/simple;
	bh=MbcxbAL4g1H0+ZLeDeCHltVnnMqcQoAiG3Nhey+RWws=;
	h=To:Subject:From:Message-Id:Date; b=mEwqRHb0hqxHDr4jTEgLSDzLPgSrqGJigsSgOOtNAMwk8NwBQeGfjXW114D8hobbPHfK33M0NlZLRz1qHYLzM+VelUj8kCciNoBQomOvKaBSNhmWlatkK+RAp0tx/sXsixzH6zvdXbEgDSnV7rXKBkbnvezxbAPKcUm2EPit2xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeNdFGGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeNdFGGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6EDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745063993;
	bh=MbcxbAL4g1H0+ZLeDeCHltVnnMqcQoAiG3Nhey+RWws=;
	h=To:Subject:From:Date:From;
	b=LeNdFGGYPvy+o1YfeaLUsiwHs74CA8+70dPNfACrWnlbevtZGAh3Oh/u5TOpTfVxf
	 AKGQfoHPsjAxomxLYYxY5v9XMtmnslZv3wmfwUPAzfOFepuHD+KLuOTfzCokZTRMUA
	 KjQr7/U+MoVZdG0qLL2fLcE75ywil3k5klWOYex8Er7cwhqfbIZxMwX+PvGZO5IWhX
	 mb9I78UQJWoNtrQo71w7bCPPcmFJusnPBfswqy1Xl2x2SSVUJ/VFDkITA/v2Y9hHTG
	 Z5eT+eH5LkVh7jznM8I6MlVH5lyEfHcDgzeqxnVX5dhMT7xPhF+Pps1cm3mHNT9WMt
	 UCR67BSTYt+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73F9C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506399365.23965.15236438159364752928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3723e3bb0bba4f53433f8151d289ff802ff209ba24044515fbea45735b80f8c7
Date: Sat, 19 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745063993
