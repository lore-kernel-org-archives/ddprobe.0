Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D205E304BD7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763623313; cv=none; b=Nxyq2Uhan+/OBPIHKyMfrv6BF92jWOloysG1dgPxJEWSUbxqIec4dGhxtnwdW2s/6dC/MgO8sol92b5MWN1rhQgidi5//FossGYC0JSOvD2REQ0NXrXzFPn9e1XsfsMEwaedepeDz2ulnNOsngwkAZWeaHhrDKa61Tp7APpvK+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763623313; c=relaxed/simple;
	bh=WwiUVr5L6S1iCP7X+X5vjO6Zp0a3Ry+C6Qo6EpRET3M=;
	h=To:Subject:From:Message-Id:Date; b=oC/X1jElH/ZE4VHi8oKQZ3cU/QU4NrrMWOsfvsC2jmIDcAR/sNBw1fCFa2yKkZHpkGfI9/LcKKLkniBRIi8A+51rAMdY1APBiwT9SOuFbN6uWQmvOU6Gf9okYfMXvwQDpnaaOrBdc0zVn35rEofU9DzmpqnYrpLeqclLEns6UGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0hB6kXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0hB6kXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE9C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763623313;
	bh=WwiUVr5L6S1iCP7X+X5vjO6Zp0a3Ry+C6Qo6EpRET3M=;
	h=To:Subject:From:Date:From;
	b=I0hB6kXZoAIFJmdlVzLvaSTM/pgTkWO54rpmEnfzKLEyrXbMj3Hw9uFlsoBbGoIZ4
	 jYuYacse74iGOHOoE6KQKffcQfr6+bU8e0bHObo3w0BEBBD6ZP9GSGeb0o7Gje13qx
	 BgyGaiLkfTziKJrCTxAUeVlCfhamwBzLzLbBYEzc1MaPHfHQ/zU3ss5UH2JnpC9NrK
	 aOiMU9Y87LQmGH55/dKgvmjP8iUKzrly9dM/sr+2k3GLA9tDdGxecSFk/QmPjvj25b
	 /SW742weMm0xkr4GZnX4lEPzd+aY5JbE8rSbXv7A0pNoSZl4/TS6EjwWJfi8xw+W6w
	 HG+TnRafTBqrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92546CF8548
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 07:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362331358.29671.17480363496830505695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10360fd83e939a3e4a33f2a5377f7cc50aa3d9c063c2d5492a5f9ceeec1ebaa2
Date: Thu, 20 Nov 2025 07:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763623313
