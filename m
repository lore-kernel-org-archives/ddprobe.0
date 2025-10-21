Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AECD355057
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761063594; cv=none; b=Y5S5YUPKgaDwE3fjWcmxt0yWxGrikohFG97qurg+sOOJJl21BMH3A9e/Fv1SUjjXCXEZ0xcTzxCkGu83/s0f5OhcdflKvbn0vxCO/VNo5ourMXxX44uVc7J5oPpykkOlM9ByiBYCV92jLBddrVJ/UTHlo1rx8sQWZ8uZkEMtxyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761063594; c=relaxed/simple;
	bh=KjxXqns8NPOpR/mGdzIDHMuDB7o0Z/u65kv8xdGiZVA=;
	h=To:Subject:From:Message-Id:Date; b=OoD1jhLpJfV0WxrXZzwCcMwkUbhz/4gYrMmgXHUoF/U9AGOyMJox1p9TE/WDIK6uz19yN3X/qHiztPriUaKMT6nU08eTSSAxukM/55YIUxW+luhwAPw7Fen3mYB6MPPtzoQd54Fpt+Usz/8Fq5yW9T2Fi2jEms0QoqosCbMa8jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaKlPjdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaKlPjdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB002C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761063593;
	bh=KjxXqns8NPOpR/mGdzIDHMuDB7o0Z/u65kv8xdGiZVA=;
	h=To:Subject:From:Date:From;
	b=UaKlPjdvj2HTi50m2gD6vJ/EhF9NDuRfQvt3DvzA+RKJfQrJ1ueLsHwvCGyfBkokZ
	 NqNfgQgN2dkdibN2uUw6wh8TCfB+cHXD8gtS3LGQ1ZxuxpSg4HpKppCslD73T0TH7O
	 UOUFMbgVNPLmd7iwowyrBTm84q/NzMLePZPNRDn3o5jHZcI0Z8FN/jNe3DGo9ga/ep
	 EugClaNe1ivugeWEI4uNABEgXpEqjUEtCQ7yhJMlrMYPknxc68JQ4pm7KL2HMk9Ch/
	 eXlnZE3ot8q/6z4UGlfpD7hC07MZxQBvZTF0NWr4xTE8IbPxiJl4pwqBX5efT+Sal1
	 XyZdq/jHQV98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9911CCCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106359360.7690.8504848000208178320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f844c3e49b6f23020cb31e3e0e971c2a79421ed3b41010f4f2f9ca4808601e
Date: Tue, 21 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761063593
