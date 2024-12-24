Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF22AF1D
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735040754; cv=none; b=oZtqiPWQNgaWzwoKIi5NqZc9S3wBlerTxUETFz4YrH9mBLp9DE0+rnxyH82199ORljPt7o5Azw68G/SLHZzSMTf+HXpiiNOL+2H7pLJqQ8qYe5nZYY+8lpaUNxh3VsAAONq2Ies+lwoQeWzFhJfms5wH+2kt+BufRlefUIBVBSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735040754; c=relaxed/simple;
	bh=9a5ue+cOsS0QQFjw5m4LOmiFDYz4cbhuxngxljTrBuY=;
	h=To:Subject:From:Message-Id:Date; b=jwXZAqso/hOjnilhJoiNhp1ipEomWYz0la1l3R4m6bKQ4FMmDH2iZ6jmJ5+6LnSKwgLioZNo4dqgXSi4fFFEzDDG8qDZWGOCYiKLd5cT7dRt58ZAs+M99ze90kh0BiKUpoqwYnh/HjxEXyWi05hNkwgIBdrsMC3XphQB2wCtbJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSVKfKAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSVKfKAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A4EC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735040753;
	bh=9a5ue+cOsS0QQFjw5m4LOmiFDYz4cbhuxngxljTrBuY=;
	h=To:Subject:From:Date:From;
	b=sSVKfKAlS9hti+jjTd6M9NO1m685NJWnxxY6jx1II85jAy11z+gqNXmn7/+fUmYx+
	 Us5bZvym91yJPzq6jCjg3tJSy2Jhw4Fz4EcEB6QdwB4Egc/eAQJniQZzeiiBh8Q2qI
	 /hYsig0zreM5jrFzPJcrogONzOPa6c690PkLdBQbk1VV3Nr0AeV+sZed6txZcphLce
	 LuUtQBXRYdTK/7WyCNv8+VszgY6NrKMdKrWRx7ZUBMqzUNCdZuQgG5SnIyPfExmg0s
	 Yuy1kZ/5FhGw4h8cltBjNMcFstJ6JijQg+VO7aZ99GH3nahQvhgb3WiImNwNT3k4Zv
	 5pFw+DXXEVabg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93642E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173504075359.1272.13152469170687098661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d00cd8b769c0149dd24c764c550835a331010b1dbb1a1d54f0b6d99072c93c
Date: Tue, 24 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735040753
