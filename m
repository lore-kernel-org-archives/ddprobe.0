Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5018447DD5D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784038714; cv=none; b=Ab26BWlm2mW3lMOZymhS/Y7IB0wm3bioIZim7hpO+3HlEGf7bE9YyOU30zxYdA6pYmbEeS6xNVz4/3T4ZQZNcqFW8WmYNMKFDHy6HIg8S1lnZWCelfTK/fv81PkJYjAUQXuIlrkwuQHySSVkFa6TkmB6ulbvc+8IHsU3n5/4clQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784038714; c=relaxed/simple;
	bh=UPSyALXtbYB5OVSkPa38LEZev5MRpV6cwIS0dbYO9JQ=;
	h=To:Subject:From:Message-Id:Date; b=ePAfHRQ8MIV9jS1JezeQoGtL3qufXWA7EeTf1ycHyXTXjh2gts7DcYkrh/ltTG8rHifX4JhYHToPKSqKXL2bbMxHLlx87JSorwW6hL5rs07dGepH4RItOFGLrJlxuD8QvOv5qkuhp7a1AA0IufDgxcHjyhJf7U9y7mZ6HsY3ayA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FL9fWL8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FL9fWL8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D534BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784038713;
	bh=UPSyALXtbYB5OVSkPa38LEZev5MRpV6cwIS0dbYO9JQ=;
	h=To:Subject:From:Date:From;
	b=FL9fWL8Yj59JI0zmfiHs/xfjJL8A5l7TGHC2s9O7c7mIS5Vqe8v82lKk/0L8ga26N
	 vz8ocPsdKTQ4ib5wrz6tdZcBtNUF5IvxOLuefanvAxiLJa9a2SQtA03+iX9KYcYuK6
	 oIgdrEfCSHCARB7Ev4z5QYxXuuzgOjuwU3Bn8GLV2qrC3A6AtsiVP7zEsrgUQoHK37
	 NLbn1L+nJ2y0WBtPw6U545NFhgBIcEbBYGZQ2g2BRU93hThBPTqHYVevYqmOA09Bvm
	 YnsV4iN90GVI8nEAMWxguipMZ+a5a174Sgs+QUOgl3TKZuqYws9AZicnKsOOpX6pP1
	 nowGASV4o5HBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD794C44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403871370.706.17585450548273731153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aee84e18efa77195360b80afb6fee2de2230a42227afda34c136cb4c340cd7d
Date: Tue, 14 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784038713
