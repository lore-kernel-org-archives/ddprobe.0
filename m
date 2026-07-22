Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB583655C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784734175; cv=none; b=ZYkGRXQ+LWZIkXKhmg+nM83aL6engW/iI1EWpK+4rJdnfKf4N/aDcBQrJrZalZsyEqbzA5fsCkIwWp1s8J2K5QNsDp31JXwR0VwvgGyDqnb2ds3jJqKNloGYxuZUZcRKSuzM8joKgRHzsZWIwNQVzDPomYCpwzWaaIb9JsIdQp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784734175; c=relaxed/simple;
	bh=WY4ruJ0krOizsyOkBYQgocyQ8hFAjoM99uc9LOhFkxk=;
	h=To:Subject:From:Message-Id:Date; b=bINzl5AmewFVIbdMv4bl5jnlEvJbdQWpPwAqSpI/MFyf3L7+jIs1gf0aCqwzF96XKcpRKukC/BDd0UJlDjrt1bW3TA8Pd06ZFNQTXtW6yWjyMkaCGmv1MKLpupkBfbYJBSusijk8UWe7j0ssDm7eNpoe8cF0KLQl1hVVp1lUNUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pATQFg3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pATQFg3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD08C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784734173;
	bh=WY4ruJ0krOizsyOkBYQgocyQ8hFAjoM99uc9LOhFkxk=;
	h=To:Subject:From:Date:From;
	b=pATQFg3ToL/wbflyUQCBwMt4iS0P9WahJX00FUfaJO0+uMR7GB1/ZFQ0ugISaS+G3
	 qBzP6rHNJCornWV5S1ZbFnFKyc1df74MQpSrg+2otjS51fI91C8zkfwfbSdY+Hftup
	 vOLQemvViOhYZgg9msUZrfLiigIUnpXCQuVPDssEC/FZd0HweSQDV4LYTW4hLLEFz/
	 FmS6Y7WBUtpzyJLnT8opXo/m46d+lW4s40TNpt7+/9vpJsgzRartHVizV2hnaDXjWp
	 4Rw6UEvuL1xQOdlnyOdTMYsyjrxqmJiFFU3J16FMPSZiskx5WX6TgO3m39G9tNWO+c
	 RLe0+6d++ZuJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A93C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473417372.32350.766906701733951853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468371764f719aa494a7cec9efe93d06cb727375bd4357bb5a44687f48ce62b5
Date: Wed, 22 Jul 2026 15:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784734173
