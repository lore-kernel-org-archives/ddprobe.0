Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5590E15A8
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743212394; cv=none; b=ROT5YvwlCUdkuyQYmNp3F7YvsMDEXTFPileJHnL0WCk4BDDn/ieJKsWvsOgWOmpnQAB4yHk5b+rDpYCna7CvoBmDi9gBVfIN8Q6ehVKneuhxrUiAamPrwmk9bZh+OAvT0upswsDXO3q5jxIItI6frXEFXFkCPD5MRxQVldVc7Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743212394; c=relaxed/simple;
	bh=jytADX3CKrQxQF56Be0RTh+nwl18FvBWWoOsbBQYcnE=;
	h=To:Subject:From:Message-Id:Date; b=MvwIsTaMErLwXh+3gh9UJtMRJec1tqRDEVmWNsPQAtfXBqfsEdirz2MDMF2OMAe+Bpet3VfQNeUkUFsvWqvXwtuwAOMaWfe8AECkH1v1cvND6Io1xexrnK1l7drHICnD2TtOjCGwTXtxiogwnZlFN6FkQu4TxySCGA0lTDCEw3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWNEykAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWNEykAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0329C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743212393;
	bh=jytADX3CKrQxQF56Be0RTh+nwl18FvBWWoOsbBQYcnE=;
	h=To:Subject:From:Date:From;
	b=DWNEykAFUfaB4jqBmJGhMrK7bgCIhGGmeev/kbi8asWjXUa91Qd+OzRHkZU5k0gAR
	 rQCKdnQ1hE6F3TNuBHdjUdtEjRxzYrEalEGvs5CzUOvqXNBSw34Q+fOqZvFEVz9rgg
	 dZUO3uk/l59BqiHGj6bvTydEz9azPyANCb9VRxV7lkyyfja5WmOKnRm/ZsWpCgzBQT
	 ir+AX1u379v1BUZfhSCR9QoXwVmnlM0BMDrrPZvtZrEmKmKyug3oCnNkE2X8vi90/u
	 HOv3EGYIuagPnFhsMUA7P0M7MVdPlAN4EIYjXcRKo4s5DG7nP9RrXBA7xjnUneVn7R
	 ijgT/1KBwmwdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75E1C28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321239367.9649.18235024146148550994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba59aeba658293f742228f1e847d0173202a594a964383016a1fef52415c68c
Date: Sat, 29 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743212393
