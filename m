Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5144733062
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737967554; cv=none; b=MLlQGBoK33sj/dT3UYvaOd0xLgN+2P0qX1INCKpZURcwlgcfZ1rOAvG71ih8qQ2cnVj1H29EnGhT+NsXywJIksk/gasf27D3WEU0ioAoxPyGQnNkR8bFEtPOjmP6CexJ3e3mRUSEP6Nb1NAM9O0mVsBBgiuyc9l3FmoRa8Rym48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737967554; c=relaxed/simple;
	bh=xurXwFZlrRzzWCVko+rxrHoRP88FjlY8HkFEjgAVXzY=;
	h=To:Subject:From:Message-Id:Date; b=S6DTYZto9Q4aXycc8I7KU+dFh8pz5XDRoMcb4SViJdJvzx7Fr2qT5tXvWR0Xfe27JnI+X+YMBQWNUacszTPc5g5PNuFtP28hBq70Q8aCQIVt64aArGqp5cfGEbLPauINVAttMS6u1Yvdp5wnvL3jgSKQFXm5m/fHX83MYN2GAs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6Mu6m6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6Mu6m6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8831C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737967553;
	bh=xurXwFZlrRzzWCVko+rxrHoRP88FjlY8HkFEjgAVXzY=;
	h=To:Subject:From:Date:From;
	b=u6Mu6m6+5FYjpZO/J8oZDRA9pXILaMQQbBuvIGIPGnEDtAslKhpjbKtRUOiKvX+92
	 Q5oFo9TGpMJg0uNVKMKtuKbYLjOcp7djTcodSCt1e8zmu18EdM4/avPS52lsBafrvf
	 r4S59Y9L2nRwjs7bRy7rcPiV42RJk90VEraGo2bLg/Vv3r/9z8URrVJwDSfgDTkDCr
	 O74vS9vXfxdXa1LDXAI7OPGwxxdcDww7JDoLRU4Jc+jA97y8Otxuq2fCwQ+GbtHzN/
	 wutT8OZaaRY6pXZzB9bDpTuUtCKgbI0Co1m1Geo9wTzlk5fpHR0GnAtd2Oo4uu2fde
	 tnKNoTqStonVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD21C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796755362.4345.17690976041243412686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634d7ca5c49784c49424ecd5f873ffc603f8ec94d0d1e7eb823062d78d234e9e
Date: Mon, 27 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737967553
