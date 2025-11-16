Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDBA156661
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763306514; cv=none; b=bYZA6/wpJOGHuIeJU0uUufQ79HL3XISK9Laa3+ytZPbWY7fp9Q12rmLa9CoVV6JGR852Azt53Je5NB89AMWNgrVbrfwc5GMWvB3GGppghvyzTrF/iD9kwdrWpzA0g5FgginH7MxCdagZurCxzqngRenh+ND4IDK22pwNHlsC9gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763306514; c=relaxed/simple;
	bh=Z78uYTfpLD0JoDNLXD3LvMEx54+wx7Y1n/Tk9mVczWc=;
	h=To:Subject:From:Message-Id:Date; b=lr8JZ+VcIv3s4LCEKn5DzMUnv0LrJScoC9O7SVG7PNBwOxCHILB3cCchJ+CC+sSVRMq3k93krt9VZEUI8WnacNIQTcnlxmQ2sv1wuUCk+mxBwsV93BSbdaASpsj4ny4/gUw00bL9aTb09XdP8unEN19eAvBDM/Il0Tz8CQ5S7YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpaiU5wc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpaiU5wc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5839C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763306513;
	bh=Z78uYTfpLD0JoDNLXD3LvMEx54+wx7Y1n/Tk9mVczWc=;
	h=To:Subject:From:Date:From;
	b=WpaiU5wcnvUgIVZiiuNOqkaH0UhERunaDCWnWNr7nQYvkOKsk6lser4NMR8S8aT8Q
	 JQzO/OSzJyQQctrkcC5m98u6PbpbiO5cHuVqYtFytdHGi7PKO+Torc+AWAeE15Bt8v
	 qUUvwnN5cJiXJZSIW6McqFqk3XViwPeEtY/8f3DQK4dyUK4OSrIw4UAbSjm1DLYens
	 oUG6oMqwzTmVRVaruKc4jHR7wJENKKUV6Ee68zXt6sDOkx3M80fY89NGT48hc35QJa
	 BE2shiN7Kswvo0+Tfug0AyqJjuQkUqV8lTgJ92866F+se/zF72yRwbE6dCPGdmemSa
	 lwQFmREGuK7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F11CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330651361.30872.17490724014680419915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2238260004bfd1ee15e6208159ba67303d4c70cf45b9a944d90288032f3fefc5
Date: Sun, 16 Nov 2025 15:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763306513
