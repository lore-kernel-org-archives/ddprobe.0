Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAED5F86C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707599897; cv=none; b=mz0jluqB+sK08KBwbj6zd0BeXGCRcFeqLjMs+qydB6RbXCZruIrVmz5GYIAXa9SgmelsD/5bKUeY+1dR7Nd1WmiAbhYCRRR7B7sNL7Ns6YrOXscA9QoNyZjTafin6DZWkFTzJ1pq8H+Eco2nN3kuf2Ea1CRtQgJ01CDNYvZUY00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707599897; c=relaxed/simple;
	bh=LZdbVRLDVaDuh034dV1ou9ZurH5uwdb5oxruiXzRkFE=;
	h=To:Subject:From:Message-Id:Date; b=MIPbt0PFf2CZtKlVoKnfUKisGq0gtZK0sBcyCrBRdGbusDFVLCI+qIpMzvbGsyjpvx0JnBSjf9tl+KOhSeQq+Rr20MF/82WlEfeEhKl/jCSvRQwduIL3t+RMy74U2pTUZktUArWGcvDEk8FNnGvlA0EpH0nZvhTZDJfukdjMcpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9O1qBI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9O1qBI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DCDC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707599896;
	bh=LZdbVRLDVaDuh034dV1ou9ZurH5uwdb5oxruiXzRkFE=;
	h=To:Subject:From:Date:From;
	b=r9O1qBI/bvmi9c11lE8Py1mNaUJUJle5G2seP4V2j//wST+A7tq39/LvVN6K2MsCI
	 JgWOfd6m/aew4SivMLXCEqcqGxMc2WRvbwNCNFP2Y3peIWG8btQY4nHUfbbuopuQ/M
	 3np8ZZtE/l+MWqJUBBZFYMGqMfbRhdNvxrZIUcVz/P8Oef4Y0x0S5SG112fXVdyCBN
	 SA457r8zOlvN9WkU88KvBhjzjgHen7qimpwB1MwDBSVcRSDACl/rmXoeYSm9GaIXjD
	 hlEjVHVb/41kwfyMK+cTJPArF21SO4dGOKa+i/asg8vqqXECwtbDjlYl295F7RNMao
	 UOn60XTzNuXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D254C4829C
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170759989637.22767.1786925423668392198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b8435c9cbc7c63b46ff3219da1a5ecb7d65b488cf1dac6d4d37f36760994d9
Date: Sat, 10 Feb 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707599896
