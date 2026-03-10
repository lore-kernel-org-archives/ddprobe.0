Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25D930BF77
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773108893; cv=none; b=osnzP0NE5gx0tMXDwYucI4s+Affb+snXpT6ChXQNDcIuHc+5DSBtpWWNwzGAvtH3+a/zYA+2Y7vE4yafz4beH8f6WWPhSzaXtSouy9LAuJLZHkuB8v2KH+6sdnDD177QZIoft3RYTmW1Sf3NVfDc0gr5jkLElDCyhFz3KWdubxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773108893; c=relaxed/simple;
	bh=6acxSL9unMY2JX29ODQYqVewZR6rvitITSMRuFHB3dA=;
	h=To:Subject:From:Message-Id:Date; b=JGhcsosJLWHslbkCs7gz/RLzl0NfZCaxqbgVDhJJDtQlgfMTrpokxKB1wB5kGPwIDziztv3RlzNFZaLALloiideogT371DTcUHCX9Klv7kbr/8yV1aRy/WUIc68Aw1p6nS0750aRhVrfu0tnUTm0kv1UFC4rpbc7xp5Dk82nKMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0JoVkLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0JoVkLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 984C3C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773108893;
	bh=6acxSL9unMY2JX29ODQYqVewZR6rvitITSMRuFHB3dA=;
	h=To:Subject:From:Date:From;
	b=K0JoVkLrpX81DWYLygwVykR9f0XgWNvby42miHfZCyzUuY3c6V79VqSi5kEDgjr7J
	 yznfIr1XNLYDAmCgoyaQKWiCsQuixCd5wmg2AeLZOsHSYH48MqyXJ+fNTrL66sYGMU
	 BUg6RyQU4GNrWcYmtTEz+oj7wYJjK73qaWxa+hjUWc9HPII2HtVpoOkGOAMuFr2pZY
	 IjqTQvRxbOlXBboN+qkdcenIOAaQ4Tb5tJr7AO9yJASOenJDHlHcas/7hB16S1dr0N
	 OTbmpoBiotIbB1NPY7Sdz7uDrpy49+CugLkbVm6x8xgLv8t34RITUX9BQdxHelN+wa
	 rSOTxJjPMjSKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D1FCC9AD
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310889357.23043.12409611595911487657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325be037896c7dd69d961880b064ea2455bef148811cdb9c8f875b3bbbd30455
Date: Tue, 10 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773108893
