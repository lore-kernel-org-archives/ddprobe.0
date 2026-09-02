Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FC13B14B5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788333034; cv=none; b=JkQJwZ3MPkX2cTmeyFzosIirdZDlRsBLnT+vy9JkBFnYfTD5jgbgPDMSh4M3IRJT1W05FK/VZTRYZY7guUvdBect05mcrkgUeMolHcnBeSFsVY2S2LIgaPcfcUx0vV5MMY2RzIgwX9ISy7nMwbs/IlaQv1C9tnwDDIsrQ+updB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788333034; c=relaxed/simple;
	bh=7dFdA1oeHjGBuAm3w+u3D6SbBtQNsnt3DN6tui66om4=;
	h=To:Subject:From:Message-Id:Date; b=Ja4ghiSKHjjVbrpUmThntKJlr+gdawwEbfCJOhh9oV0q2lkdFbfltlDIl+fbue5uEBOpiOFzCYHqymn0dIHwaPCVIQXZramYrxiutHHO0ibCwg20J5Mp5jhgxXZmel1eJlijUcfnDB5J3Zi2PczwUUtrjrpdP4mCX+1Tm/2I0os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIPSnujW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIPSnujW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE35DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788333033;
	bh=7dFdA1oeHjGBuAm3w+u3D6SbBtQNsnt3DN6tui66om4=;
	h=To:Subject:From:Date:From;
	b=fIPSnujWAFSlL1VhsIlmTNjeXus8VHk+Am1q2CNNhjN0D7Rs7TquI5w5wQj6dAa3U
	 o21oTVmxPFfaaHmZ2/BnKEJ59ZZ2BVWHDSutA+VXjlSb+kETvks5Tz5aU03PKOgTi+
	 p/8HC+Y4SsgivkEXZhjE3SjjLd0R4LPSFDLMz/swatY8y9+DIgJzX/vWb5hcaAg+AB
	 CUSeFEFrnSpwgoBYvI649YDGvTuGDiW2hxNYIsWjUOaddLegl6w3e7QQf2m1IsXXJa
	 H3I28PUq7ocaQjUpzEnPNMsOw+8l8AIXuZxKkdMct2+mqype3CzRJv8YJQYfZcAa3I
	 vf0xDE0Mg51Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA68CC61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833303368.17305.4888609538657933519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3aa68431f2717a394caed8d39e477bed8a804907518ac253b91c2b31c2dc53b
Date: Wed, 02 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788333033
