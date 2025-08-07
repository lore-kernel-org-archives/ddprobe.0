Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5DE25A2CD
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754572194; cv=none; b=KxSP9rnR1bGUxduGwbDT0puYcfnCzecQlebD7iJrb5y5CzFx8qW/LCfwlQ+AUyx+4s89ieV7lbY0kVSUnE7Vrd6uG3PtbEjb+2PNTZEJ1v1BzAUJd3oTZ1dxceHYXan9A2QkMfO2AVJup+wZv+jQe9gNZWEoIB8YM38u8kicry4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754572194; c=relaxed/simple;
	bh=iW5WqMVBGvNMgOdnH/dZ/GIXkTW4XeYEzIQpqsARsw0=;
	h=To:Subject:From:Message-Id:Date; b=PbayMq/CNL5QtVaFWZXDS1qbUmjoLq/bNDxaz05suIDkf5Fi3TSwbJ73j9LVj73Lac/qhdeDxTuTbG7cQJ4ZNeZ3srrungtRKzLURkeXT6nfF6Pd4mXClld1zf5Md+1O1Di5+8uBiG+laeZmEtY41/bk2hgARuVHgIQMMW1MgEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M94oDHjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M94oDHjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754572193;
	bh=iW5WqMVBGvNMgOdnH/dZ/GIXkTW4XeYEzIQpqsARsw0=;
	h=To:Subject:From:Date:From;
	b=M94oDHjXfwE3Mgt7FUlH99o1LHnH8KD7o3yL3iSD48yqrUqq2hXwxO+J0wXtbXbnD
	 AHNuYbzw6As++Qnt1MrCrBrNefWklKQoCiVvK730i+cJ3N6FE5CrUUc62IbNtZxg01
	 G0CogeYUQxsetNJMr33JdMVKXTABpj9O5LOh0IdBa1amVNrns25oygTg8uwS2mwsKy
	 piJVllEHWtijgT+zEwlqBGSXjDJwM4lltyYqGkAYD+OZdJEoBfhuwtfH/TOW12pcra
	 DC2esWiY0xPYsIScu301l1vNSKJBrHBW8Pq11XCoHzInkn51g+7ErPky+kNkJ7KKT6
	 WlnAwgyBu0sZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9394FC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457219358.26097.3356718343308138498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a8b764e8e800d3b150a8131072d58da4553e2afa4e6a0e43ef32f7f45991e9
Date: Thu, 07 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754572193
