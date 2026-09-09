Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4976C55C329
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788961234; cv=none; b=BPTNDV6dnDKzqvhJj3szSlXvIFxjc3ksYllP8zrWubzW5SQq+OMQmORSA6imAeay1Io2epc7oD34zhimQvKS2gomv++1w5BELtu3WFnsSUBiQcRLdpvfKh8seqpu3bWmzPnb+FIt5/SJaSV0THfi0FOU0whXnrgLxZWo7ADByxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788961234; c=relaxed/simple;
	bh=H5OkyJlMndY/it8Y6vbwZn4lLnC3YnB10fxVJhswtYw=;
	h=To:Subject:From:Message-Id:Date; b=AszsKymunVcallGyNblkQJPITIXOqLHB7lfzTJSaKB2Wo7a6p2NQeI9vt+sScsdPP5DvTGcoPnK+iy1pxNpZNFXzpYWuZdWCL9lZiRbVfK5DaZc0Cu//KVIJGWiC0aRIsD4zqz237E1NxN8W9H2XRE1RIySwEU/uNBvHdkDIwq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4ujZOuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4ujZOuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8B4C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788961233;
	bh=H5OkyJlMndY/it8Y6vbwZn4lLnC3YnB10fxVJhswtYw=;
	h=To:Subject:From:Date:From;
	b=E4ujZOuUSDnnUIQbfsdN6+Od/wtKDk4hNzOd4pu9SY8T0icrW4PzOH5tLbUr6twti
	 bG2TQEkSGESGUvRRF8HIGJ9OKAzYmzQyWNb9rhjd0q+M9M+QLlpFQ+UG7nfDWWlHAD
	 8V7DNlwr8sNn6whodgQmi0I1Vpr1hs6VqLp/ZSKhqXneBpUJAnSrWQ3JAlG16yRhSE
	 9sN9MLZpCeDiQLoXbiHhmsHDsXY7odX6Pl3R4e5I9jMa3i7dw2n2XMIds2MXMblg99
	 fpB1y2XZeuS5fBC3CanNqVNWYwemLQSTXPwIGP2brBBx9P2CsqGH1vZZ+SNoWizD18
	 tib3pYmjmxVuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE492C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896123370.10769.8333983040063769148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70095e3394cbb5973bb9391af2146f33e80f4820c0caad6af1e48bc24ebf2744
Date: Wed, 09 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788961233
