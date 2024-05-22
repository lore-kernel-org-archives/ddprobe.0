Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6065813D893
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716402203; cv=none; b=gYMabCrXL6KDizDnJz+MbveVcCkFqsePohTRnxPoiUxVzMZXRVAynJ93gW+pHC+Icl9ldkib3VMa6m2Fzlk5LLjvmc42Callcuo34G0p5v0ygNiZEFvIGbBXPZxM5XaW8iTuocV9sKqE0BE/KJf/A3gyDPcGYXDbQwvOitsv3iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716402203; c=relaxed/simple;
	bh=4gBFEDpzT0sHaIlxe2+cbhnvXZRkVk2fY0zhrEtQe4s=;
	h=To:Subject:From:Message-Id:Date; b=qRrTP+bZyzaMIwqZsWMsz1VP3sXgZVptvn1TO4XTUTv549vy/P7Jjai3IhkXReaYrwbefClVBgVKDaDaDOnyqVnZe3HCLfSx1ApHvEzRCsc+AhdYN9a15uYmGcv6v5FpLh6gplChHKz7A8bTE+xdu3VMejOIS+1xUxFSMG5djl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EY5b1wSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EY5b1wSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A58C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716402202;
	bh=4gBFEDpzT0sHaIlxe2+cbhnvXZRkVk2fY0zhrEtQe4s=;
	h=To:Subject:From:Date:From;
	b=EY5b1wSVKQFBTfrdujQjvvOw/7eOzMYgu+RAfB+F2kZorkcIWqK54OIe+0kgYHCgy
	 92tCtUJEnWJ4Ppwfw7D3POV6v5opywdQ/vPXa1DxGRjHm8GgwmH3qGOYhowuBa4hY+
	 TRtTvedyduYNKrs5ye3qIRas5Tue194gdTXrGp9O8ovvOL8Oj9Cf/dyw6n4Hx9Gfsu
	 2inV+n3yai/QLrLIDsyepzxg7FX7qqc14tF4CtR/+tIDJSG8wouzF8MIN25bkY12V8
	 qsK4riMVYICulLBCmevChT/zz81fUDoOMNVipcDwZBanoyI6iOoLz3rlRcaPP6x6F1
	 MXzCj0p3KqcOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D08E3C25B79
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640220284.15704.9680147640728236236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55cdab502ad13dea02227aebf15e8af6d0f93ab3519627eb79de7c05c601071e
Date: Wed, 22 May 2024 18:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716402202
