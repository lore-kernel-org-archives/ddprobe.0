Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783A91799F
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780200274; cv=none; b=ocD7+J+VbVZFnRHe2XLQVEnPJLNHtoondsbPRl8ttshpsMKZkmCPtSWtl9L9z2FSlhBvq4N17pcsaEZQ8Bvb1z1XtBdENEs/SG3I+qnaH6L/D/DpWh0UPBjyYkpq3oAWpjc1wi5HfrH+unnRGjyQw6HHvB7c12QpzG60Yd1hykE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780200274; c=relaxed/simple;
	bh=OXDEqHx209D6Lgupa44q/r7sKSM5qySuSW5idT4PA8U=;
	h=To:Subject:From:Message-Id:Date; b=Gd7tHKtjgojhsT7+Ci7KtvOhsDGVtAhNixB09jqpnixn4lebEy4ucWtdFWUesF7SeHzieL8cTWLzBggi1YnDlYjmnCKvkXEJT0XEXgUI091Pm56v5aamnotlOAB7JowG45vQhl2/ndlHJBoiEfQ3Mdvk1Akcflu3YeI70FEPtkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7/xwKAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7/xwKAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F0BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780200273;
	bh=OXDEqHx209D6Lgupa44q/r7sKSM5qySuSW5idT4PA8U=;
	h=To:Subject:From:Date:From;
	b=g7/xwKAefCENqskz3LJuna6xCfmWlxxa9vGMwCaMYX3k3Y5Xyt5cCarGXp2AZLJUp
	 EqHyWeSbzBebyKUaSNgpZd9wYejcWqdQS0VZjq3BwT0qtVnYXczfaCo5nKTfPOsuBC
	 6rMqCcyIuELaxNS5koaAvHGcJpvjny4EEeGq+OlVrwlJCDG7ZEvFeEb2qmISgiET7E
	 DeZyEb88qFO76lrRPA6hNCLMgZoM93EgA3XiCUYrhjbFL1jJfEaIkNZmK3YE8IGyu1
	 DsjxV0UGApkjmjOsA3ilgNrgAwwUj6Ayz2pe9TlUd8nE2j6OnpsYmcuvNy4tpvqzQ8
	 hSQ/xOVgAku6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDA1CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020027367.18104.10219076832827998609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a24b74397298dc5221973ca9ddcbb7f1d18d63b11a728cfafa49fad6239b28
Date: Sun, 31 May 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780200273
