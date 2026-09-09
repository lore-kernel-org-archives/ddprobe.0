Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324C2396D14
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788979834; cv=none; b=F5xlRVVHenOWDbK9yozd+7Q4pTzoDC4TqSlEviwSO6HQrSMDFS5VfrrYc6e7lHnH/IM1paanpuWN8ZuLJObhsmqWAbBgd5lKBwqheUF+ZY6TP0kW0+oKRnORhU+nyO/okCwalfiFIUfbQH81I4maNs0JWoAAlK++ikoGEXuRhqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788979834; c=relaxed/simple;
	bh=uNB7i3EbRWmcIQMzrgskAqfckJHsotG0y19jldSTmmM=;
	h=To:Subject:From:Message-Id:Date; b=DvcXdRaxw+jQyKzZC3ebkICQ8faddKHi3S9XCcvubXULnkLve4xImyRv/sE0mhyRv9YnbZB3jIHYznoc9Z8fbtJTSqtIOU5kzTLMI1RX7N6i7IS0k82I70GAYDqb0fvtRzM4YSRNxMe6teiMYQJQPlMOUeMwZ9+XyQttESsUyEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYtk2rWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYtk2rWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E28DBC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788979833;
	bh=uNB7i3EbRWmcIQMzrgskAqfckJHsotG0y19jldSTmmM=;
	h=To:Subject:From:Date:From;
	b=fYtk2rWZ0cs0U1ZMSKaq19IMThMetwF2vnomeYTgH8ItniN71psLYnlbPStGD6Duk
	 TTAUil+mz5zYy9XQvvoyYtVG4Y4mmHks3sZFBpbxuXFAqfatlWlRyVbbHlESopcwk4
	 Vzb1xm44h+3/aLq7Ud64340feU7SPYtIU4N7wFIeCo9PeptgV/QNbOGF1qTvLETMGp
	 87Ewsv38yL2TiNVg0Kx9A2wfh3CEa88SIfzeYMcLlKeh2WsSBf/H9tHoP2jc5gYXQ+
	 o+aA7nhyTJzN4qbFGc2eBA6Kwvmh1m/vknpqUDZTNsOXZVb1Rb+kBfdTXLr1Cl/I3K
	 JmC1vddbLPjQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA381C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897983372.25643.16562582961085982631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0df0aeff2f3588372207a08a1dfef9819d092d483a130de779a9758a791fb089
Date: Wed, 09 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788979833
